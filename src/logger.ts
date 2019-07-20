import { format, TransformableInfo } from "logform";
import * as path from "path";
import * as winston from "winston";
import { LEVEL, MESSAGE } from "triple-beam";

export const Logger = (file: string) => {
  return winston.createLogger({
    level: getAtomConfigLevel(),
    transports: [
      new winston.transports.Console({
        log(info: TransformableInfo, callback: { (): void; (): void }) {
          setImmediate(() => this.emit("logged", info));
          if (this.stderrLevels[info[LEVEL]]) {
            if (Object.keys(info.metadata).length) {
              console.error(info[MESSAGE], info.metadata);
            } else {
              console.error(info[MESSAGE]);
            }
            if (callback) {
              callback();
            }
            return;
          }
          if (Object.keys(info.metadata).length) {
            // tslint:disable-next-line:no-console
            console.log(info[MESSAGE], info.metadata);
          } else {
            // tslint:disable-next-line:no-console
            console.log(info[MESSAGE]);
          }
          if (callback) {
            callback();
          }
          return;
        },
        format: winston.format.combine(
          format.timestamp({
            format: "YYYY-MM-DD hh:mm:ss.SSS A",
          }),
          format.label({
            label: path.basename(file),
          }),
          format.metadata({
            fillExcept: ["message", "label", "level", "timestamp"],
          }),
          format.printf((info: TransformableInfo) => {
            return `${info.timestamp} ${info.label} [${info.level}]: ${
              info.message
            }`;
          })
        ),
      }),
    ],
  });
};

function getAtomConfigLevel(): string {
  return atom.config.get("atom-beautify.general.loggerLevel") || "warn";
}
