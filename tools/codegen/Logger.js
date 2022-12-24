class Logger {
    static Name = "codegen";
    static get = function(type, msg) {
        return `[${this.Name} - ${type}]: ${msg}`;
    }

    static info(msg) {
        console.log(this.get("INFO", msg));
    }

    static warning(msg) {
        console.log(this.get("WARNING", msg));
    }

    static error(msg) {
        console.error(this.get("ERROR", msg));
    }
}

module.exports = Logger;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}