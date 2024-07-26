function extract_action_name_with_quotes(params) {
    var commaPos = string_pos(",", params);
    if (commaPos == 0) return string_trim(params);
    var actionName = string_copy(params, 1, commaPos - 1);
    return string_trim(string_replace_all(actionName, "\"", ""));
}