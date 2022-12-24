const Logger = require("./Logger");
const Scanner = require("./Scanner");
const Token = require("./Token");
const TokenReader = require("./TokenReader");

/// Takes tokens and turns them into better tokens :3
class Processor {
    constructor(tokens) {
        this.Tokens = tokens; //Reader = new TokenReader(tokens);
    }

    /**
     * @param {Array<Token>} tokens 
     * @returns {TokenReader} Updated tokens in reader
     */
    getBase() {
        let reader = new TokenReader(this.Tokens);
        
        return reader;
    }

    getGml() {
        const reader = this.getBase();
        /*
        /  do gml things here
        */
        return reader;
    }

    getCpp() {
        const reader = this.getBase();
        /*
        /  do C++ things here
        */
        return reader;
    }
}

module.exports = Processor;