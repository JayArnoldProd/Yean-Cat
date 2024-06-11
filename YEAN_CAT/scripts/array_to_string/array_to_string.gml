/// @function array_to_string(arr)
/// @description Converts an array to a string, ensuring proper format
function array_to_string(arr) {
    var str = "";
    for (var i = 0; i < array_length(arr); i++) {
        var item = arr[i];
        if (is_real(item)) {
            str += string(item) + ", ";
        } else if (is_string(item)) {
            str += "\"" + item + "\", ";
        }
    }
    return string_trim_right(str, ", ");
}