const Configuration = require("./Configuration");
const pino = require("pino");
const noColor = process.env.NO_COLOR
const LVLS = process.env.LOG_LEVEL?.split(",") || ["info"];

/**
 * Global logging class, all methods are static
 *
 * Written by Nommiin - https://github.com/Nommiin
 *
 */
class Logger {
  static logger = getLogger();

  static _ignored_warns = (function(){
    let iw = Configuration.LOGGER_IGNORE_WARNS;
    if (typeof iw == "string") {iw = [iw];}
    return iw;
  })();

  static isIgnoredWarn = function(type){
    if (this._ignored_warns === undefined || this._ignored_warns === false) return false;
    if (this._ignored_warns === true) return true;
    for (const iw of this._ignored_warns) {
        if (type.match(iw)) {
            return true;
        }
    }
  };

  static levels = LVLS;

  static _get(msg, extra) {
    let type = "";
    if ("type" in extra) {
      type = `[${extra["type"]}] `;
      delete extra["type"];
    }
    let ed = "";
    if (Object.keys(extra).length > 0) {
      ed = " " + JSON.stringify(extra);
    }
    return [`${type}${msg}${ed}`, extra];
  }

  static info(msg, extra = {}) {
    if (!this.levels.includes("info")) return; this.logger.info(...this._get(msg, extra));
  }

  static warn(msg, extra = {}) {
    if (!this.levels.includes("warn") && !this.levels.includes("warning")) return;
    if ("type" in extra && this.isIgnoredWarn(extra.type)) return;
    this.logger.warn(...this._get(msg, extra));
  }

  static error(msg, extra = {}) {
    this.logger.error(...this._get(msg, extra));
  }

  static fatal(msg, extra = {}) {
    this.logger.fatal(...this._get(msg, extra));
  }

  static trace(msg, extra = {}) {
    if (!this.levels.includes("trace")) return; this.logger.trace(...this._get(msg, extra));
  }

  static debug(msg, extra = {}) {
    if (!this.levels.includes("debug")) return; this.logger.debug(...this._get(msg, extra));
  }

  static warning = Logger.warn;
}

/**
 * getLogger function for retrieving pino logger.
 *
 * Written by knno - https://github.com/knno
 *
 */
function getLogger() {
  const logLevel = (LVLS.length == 1) ? LVLS[0] : "trace";
  return pino(
    { name: Configuration.PROGRAM_NAME, level: "trace" },
    pino.transport({
      timestamp: () => `",timestamp":"${new Date(Date.now()).toISOString()}"`,
      targets: [
        {
          target: "pino-pretty",
          level: "trace",
          options: {
            colorize: !noColor,
            messageFormat: "{msg}",
            destination: 1,
          },
        },
      ],
    })
  );
}

module.exports = Logger;
if (!global["__program_main"])
  if (!global["__program_warn"]) {
    global["__program_warn"] = 1;
    console.error("Please execute the program by running main.js");
  }
