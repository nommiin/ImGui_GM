global["__codegen_main"] = true;

const Processor = require("./Processor");
const Scanner = require("./Scanner");

function assert(val, msg) {
    if (!val) console.error(`Assertion Failure: ${msg}`);
}

(function() {
    // function calls with template arguments
    var sc = new Scanner(`
        int* a = TestFunction(1, 2, "hello");
        const char* b = TestFunction<double>(3, 4, "world");
    `);

    var tokens = new Processor(sc.Tokens).get();

    for(let i = 0; i < tokens.length - 1; i++) {
        const token = tokens[i];
        console.log(`L${token.Line} - ${token.Type}: ${token.Literal}`);
    }
}());