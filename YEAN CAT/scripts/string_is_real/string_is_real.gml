/// @function string_is_real
/// @description Checks if a string can be safely converted to a real number without errors
/// @param {string} str - The string to check
/// @return {bool} - True if the string is a valid number, false otherwise
function string_is_real(str) {
    var len = string_length(str);
    var hasDecimal = false;
    var validChars = "0123456789.-"; // Include negative sign and decimal

    for (var i = 1; i <= len; i++) {
        var char = string_char_at(str, i);
        if (!string_pos(char, validChars)) {
            return false; // Contains invalid character
        }
        if (char == ".") {
            if (hasDecimal) return false; // More than one decimal point
            hasDecimal = true;
        }
        if (char == "-" && i != 1) {
            return false; // Negative sign not at the start
        }
    }
    // Additional check to catch strings like "." or "-" which are not valid numbers
    if (len > 0 && string_count(".", str) + string_count("-", str) < len) {
        return true; // At least one digit is present
    }
    return false;
}
