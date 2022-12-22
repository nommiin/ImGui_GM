const fs = require("node:fs"), Logger = require("./util/Logger"), FileEditor = require("./FileEditor"), Scanner = require("./Scanner");

class Program {
    /**
     * Entry point for codegen tool, see Configuration.js for options
     * @param {string} wrapper Path to wrapper .cpp file
     * @param {string} extension Path to extension .yy file
     * @param {string} script Path to ImGui .gml script
     */
    static main(wrapper, extension, script) {
        var f = new FileEditor(script);
        var p = new Scanner(f.Content);
        console.log();
        var tok = p.scan();
        fs.writeFileSync("tokens.js", "tokens = " + JSON.stringify(tok, undefined, 4), {encoding: "utf-8"});
        //console.log("nice");
    }
}

module.exports = Program;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}