const Logger = require("./Logger");

class Wrapper {
    constructor(name, line) {
        this.Name = name;
        this.Line = line;
        this.Calls = undefined;
        this.CallOverride = false;
        this.Arguments = [];
        this.ArgumentIndex = -1;
        this.Return = "Unknown<unset>";
        this.Start = "";
        this.End = "";
    }

    calls(name, override=false) {
        if (this.CallOverride) return;
        this.Calls = name;
        this.CallOverride = override;
    }

    argument(name, ind, origin) {
        this.Arguments[ind] = {
            Name: name,
            Type: origin ? Wrapper.typefunc(origin) : "Unknown",
            Hidden: false,
            Passthrough: undefined
        }
        this.ArgumentIndex = ind;
    }

    returns(kind) {
        this.Return = Wrapper.typename(kind);
    }

    return_arg(ind) {
        this.Return = this.Arguments[ind].Type;
    }

    modifier(token) {
        switch (token.Literal) {
            // Wrapper
            case "GMOVERRIDE": {
                const name = token.Children[0];
                if (!name || name.Type !== "Identifier") throw `Could not handle GMOVERRIDE modifier, expected "name" argument as Identifier at line ${token.Line}`;
                this.calls(name.Literal, true);
                return true;
            }

            case "GMPREPEND": {
                this.Start += token.flatten(false);
                return true;
            }

            case "GMAPPEND": {
                this.End += token.flatten(false);
                return true;
            }

            // Arguments
            case "GMDEFAULT": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Default = token.flatten(false);
                return true;
            }

            case "GMPASSTHROUGH": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Passthrough = token.flatten(false);
                return true;
            }

            case "GMHIDDEN": {
                if (this.ArgumentIndex === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;
                
                const arg = this.Arguments[this.ArgumentIndex];
                arg.Hidden = true;
                return true;
            }

            case "GMRETURN": {
                let index = this.ArgumentIndex;

                const inner = token.Children;
                if (inner) {
                    const ind = inner[0];
                    if (ind) {
                        index = ind.Literal;
                        if (index > this.ArgumentIndex) {
                            throw `Could not handle ${token.Literal} modifier, target argument index ${index} is out of range (${this.ArgumentIndex}) at line ${token.Line}`;
                        }
                    }
                }
                if (index === -1) throw `Could not handle ${token.Literal} modifier, target argument is unset at line ${token.Line}`;

                this.return_arg(index);
                return true;
            }

            // Ignore
            case "GMCOLOR3_TO":
            case "GMCOLOR4_TO":
            case "GMCOLOR_FROM": return true;
        }
        Logger.warning(`Could not handle unknown modifier "${token.Literal}" for wrapper "${this.Name}" at line ${token.Line}`);
        return false;
    }

    static typename(kind) {
        switch (kind) {
            case "VALUE_INT32":
            case "VALUE_INT64":
            case "VALUE_REAL": return "Real";
            case "VALUE_STRING": return "String";
            case "VALUE_ARRAY": return "Array";
            case "VALUE_OBJECT": return "Asset.GMObject";
            case "VALUE_UNDEFINED": return "Undefined";
            case "VALUE_PTR": return "Pointer";
            case "VALUE_BOOL": return "Bool";
        }
        return `Unknown<${kind}>`;
    }

    static typefunc(func) {
        let ret = "";
        let base = func.slice("YYGet".length);
        const template = base.indexOf("|template=");
        if (template > -1) {
            const arr = base.slice(template + "|template=".length);
            switch (arr) {
                case "double":
                case "float":
                case "int": {
                    ret = "<Real>";
                    break;
                }

                default: {
                    ret = "<Unknown>";
                    break;
                }
            }
            base = base.slice(0, template);
        }

        switch (base) {
            case "String":
            case "Array":
            case "Real":
            case "Bool": return base + ret;
            case "PtrOrInt": 
            case "Ptr": return ret + "Pointer";
            case "Int32":
            case "Uint32":
            case "Int64":
            case "Float": return ret + "Real";
            case "Struct": return ret + "Struct";
        }
        return ret;
    }
}

module.exports = Wrapper;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}