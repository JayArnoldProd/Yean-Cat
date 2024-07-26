function are_params_valid_with_quotes(params) {
    var inQuotes = false;
    var currentParam = "";
    var paramCount = 0;

    for (var i = 1; i <= string_length(params); i++) {
        var char = string_char_at(params, i);
        
        if (char == "\"") {
            inQuotes = !inQuotes;
            currentParam += char;
        } else if (char == "," && !inQuotes) {
            if (string_trim(currentParam) != "") paramCount++;
            currentParam = "";
        } else {
            currentParam += char;
        }
    }
    
    if (string_trim(currentParam) != "") paramCount++;
    
    // Check if the number of parameters is correct for the command
    // This would need to be adjusted based on the specific command requirements
    return paramCount >= 2;  // For example, requiring at least 2 parameters
}