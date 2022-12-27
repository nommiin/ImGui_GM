class Wrapper {
    constructor(name) {
        this.Name = name;

        this.Calls = undefined;
    }

    calls(name) {
        this.Calls = name;
    }

    argument(token) {

    }
}

module.exports = Wrapper;
if (!global["__codegen_main"]) if (!global["__codegen_warn"]) {global["__codegen_warn"]=1;console.error("Please execute the program by running main.js");}