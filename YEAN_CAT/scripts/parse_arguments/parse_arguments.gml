/// @function parse_arguments(argsString)
/// @description Parses a string containing command arguments into an array
function parse_arguments(argsString) {
    var params = [];
    var inString = false;
    var inArray = false;
    var currentParam = "";
    var currentChar;

    for (var i = 1; i <= string_length(argsString); i++) {
        currentChar = string_char_at(argsString, i);

        if (currentChar == "\"" && !inArray) {
            inString = !inString; // Toggle string mode
            currentParam += currentChar;
        } else if (currentChar == "[" && !inString) {
            inArray = true;
            currentParam += currentChar;
        } else if (currentChar == "]" && !inString) {
            inArray = false;
            currentParam += currentChar;
        } else if (currentChar == "," && !inString && !inArray) {
            params[array_length(params)] = string_trim(currentParam);
            currentParam = "";
        } else {
            currentParam += currentChar;
        }
    }

    if (string_length(currentParam) > 0) {
        // Remove surrounding quotes if the entire parameter is a quoted string
        if (string_length(currentParam) >= 2 && string_char_at(currentParam, 1) == "\"" && string_char_at(currentParam, string_length(currentParam)) == "\"") {
            currentParam = string_delete(currentParam, string_length(currentParam), 1);
            currentParam = string_delete(currentParam, 1, 1);
        }

        params[array_length(params)] = string_trim(currentParam);
    }

    return params;
}