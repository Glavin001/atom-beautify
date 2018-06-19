import {
  newUnibeautify,
  Unibeautify,
  Language,
  LanguageOptionValues,
  BeautifyData,
} from "unibeautify";
import beautifiers from "./beautifiers";
import {
  TextEditor,
  Cursor,
  Point,
  Range,
  Notification,
  CompositeDisposable,
} from "atom";
import Config from "./config";
import * as path from "path";
import _ from "lodash";
import cosmiconfig from "cosmiconfig";
import { Logger } from "./logger";
const logger = Logger(__filename);

export class AtomBeautify {
  private unibeautify: Unibeautify;
  private subscriptions: CompositeDisposable;

  // Activates the Atom Beautify package
  public activate(): void {
    logger.info("Atom Beautify activated with beautifiers", { beautifiers });
    this.unibeautify = newUnibeautify();
    this.unibeautify.loadBeautifiers(beautifiers);
    this.subscriptions = new CompositeDisposable();
    this.subscriptions.add(
      this.handleSaveEvent(),
      atom.commands.add(
        "atom-workspace",
        "atom-beautify:beautify-editor",
        this.beautifyEditor.bind(this)
      ),
      atom.commands.add(
        "atom-workspace",
        "atom-beautify:help-debug-editor",
        this.debug.bind(this)
      ),
      atom.commands.add(
        "atom-workspace",
        "atom-beautify:open-settings",
        this.openSettings.bind(this)
      ),
      atom.commands.add(
        ".tree-view .file .name",
        "atom-beautify:beautify-file",
        this.beautifyFile.bind(this)
      ),
      atom.commands.add(
        ".tree-view .directory .name",
        "atom-beautify:beautify-directory",
        this.beautifyDirectory.bind(this)
      ),
      atom.config.onDidChange(
        "atom-beautify.general.loggerLevel",
        (values: {oldValue: string; newValue: string}) => {
          logger.level = values.newValue;
          logger.info(`Logger level changed from ${values.oldValue} to ${values.newValue}`);
        },
      ),
    );
  }

  // Deactivates the Atom Beautify package
  public deactivate(): void {
    return this.subscriptions.dispose();
  }

  // Retrieve the configuration options for Atom Beautify to display in Atom Settings
  public get config() {
    return Object.assign(Config, require("./options.json"));
  }

  // Register the handleSaveEvent to add as a subscription
  private handleSaveEvent() {
    return atom.workspace.observeTextEditors((editor: TextEditor) => {
      const onWillSaveHandler = ({ path: filePath }: { path: string }) =>
        this.beautifyOnSaveHandler(
          {
            filePath: filePath,
          },
          editor
        );
      return this.subscriptions.add(
        editor.getBuffer().onWillSave(onWillSaveHandler as any)
      );
    });
  }

  // Method that handles beautify on save
  private beautifyOnSaveHandler(
    { filePath }: { filePath: string },
    editor: TextEditor
  ) {
    const {
      languageName,
      atomGrammar,
      fileExtension,
    } = this.languagesForEditor(editor, filePath);
    if (!languageName) {
      return this.showError(
        new Error("Language could not be found or is not supported")
      );
    }
    if (this.isBeautifyOnSave(languageName)) {
      const text = this.textInEditor(editor);
      const [projectPath] = atom.project.relativizePath(filePath);
      logger.info("Beautify file on save", { filePath, text, languageName });
      return this.beautifyOptions(filePath).then(beautifyOptions => {
        const beautifyData: BeautifyData = {
          languageName,
          fileExtension,
          atomGrammar,
          filePath,
          projectPath: projectPath || undefined,
          options: beautifyOptions,
          text,
        };
        return this.beautify(beautifyData).then(result => {
          editor.setText(result);
        });
      });
    }
  }

  // Method that handles beautify entire file/editor
  private beautifyEditor() {
    const editor = atom.workspace.getActiveTextEditor();
    if (editor === undefined) {
      logger.error("No active editor was found");
      return this.showError(new Error("No active editor was found"));
    }
    const {
      languageName,
      atomGrammar,
      fileExtension,
    } = this.languagesForEditor(editor);
    if (!languageName) {
      logger.error(`Language info not found for ${languageName}`);
      return this.showError(
        new Error("Language could not be found or is not supported")
      );
    }
    const text = this.textInEditor(editor);
    const [projectPath] = atom.project.relativizePath(editor.getPath() || "");
    return this.beautifyOptions(editor.getPath() || "").then(
      beautifyOptions => {
        const beautifyData: BeautifyData = {
          languageName,
          fileExtension,
          atomGrammar,
          filePath: editor.getPath() || undefined,
          projectPath: projectPath || undefined,
          options: beautifyOptions,
          text,
        };
        return this.beautify(beautifyData).then(result => {
          editor.setText(result);
        });
      }
    );
  }

  private textInEditor(editor: TextEditor) {
    if (!!editor.getSelectedText()) {
      return editor.getSelectedText();
    } else {
      return editor.getText();
    }
  }

  // Calls Unibeautify's beautify method
  private beautify(data: BeautifyData): Promise<string> {
    logger.info("Beautifying with", { data });
    return this.unibeautify.beautify(data).catch(error => {
      logger.error(error);
      this.showError(error);
      return Promise.reject(error);
    });
  }

  // On save format service provider
  public provideOnSaveCodeFormat() {
    return {
      // tslint:disable-next-line:no-empty
      formatOnSave: (editor: TextEditor) => {},
      priority: 1,
      grammarScopes: [],
    };
  }

  // Manual trigger format service provider
  public provideFileCodeFormat() {
    return {
      // tslint:disable-next-line:no-empty
      formatEntireFile: (editor: TextEditor, range: Range) => {},
      priority: 1,
      grammarScopes: [],
    };
  }

  // Range format service provider
  public provideRangeCodeFormat() {
    return {
      // tslint:disable-next-line:no-empty
      formatCode: (editor: TextEditor, range: Range) => {},
      priority: 1,
      grammarScopes: [],
    };
  }

  private beautifyFile({ target }: { target: any }) {
    logger.info(target.dataset.path);
    const filePath = target.dataset.path;
    return this.showError(new Error("Could not beautify file"));
  }

  private beautifyDirectory() {
    // TODO
  }

  private debug() {
    // TODO
  }

  // Check if a language is configured to beautify on save
  private isBeautifyOnSave(language: string): Boolean {
    const languageConfig = this.baseConfig.languages;
    if (languageConfig.hasOwnProperty(language)) {
      return Boolean(_.get(languageConfig, language).beautify_on_save);
    }
    return false;
  }

  // Open Settings from the top menu
  private openSettings() {
    atom.workspace.open("atom://config/packages/atom-beautify");
  }

  // Show error in the Atom notification area
  private showError(error: Error): Notification | undefined {
    if (!this.baseConfig.general.muteAllErrors) {
      const stack = error.stack;
      const detail = `${error.name}: ${error.message}`;
      return atom.notifications.addError(error.message, {
        stack: stack,
        detail: detail,
        dismissable: true,
      });
    }
  }

  // Retrieve the settings from Unibeautify config, or from Atom Settings if can't be found
  private beautifyOptions(filePath: string): Promise<LanguageOptionValues> {
    const configExplorer = cosmiconfig("unibeautify", {});
    return configExplorer
      .search(filePath)
      .then(result => (result ? result.config : this.atomSettings))
      .catch(error => {
        this.showError(error);
        Promise.reject(error);
      });
  }

  // Retrieve config for Atom Beautify from Atom settings
  private get atomSettings() {
    const languageConfig = this.baseConfig.languages;
    const beautifierConfig = this.baseConfig.beautifiers;
    Object.keys(languageConfig).forEach(language => {
      const beautifiers = languageConfig[language].beautifiers;
      beautifiers.forEach((beautifier: any) => {
        languageConfig[language][beautifier] = {
          prefer_beautifier_config:
            beautifierConfig[beautifier].prefer_beautifier_config,
          [beautifier]: {
            path: beautifierConfig[beautifier].executable_path,
          },
        };
      });
    });
    return languageConfig;
  }

  // Get language information from the editor
  private languagesForEditor(editor: TextEditor, filePath?: string) {
    const atomGrammar = editor.getGrammar().name;
    if (!filePath) {
      filePath = editor.getPath();
    }
    const fileExtension = filePath
      ? path.extname(filePath).slice(1)
      : undefined;
    const languages: Language[] = this.unibeautify.findLanguages({
      atomGrammar,
      extension: fileExtension,
    });
    let languageName;
    if (languages.length > 0) {
      languageName = languages[0].name;
    }
    return { languageName, atomGrammar, fileExtension };
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

  private getCursors(editor: TextEditor) {
    const cursors: Cursor[] = editor.getCursors();
    return cursors.map(cursor => {
      const bufferPosition: Point = cursor.getBufferPosition();
      return [bufferPosition.row, bufferPosition.column];
    });
  }

  private setCursors(editor: any, posArray: any[]) {
    // tslint:disable-next-line
    for (let i = 0, j = 0, len = posArray.length; j < len; i = ++j) {
    // tslint:disable-next-line:id-length
      const bufferPosition = posArray[i];
      // tslint:disable-next-line:id-length
      if (i === 0) {
        editor.setCursorBufferPosition(bufferPosition);
        continue;
      }
      editor.addCursorAtBufferPosition(bufferPosition);
    }
  }
}
