class Configuration {
    // If true, FileEditor will write changes to files with ".test" appended to their filename
    static USE_TEST = true;

    // Spacing character used for writing generated code
    static SPACING = "    ";
}

module.exports = Configuration;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}