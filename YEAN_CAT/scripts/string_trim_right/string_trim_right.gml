/// @function string_trim_right(str, chars)
/// @description Trims specified characters from the right end of a string
function string_trim_right(str) {
    var len = string_length(str);
    while (len > 0 && ord(string_char_at(str, len)) <= 32) {
        len--;
    }
    return string_copy(str, 1, len);
}