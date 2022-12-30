const Configuration = require("./Configuration");

/**
 * Global logging class, all methods are static
 * 
 * Written by Nommiin - https://github.com/Nommiin
 */
class Logger {
    static _get = function(type, msg) {
        return `[${Configuration.PROGRAM_NAME} - ${type}]: ${msg}`;
    }

    /**
     * Logs an info message in the console prepended with INFO
     * @param {string} msg The message to log
     */
    static info(msg) {
        console.log(this._get("INFO", msg));
    }

    /**
     * Logs a warning message in the console prepended with WARNING
     * @param {string} msg The message to log
     */
    static warning(msg) {
        console.log(this._get("WARNING", msg));
    }

    /**
     * Logs an error message in the console prepended with ERROR
     * @param {string} msg The message to log
     */
    static error(msg) {
        console.error(this._get("ERROR", msg));
    }
}

module.exports = Logger;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}