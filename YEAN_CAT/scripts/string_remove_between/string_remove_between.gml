/// @function string_remove_between(str, startChar, endChar)
/// @description Removes all substrings between and including the specified start and end characters
/// @param {string} str - The original string
/// @param {string} startChar - The starting character
/// @param {string} endChar - The ending character
/// @return {string} - The modified string
function string_remove_between(str, startChar, endChar) {
    var startPos, endPos;
    while (true) {
        startPos = string_pos(startChar, str);
        endPos = string_pos(endChar, str);
        if (startPos != 0 && endPos != 0 && endPos > startPos) {
            str = string_delete(str, startPos, endPos - startPos + 1);
        } else {
            break;
        }
    }
    return str;
}
