
import unibeautify from 'unibeautify';

export = {
  activate(state: any) {
    unibeautify.getLoadedLanguages();
    
  }
}