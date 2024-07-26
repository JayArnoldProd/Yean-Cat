function parse_value(val) {
    if (val == "null") return undefined;
    if (val == "true") return true;
    if (val == "false") return false;
    if (string_digits(val) == val) return real(val);
    if (string_char_at(val, 1) == "\"" && string_char_at(val, string_length(val)) == "\"") {
        return string_copy(val, 2, string_length(val) - 2);
    }
    return val;
}
