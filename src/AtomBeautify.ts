import {newUnibeautify, Unibeautify, Beautifier, Language, LanguageOptionValues, BeautifyData} from "unibeautify";
import * as Atom from "atom";
import beautifiers from "./beautifiers";
import { CompositeDisposable, Disposable } from "atom";
import Config from "./config";
import * as path from "path";
import * as _ from "lodash";
import * as cosmiconfig from "cosmiconfig";
import { logger } from "./logger";

export class AtomBeautify {
    private unibeautify: Unibeautify;
    private subscriptions: CompositeDisposable;

    public activate(state: any): void {
        logger.info("activated!");
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

    public deactivate(): void {
        return this.subscriptions.dispose();
    }

    public get config() {
        return _.merge(Config, require("./options.json"));
    }

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

    private async beautifyOnSaveHandler({ filePath }: { filePath: string }, editor: Atom.TextEditor) {
      const languageInfo = this.languageInEditor(editor, filePath);
      if (!languageInfo.language) {
        return this.showError(new Error("Language could not be found or is not supported"));
      }
      const config = this.configFromSettings(languageInfo.language);
      const beautifyOnSave = Boolean(config && config.beautify_on_save);
      if (beautifyOnSave) {
        if (editor.getPath() === undefined) {
          editor.getBuffer().setPath(filePath);
        }
        let text: string;
        if (!this.configFromSettings().general.beautifyEntireFileOnSave && !!editor.getSelectedText()) {
          text = editor.getSelectedText();
        } else {
          text = editor.getText();
        }
        logger.info("Beautify file on save", {filePath, text, languageInfo});
        const beautifySettings = await this.unibeautifyConfiguration(filePath);
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

    private async beautifyEditor() {
      const editor = atom.workspace.getActiveTextEditor();
      if (editor === undefined) {
        return this.showError(new Error("No active editor was found"));
      }
      const languageInfo = this.languageInEditor(editor);
      if (!languageInfo.language) {
        return this.showError(new Error("Language could not be found or is not supported"));
      }
      let text: string;
      if (!!editor.getSelectedText()) {
        text = editor.getSelectedText();
      } else {
        text = editor.getText();
      }
      const beautifySettings = await this.unibeautifyConfiguration(editor.getPath() || "");
      const [projectPath] = atom.project.relativizePath(editor.getPath() || "");
      const beautifyData: BeautifyData = {
        languageName: languageInfo.language.name,
        fileExtension: languageInfo.fileExtension,
        filePath: editor.getPath() || undefined,
        projectPath: projectPath || undefined,
        options: beautifySettings,
        text
      };
      return this.beautify(editor, beautifyData);
    }

    private beautify(editor: Atom.TextEditor, data: BeautifyData) {
      return this.unibeautify.beautify(data).then((result) => {
        editor.setText(result);
      }).catch(error => {
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

    private configFromSettings(language?: Language) {
      const config = atom.config.get("atom-beautify");
      return language ? _.get(config, language.name) : config;
    }

    private openSettings() {
      atom.workspace.open("atom://config/packages/atom-beautify");
    }

    // ===== Helpers =====
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

    private showError(error: Error): Atom.Notification | undefined {
      if (!this.configFromSettings().general.muteAllErrors) {
        const stack = error.stack;
        const detail = `${error.name}: ${error.message}`;
        return atom.notifications.addError(error.message, {
          stack: stack,
          detail: detail,
          dismissable: true
        });
      }
    }

    private async unibeautifyConfiguration(filePath: string): Promise<LanguageOptionValues> {
      try {
        const explorerOptions: Cosmiconfig.Options = {
          rcExtensions: true,
        };
        const configExplorer = cosmiconfig("unibeautify", explorerOptions);
        const fileConfig = await configExplorer
              .load(filePath)
              .then(result => (result ? result.config : undefined));
        if (fileConfig) {
          return fileConfig;
        } else {
          const atomConfig = this.configFromSettings();
          return _.unset(atomConfig, "general") ? atomConfig : {};
        }
      } catch (error) {
        this.showError(error);
        return Promise.reject(error);
      }
    }

    public languageInEditor(editor: Atom.TextEditor, filePath?: string) {
      const grammarName = editor.getGrammar().name;
      let fileExtension;
      if (!filePath) {
        filePath = editor.getPath();
      }
      if (filePath) {
        fileExtension = path.extname(filePath).substr(1);
      }
      const langs: Language[] = this.unibeautify.findLanguages({
        atomGrammar: grammarName,
        extension: fileExtension
      });
      const language = langs.length > 0 ? langs[0] : null;
      return {language, grammarName, fileExtension};
    }

}