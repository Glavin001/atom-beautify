import {newUnibeautify, Unibeautify, Language, LanguageOptionValues, BeautifyData} from "unibeautify";
import * as Atom from "atom";
import { beautifiers } from "./beautifiers";
import { CompositeDisposable } from "atom";
import Config from "./config";
import * as path from "path";
import * as _ from "lodash";
import { cosmiconfig } from "cosmiconfig";

export class AtomBeautify {
  private unibeautify: Unibeautify;
  private subscriptions: CompositeDisposable;

  public activate(): void {
    this.unibeautify = newUnibeautify();
    this.unibeautify.loadBeautifiers(beautifiers);
    this.subscriptions = new CompositeDisposable();
    this.subscriptions.add(this.handleSaveEvent());
    this.subscriptions.add(atom.commands.add("atom-workspace", "atom-beautify:beautify-editor", this.beautifyEditor.bind(this)));
    this.subscriptions.add(atom.commands.add("atom-workspace", "atom-beautify:help-debug-editor", this.debug.bind(this)));
    this.subscriptions.add(atom.commands.add("atom-workspace", "atom-beautify:open-settings", this.openSettings.bind(this)));
    this.subscriptions.add(atom.commands.add(".tree-view .file .name", "atom-beautify:beautify-file", this.beautifyFile.bind(this)));
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
      const onWillSaveHandler = ({path: filePath}: { path: string }) => {
        this.beautifyOnSaveHandler({ filePath: filePath }, editor);
      };
      return this.subscriptions.add(editor.getBuffer().onWillSave(onWillSaveHandler as any));
    });
  }

  private async beautifyOnSaveHandler({ filePath }: { filePath: string }, editor: Atom.TextEditor) {
    const languageInfo = this.languageInEditor(editor, filePath);
    if (!languageInfo.language) {
      this.showError(`${languageInfo.language} is not supported`);
    }
    const config = this.configFromSettings(languageInfo.language);
    const beautifyOnSave = Boolean(config && config.beautify_on_save);
    if (!beautifyOnSave) {
      return;
    }

    if (editor.getPath() === undefined) {
      editor.getBuffer().setPath(filePath);
    }
    let text: string = null;
    if (!this.configFromSettings().general.beautifyEntireFileOnSave &&  !!editor.getSelectedText()) {
      text = editor.getSelectedText();
    } else {
      text = editor.getText();
    }

    const beautifySettings = await this.unibeautifyConfiguration(filePath, languageInfo.language);
    const beautifyData: BeautifyData = {
      languageName: languageInfo.language.name,
      fileExtension: languageInfo.fileExtension,
      filePath: filePath,
      options: beautifySettings,
      text
    };
    return this.beautify(editor, beautifyData);
  }

  private async beautifyEditor() {
    const editor: Atom.TextEditor = atom.workspace.getActiveTextEditor();
    const languageInfo = this.languageInEditor(editor);
    let text: string = null;
    if (!!editor.getSelectedText()) {
      text = editor.getSelectedText();
    } else {
      text = editor.getText();
    }
    const beautifySettings = await this.unibeautifyConfiguration(editor.getPath(), languageInfo.language);
    const beautifyData: BeautifyData = {
      languageName: languageInfo.language.name,
      fileExtension: languageInfo.fileExtension,
      filePath: editor.getPath(),
      options: beautifySettings,
      text
    };
    return this.beautify(editor, beautifyData);
  }

  private async beautify(editor: Atom.TextEditor, data: BeautifyData) {
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

  private showError(error: any, show: boolean = false): Atom.Notification {
    if (typeof error === "string") {
      error = new Error(error);
    }

    if (!show || this.configFromSettings().general.muteAllErrors) {
      return;
    }

    const stack: any = error.stack;
    const detail: string = error.description || error.message;
    return atom.notifications.addError(error.message, {
      stack: stack,
      detail: detail,
      dismissable: true
    });
  }

  private async unibeautifyConfiguration(filePath: string, language: Language): Promise<LanguageOptionValues> {
    const configExplorer = cosmiconfig("unibeautify");
    const fileConfig = await configExplorer
      .search(filePath)
      .then(result => (result ? result.config : undefined));
    if (fileConfig) {
      return fileConfig;
    } else {
      const atomConfig = this.configFromSettings(language);
      return _.unset(atomConfig, "general") ? atomConfig : {};
    }
  }

  public languageInEditor(editor: Atom.TextEditor, filePath?: string) {
    const grammarName = editor.getGrammar().name;
    let fileExtension;
    if (!filePath) {
      filePath = editor.getPath();
    } else {
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
