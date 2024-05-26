function is_numeric_string(str) {
    str = string_trim(str);  // Trim whitespace
    if (str == "") return false;  // Return false if the string is empty

    var hasDecimal = false;
    for (var i = 1; i <= string_length(str); i++) {
        var char = string_char_at(str, i);

        // Check for a negative sign at the first character only
        if (char == "-" && i == 1 && string_length(str) > 1) continue;

        // Check for a decimal point, ensure only one is present
        if (char == ".") {
            if (!hasDecimal) {
                hasDecimal = true;  // Mark that we've seen a decimal
                continue;
            } else {
                return false;  // Multiple decimals are not allowed
            }
        }

        // Check if the character is a digit
        if (char < "0" || char > "9") return false;
    }

    return true;  // The string is a valid numeric representation
}
