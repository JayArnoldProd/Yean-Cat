function serialize_parameters(params) {
    if (!is_array(params)) return "[]";
    var result = "[";
    for (var i = 0; i < array_length(params); i++) {
        if (i > 0) result += ",";
        if (is_array(params[i])) {
            result += serialize_parameters(params[i]);
        } else if (is_string(params[i])) {
            result += "\"" + string_replace_all(params[i], "\"", "\\\"") + "\"";
        } else if (is_undefined(params[i])) {
            result += "null";
        } else {
            result += string(params[i]);
        }
    }
    result += "]";
    return result;
}