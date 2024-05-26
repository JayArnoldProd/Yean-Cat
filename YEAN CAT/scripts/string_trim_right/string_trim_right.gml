/// @function string_trim_right(str, chars)
/// @description Trims specified characters from the right end of a string
function string_trim_right(str, chars) {
    var _end = string_length(str);
    while (_end > 0 && string_char_at(str, _end) == chars) {
        _end -= 1;
    }
    return string_copy(str, 1, _end);
}



