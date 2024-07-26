// Helper function to convert array to string, including nested arrays
function array_to_string(arr) {
    var result = "[";
    for (var i = 0; i < array_length(arr); i++) {
        if (is_array(arr[i])) {
            result += array_to_string(arr[i]);
        } else if (is_string(arr[i])) {
            result += "\"" + string(arr[i]) + "\"";
        } else {
            result += string(arr[i]);
        }
        if (i < array_length(arr) - 1) result += ",";
    }
    result += "]";
    return result;
}