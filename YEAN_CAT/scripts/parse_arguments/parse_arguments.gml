/// @function parse_arguments(argsString)
/// @description Parses a string containing command arguments into an array
function parse_arguments(argsString) {
    var args = [];
    var depthh = 0;
    var currentArg = "";
    var inQuotes = false;
    var bracketDepth = 0;
    
    for (var i = 1; i <= string_length(argsString); i++) {
        var char = string_char_at(argsString, i);
        
        if (char == "\"" && string_char_at(argsString, i - 1) != "\\") {
            inQuotes = !inQuotes;
        }
        
        if (!inQuotes) {
            if (char == "[") bracketDepth++;
            if (char == "]") bracketDepth--;
            if (char == "(") depthh++;
            if (char == ")") depthh--;
        }
        
        if ((char == "," && depthh == 0 && bracketDepth == 0 && !inQuotes) || i == string_length(argsString)) {
            if (i == string_length(argsString)) currentArg += char;
            array_push(args, string_trim(currentArg));
            currentArg = "";
        } else {
            currentArg += char;
        }
    }
    
    return args;
}