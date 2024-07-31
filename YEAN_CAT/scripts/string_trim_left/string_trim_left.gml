function string_trim_left(str) {
    var len = string_length(str);
    var pos = 1;
    while (pos <= len && ord(string_char_at(str, pos)) <= 32) {
        pos++;
    }
    return string_copy(str, pos, len - pos + 1);
}