/// @description Finds the last occurrence of a substring in a string
/// @param text The full string to search within
/// @param substring The substring to find
function string_last_index_of(text, substring) {
    var lastPos = -1;
    var currentPos = string_pos(substring, text);

    while (currentPos > 0) {
        lastPos = currentPos;
        currentPos = string_pos(substring, string_copy(text, currentPos + string_length(substring), string_length(text)));
        if (currentPos > 0) {
            currentPos += lastPos + string_length(substring) - 1;
        }
    }

    return lastPos;
}
