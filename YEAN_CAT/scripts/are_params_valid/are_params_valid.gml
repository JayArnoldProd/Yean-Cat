function are_params_valid(params) {
    show_debug_message("Checking params: '" + params + "'");
    var paramArray = parse_parameters(params);
    for (var i = 0; i < array_length(paramArray); i++) {
        var param = paramArray[i];
        show_debug_message("Checking param: '" + string(param) + "'");
        if (is_string(param)) {
            if (string_trim(param) == "") {
                show_debug_message("Empty param found, invalid");
                return false;
            }
        } else if (is_array(param)) {
            if (!are_params_valid(array_to_string(param))) {
                show_debug_message("Invalid array contents");
                return false;
            }
        }
    }
    show_debug_message("All params valid");
    return true;
}