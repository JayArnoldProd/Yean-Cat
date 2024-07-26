function parse_nested_array(arr) {
    var result = [];
    for (var i = 0; i < array_length(arr); i++) {
        if (is_array(arr[i])) {
            array_push(result, parse_nested_array(arr[i]));
        } else if (is_string(arr[i])) {
            array_push(result, string_trim(arr[i]));
        } else {
            array_push(result, arr[i]);
        }
    }
    return result;
}