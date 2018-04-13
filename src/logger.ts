const winston = require("winston");
import { format, TransformableInfo } from "logform";
// import * as winston from "winston";

const levels = {
  error: 0,
  warn: 1,
  info: 2,
  verbose: 3,
  debug: 4,
  silly: 5
};

const logFormat = format.printf((info: TransformableInfo) => {
  return outputFormat(info);
});

const transports = {
  console: new winston.transports.Console({
    level: levels.error
  })
};

export const logger = winston.createLogger({
  format: format.combine(
    format.timestamp({ format: "YYYY-MM-DD hh:mm:ss.SSS A" }),
    logFormat
  ),
  transports: [
    transports.console
  ]
});

transports.console.on("logged", (info: TransformableInfo) => {
  if (levels[getAtomConfigLevel()] >= levels[info.level]) {
    console.log(outputFormat(info));
  }
});

function outputFormat(info: TransformableInfo): string {
  return `${info.timestamp} [${info.label}] ${info.level}: ${info.message}`;
}

function getAtomConfigLevel(): string {
  return atom.config.get("atom-beautify.general.loggerLevel") || "warn";
}
