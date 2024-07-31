function parse_arguments(argsString) {
    handleDebugMessage("Parsing arguments: " + argsString, true);
    var args = [];
    var currentArg = "";
    var inQuotes = false;
    var bracketDepth = 0;
    var arrayDepth = 0;
    
    for (var i = 1; i <= string_length(argsString); i++) {
        var char = string_char_at(argsString, i);
        
        if (char == "\"" && string_char_at(argsString, i - 1) != "\\") {
            inQuotes = !inQuotes;
        }
        
        if (!inQuotes) {
            if (char == "[") arrayDepth++;
            if (char == "]") arrayDepth--;
            if (char == "(") bracketDepth++;
            if (char == ")") bracketDepth--;
        }
        
        if (char == "," && bracketDepth == 0 && arrayDepth == 0 && !inQuotes) {
            array_push(args, string_trim(currentArg));
            currentArg = "";
        } else {
            currentArg += char;
        }
    }
    
    if (currentArg != "") {
        array_push(args, string_trim(currentArg));
    }
    
    handleDebugMessage("Parsed arguments: " + json_stringify(args), true);
    return args;
}