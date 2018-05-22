import {newUnibeautify, Unibeautify, Beautifier, Language, LanguageOptionValues, BeautifyData} from "unibeautify";
import * as Atom from "atom";
import beautifiers from "./beautifiers";
import { CompositeDisposable, Disposable } from "atom";
import Config from "./config";
import * as path from "path";
import _ from "lodash";
import cosmiconfig, { ExplorerOptions } from "cosmiconfig";
import { Logger } from "./logger";
const logger = Logger(__filename);

export class AtomBeautify {
    private unibeautify: Unibeautify;
    private subscriptions: CompositeDisposable;

    // Activates the Atom Beautify package
    public activate(state: any): void {
        logger.info("Atom Beautify activated with beautifiers", {beautifiers});
        this.unibeautify = newUnibeautify();
        this.unibeautify.loadBeautifiers(beautifiers);
        this.subscriptions = new CompositeDisposable();
        this.subscriptions.add(this.handleSaveEvent());
        this.subscriptions.add(atom.commands.add("atom-workspace", "atom-beautify:beautify-editor", this.beautifyEditor.bind(this)));
        this.subscriptions.add(atom.commands.add("atom-workspace", "atom-beautify:help-debug-editor", this.debug.bind(this)));
        this.subscriptions.add(atom.commands.add("atom-workspace", "atom-beautify:open-settings", this.openSettings.bind(this)));
        this.subscriptions.add(atom.commands.add(".tree-view .file .name", "atom-beautify:beautify-file", this.beautifyFile.bind(this)));
        // tslint:disable-next-line:max-line-length
        this.subscriptions.add(atom.commands.add(".tree-view .directory .name", "atom-beautify:beautify-directory", this.beautifyDirectory.bind(this)));
    }

    // Deactivates the Atom Beautify package
    public deactivate(): void {
        return this.subscriptions.dispose();
    }

    // Retrieve the configuration options for Atom Beautify to display in Atom Settings
    public get config() {
        return _.merge(Config, require("./options.json"));
    }

    // Register the handleSaveEvent to add as a subscription
    private handleSaveEvent() {
      return atom.workspace.observeTextEditors((editor: Atom.TextEditor) => {
        const onWillSaveHandler = ({path: filePath}: {
          path: string
        }) => this.beautifyOnSaveHandler({
          filePath: filePath
        }, editor);
        return this.subscriptions.add(editor.getBuffer().onWillSave(onWillSaveHandler as any));
      });
    }

    // Method that handles beautify on save
    private async beautifyOnSaveHandler({ filePath }: { filePath: string }, editor: Atom.TextEditor) {
      const languageInfo = this.languagesForEditor(editor, filePath);
      if (!languageInfo.language) {
        return this.showError(new Error("Language could not be found or is not supported"));
      }
      if (this.isBeautifyOnSave(languageInfo.language)) {
        if (editor.getPath() === undefined) {
          editor.getBuffer().setPath(filePath);
        }
        let text: string;
        if (!this.baseConfig.general.beautifyEntireFileOnSave && !!editor.getSelectedText()) {
          text = editor.getSelectedText();
        } else {
          text = editor.getText();
        }
        logger.info("Beautify file on save", {filePath, text, languageInfo});
        const beautifySettings = await this.beautifyOptions(filePath);
        const [projectPath] = atom.project.relativizePath(editor.getPath() || filePath);
        const beautifyData: BeautifyData = {
          languageName: languageInfo.language.name,
          fileExtension: languageInfo.fileExtension,
          filePath: filePath,
          projectPath: projectPath || undefined,
          options: beautifySettings,
          text
        };
        return this.beautify(editor, beautifyData);
      }
    }

    // Method that handles beautify entire file/editor
    private async beautifyEditor() {
      const editor = atom.workspace.getActiveTextEditor();
      if (editor === undefined) {
        return this.showError(new Error("No active editor was found"));
      }
      const languageInfo = this.languagesForEditor(editor);
      if (!languageInfo.language) {
        logger.error(`Language info not found for ${languageInfo}`);
        return this.showError(new Error("Language could not be found or is not supported"));
      }
      let text: string;
      if (!!editor.getSelectedText()) {
        text = editor.getSelectedText();
      } else {
        text = editor.getText();
      }
      const beautifyOptions = await this.beautifyOptions(editor.getPath() || "");
      const [projectPath] = atom.project.relativizePath(editor.getPath() || "");
      const beautifyData: BeautifyData = {
        languageName: languageInfo.language.name,
        fileExtension: languageInfo.fileExtension,
        filePath: editor.getPath() || undefined,
        projectPath: projectPath || undefined,
        options: beautifyOptions,
        text
      };
      return this.beautify(editor, beautifyData);
    }

    // On save format service provider
    public provideOnSaveCodeFormat() {
      return {
        formatOnSave: {},
        priority: 1,
        grammarScopes: []
      };
    }

    // Manual trigger format service provider
    public provideFileCodeFormat() {
      return {
        formatEntireFile: {},
        priority: 1,
        grammarScopes: []
      };
    }

    // Range format service provider
    public provideRangeCodeFormat() {
      return {
        formatCode: {},
        priority: 1,
        grammarScopes: []
      };
    }

    // Calls Unibeautify's beautify method
    private beautify(editor: Atom.TextEditor, data: BeautifyData) {
      return this.unibeautify.beautify(data).then((result) => {
        editor.setText(result);
      }).catch(error => {
        logger.error(error);
        this.showError(error);
      });
    }

    private beautifyFile() {
      // TODO
    }

    private beautifyDirectory() {
      // TODO
    }

    private debug() {
      // TODO
    }

    // Check if a language is configured to beautify on save
    private isBeautifyOnSave(language: Language): Boolean {
      const languageConfig = this.baseConfig.languages;
      return Boolean(_.get(languageConfig, language.name).beautify_on_save);
    }

    // Open Settings from the top menu
    private openSettings() {
      atom.workspace.open("atom://config/packages/atom-beautify");
    }

    // Show error in the Atom notification area
    private showError(error: Error): Atom.Notification | undefined {
      if (!this.baseConfig.general.muteAllErrors) {
        const stack = error.stack;
        const detail = `${error.name}: ${error.message}`;
        return atom.notifications.addError(error.message, {
          stack: stack,
          detail: detail,
          dismissable: true
        });
      }
    }

    // Retrieve the settings from Unibeautify config, or from Atom Settings if can't be found
    private beautifyOptions(filePath: string): Promise<LanguageOptionValues> {
      try {
        const configExplorer = cosmiconfig("unibeautify", {});
        return configExplorer
              .search(filePath)
              .then(result => (result ? result.config : this.atomSettings));
      } catch (error) {
        this.showError(error);
        return Promise.reject(error);
      }
    }

    // Retrieve config for Atom Beautify from Atom settings
    private get atomSettings() {
      const languageConfig = this.baseConfig.languages;
      const beautifierConfig = this.baseConfig.beautifiers;
      Object.keys(languageConfig).forEach(language => {
        const beautifiers = languageConfig[language].beautifiers;
        beautifiers.forEach((beautifier: any) => {
          // tslint:disable
          languageConfig[language][beautifier] = {
            prefer_beautifier_config: beautifierConfig[beautifier].prefer_beautifier_config,
            [beautifier]: {
              path: beautifierConfig[beautifier].executable_path
            }
          }
        });
      });
      logger.info("Language/Beautifier Info", {languageConfig});
      return languageConfig;
    }

    // Get language information from the editor
    public languagesForEditor(editor: Atom.TextEditor, filePath?: string) {
      const grammarName = editor.getGrammar().name;
      if (!filePath) {
        filePath = editor.getPath();
      }
      const fileExtension = filePath ? path.extname(filePath).slice(1) : undefined;
      const langs: Language[] = this.unibeautify.findLanguages({
        atomGrammar: grammarName,
        extension: fileExtension
      });
      const language = langs.length > 0 ? langs[0] : null;
      return {language, grammarName, fileExtension};
    }

    // ===== Helpers =====
    private get baseConfig() {
      return atom.config.get("atom-beautify");
    }

    private getScrollTop(editor: any): any {
      const view = atom.views.getView(editor);
      return view && view.getScrollTop();
    }

    private setScrollTop(editor: any, value: any): void {
      const view = atom.views.getView(editor);
      view.setScrollTop(value);
    }

    private getCursors(editor: Atom.TextEditor) {
      const cursors: Atom.Cursor[] = editor.getCursors();
      return cursors.map(cursor => {
        const bufferPosition: Atom.Point = cursor.getBufferPosition();
        return [bufferPosition.row, bufferPosition.column];
      });
    }

    // private setCursors(editor: any, posArray: any[]) {
    //   for (let i = 0, j = 0, len = posArray.length; j < len; i = ++j) {
    //     const bufferPosition = posArray[i];
    //     if (i === 0) {
    //       editor.setCursorBufferPosition(bufferPosition);
    //       continue;
    //     }
    //     editor.addCursorAtBufferPosition(bufferPosition);
    //   }
    // }
}
