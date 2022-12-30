global["__program_main"] = true;
const Processor = require("./Processor");
const Scanner = require("./Scanner");

function assert(val, msg) {
    if (!val) throw `Assertion Failure: ${msg}`;
}

(function() {
    var tokens = new Processor(new Scanner(`
        if (&bruh) {

        }

        function bruh() {
            console.log("lol");
            if (bruh2*) {
                console.log2("again!!!");
                a = (&b);
            }
        }
    `).Tokens).get();

    for(let i = 0; i < tokens.length - 1; i++) {
        const token = tokens[i];
        console.log(`L${token.Line} - ${token.Type}: ${token.Literal}`);
    }
}());