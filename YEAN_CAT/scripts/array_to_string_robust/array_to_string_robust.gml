function array_to_string_robust(arr, depth = 0) {
    var result = "[";
    for (var i = 0; i < array_length(arr); i++) {
        if (is_array(arr[i])) {
            result += array_to_string_robust(arr[i], depth + 1);
        } else if (is_string(arr[i])) {
            var cleaned_string = string_replace_all(arr[i], "\n", "\\n");
            cleaned_string = string_replace_all(cleaned_string, "\r", "\\r");
            cleaned_string = string_replace_all(cleaned_string, "\"", "\\\"");
            result += "\"" + cleaned_string + "\"";
        } else {
            result += string(arr[i]);
        }
        if (i < array_length(arr) - 1) result += ",";
    }
    result += "]";
    return (depth == 0) ? string_replace_all(result, " ", "") : result;
}