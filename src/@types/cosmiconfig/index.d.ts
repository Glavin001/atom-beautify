declare namespace Cosmiconfig {
  export interface Explorer {
    load(searchPath: string): Promise<null | { config: any; filepath: string }>;
    clearFileCache(): void;
    clearDirectoryCache(): void;
    clearCaches(): void;
  }
  export interface Options {
    packageProp?: string | false;
    rc?: string | false;
    js?: string | false;
    rcStrictJson?: boolean;
    rcExtensions?: boolean;
    stopDir?: string;
    cache?: boolean;
    sync?: boolean;
    transform?: Function;
    configPath?: string;
    format?: "json" | "yaml" | "js";
  }
}

declare module "cosmiconfig" {
  function cosmiconfig(
    moduleName: string,
    options: Cosmiconfig.Options
  ): Cosmiconfig.Explorer;
  namespace cosmiconfig {

  }
  export = cosmiconfig;
}
