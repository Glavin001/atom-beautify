import {newUnibeautify, Unibeautify, Beautifier, Language} from "unibeautify";
import * as Atom from "atom";
import beautifiers from "./beautifiers";
import { CompositeDisposable, Disposable } from "atom";
import Config from "./config";
import * as path from "path";
import * as _ from "lodash";
const pkg = require("../package");
const cosmiconfig = require("cosmiconfig");

export class AtomBeautify {
    private unibeautify: Unibeautify;
    private subscriptions: CompositeDisposable;

    public activate(state: any): void {
        console.log("activated!!");
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
        const onWillSaveHandler = ({path: filePath}: {
          path: string
        }) => this.beautifyOnSaveHandler({
          filePath: filePath
        }, editor);
        return this.subscriptions.add(editor.getBuffer().onWillSave(onWillSaveHandler as any));
      });
    }

    private beautifyOnSaveHandler({ filePath }: { filePath: string }, editor: Atom.TextEditor) {
      const grammarName = editor.getGrammar().name;
      const fileExtension = path.extname(filePath).substr(1);
      const langs: Language[] = this.unibeautify.findLanguages({
        atomGrammar: grammarName,
        extension: fileExtension
      });
      const language = langs.length > 0 ? langs[0] : null;
      if (!language) {
        return;
      }
      const config = this.getConfigFromSettings(language.name);
      const beautifyOnSave = Boolean(config && config.beautify_on_save);
      if (beautifyOnSave) {
        if (editor.getPath() === undefined) {
          editor.getBuffer().setPath(filePath);
        }
        let text: string = null;
        if (!atom.config.get("atom-beautify.general.beautifyEntireFileOnSave") &&  !!editor.getSelectedText()) {
          text = editor.getSelectedText();
        } else {
          text = editor.getText();
        }
        console.log("Beautify file on save", {filePath, fileExtension, text, grammarName});
        return this.unibeautify.beautify({
          fileExtension,
          atomGrammar: grammarName,
          options: {
            [language.name]: config
          },
          text: text
        }).then((result) => {
          editor.setText(result);
        }).catch(error => {
          this.showError(error);
        });
      }
    }

    private async beautifyEditor() {
      const editor: Atom.TextEditor = atom.workspace.getActiveTextEditor();
      const grammarName = editor.getGrammar().name;
      let text: string = null;
      if (!!editor.getSelectedText()) {
        text = editor.getSelectedText();
      } else {
        text = editor.getText();
      }
      let fileExtension: string = null;
      const editorPath = editor.getPath();
      if (editorPath) {
        fileExtension = path.extname(editorPath).substr(1);
      }
      const langs: Language[] = this.unibeautify.findLanguages({
        atomGrammar: grammarName,
        extension: fileExtension
      });
      const language = langs.length > 0 ? langs[0] : null;
      const configSettings = this.getConfigFromSettings(language.name);
      const beautifySettings = await this.unibeautifyConfiguration(configSettings, editorPath, language.name);
      return this.unibeautify.beautify({
        fileExtension,
        atomGrammar: grammarName,
        options: {
          [language.name]: beautifySettings
        },
        text: text,
      }).then((result) => {
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

    private getConfigFromSettings(language: string) {
      const config = atom.config.get("atom-beautify");
      return _.get(config, language.toLowerCase());
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

    // private getCursors(editor: any) {
    //   const cursors: any[] = editor.getCursors();
    //   let posArray: any[] = [];
    //   for (let j = 0, len = cursors.length; j < len; j++) {
    //     const cursor: any = cursors[j];
    //     const bufferPosition: any = cursor.getBufferPosition();
    //     posArray.push([bufferPosition.row, bufferPosition.column]);
    //   }
    //   return posArray;
    // }
    //
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

    private showError(error: any, show: boolean = false) {
      if (show || !atom.config.get("atom-beautify.general.muteAllErrors")) {
        const stack: any = error.stack;
        const detail: string = error.description || error.message;
        return atom.notifications.addError(error.message, {
          stack: stack,
          detail: detail,
          dismissable: true
        });
      }
    }

    private async unibeautifyConfiguration(configSettings: any, filePath: string, language: string): Promise<any> {
      const configExplorer = cosmiconfig("unibeautify", {rcExtensions: true});
      return await configExplorer
            .load(filePath)
            .then((result: any) => ((result && result.config[language]) ? result.config[language] : configSettings))
            .catch((error: any) => (console.error(error)));
    }

}
