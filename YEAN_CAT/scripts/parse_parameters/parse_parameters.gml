function parse_parameters(params) {
    var result = [];
    var currentParam = "";
    var inQuotes = false;
    var bracketDepth = 0;
    var parenDepth = 0;
    
    for (var i = 1; i <= string_length(params); i++) {
        var char = string_char_at(params, i);
        
        if (char == "\"" && string_char_at(params, i - 1) != "\\") {
            inQuotes = !inQuotes;
            currentParam += char;
        } else if (!inQuotes) {
            if (char == "[") {
                bracketDepth++;
            } else if (char == "]") {
                bracketDepth--;
            } else if (char == "(") {
                parenDepth++;
            } else if (char == ")") {
                parenDepth--;
            } else if (char == "," && bracketDepth == 0 && parenDepth == 0) {
                array_push(result, string_trim(currentParam));
                currentParam = "";
                continue;
            }
        }
        currentParam += char;
    }
    
    if (currentParam != "") {
        array_push(result, string_trim(currentParam));
    }
    
    return result;
}