class Wrapper {
    constructor(name) {
        this.Name = name;
        this.Calls = undefined;
    }

    calls(name) {
        this.Calls = name;
    }
}

module.exports = Wrapper;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}