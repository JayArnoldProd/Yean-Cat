function extract_action_name(params) {
    var firstComma = string_pos(",", params);
    if (firstComma == 0) return params;
    var actionName = string_copy(params, 1, firstComma - 1);
    actionName = string_trim(actionName);
    actionName = string_replace_all(actionName, "\"", "");  // Remove quotes
    return actionName;
}