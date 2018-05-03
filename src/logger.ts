const winston = require("winston");
import { format, TransformableInfo } from "logform";
// import * as winston from "winston";

// interface Levels {
//   [text: string]: number;
// }
//
// const npmLevels: Levels = {
//   error: 0,
//   warn: 1,
//   info: 2,
//   verbose: 3,
//   debug: 4,
//   silly: 5
// };

// const logFormat = format.printf((info: TransformableInfo) => {
//   return outputFormat(info);
// });

// tslint:disable:no-console
const transports = {
  console: new winston.transports.Console({
    log(info: TransformableInfo, callback: { (): void; (): void; }) {
      setImmediate(() => this.emit("logged", info));
      if (this.stderrLevels[info.level]) {
        if (Object.keys(info.metadata).length) {
          console.error(info.message, info.metadata);
        } else {
          console.error(info.message);
        }
        if (callback) {
          callback();
        }
        return;
      }
      if (Object.keys(info.metadata).length) {
        console.log(info.message, info.metadata);
      } else {
        console.log(info.message);
      }
      if (callback) {
        callback();
      }
      return;
    }
  })
};

export const logger = winston.createLogger({
  format: format.combine(
    format.timestamp({ format: "YYYY-MM-DD hh:mm:ss.SSS A" }),
    format.metadata({
      fillExcept: ["message", "label", "level", "timestamp"]
    }),
    format.printf((info: TransformableInfo) => {
      return `${info.timestamp} ${info.label} [${info.level}]: ${info.message}`;
    })
  ),
  transports: [
    transports.console
  ]
});

// transports.console.on("logged", (info: TransformableInfo) => {
//   if (npmLevels[getAtomConfigLevel()] >= npmLevels[info.level]) {
//     // tslint:disable-next-line:no-console
//     console.log(outputFormat(info), info.meta);
//   }
// });

// function outputFormat(info: TransformableInfo): string {
//   return `${info.timestamp} ${info.label} [${info.level}]: ${info.message}`;
// }

function getAtomConfigLevel(): string {
  return atom.config.get("atom-beautify.general.loggerLevel") || "warn";
}
