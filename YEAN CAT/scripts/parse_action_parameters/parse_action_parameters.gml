/// @function parse_action_parameters(parametersString)
/// @description Parses a parameter string into an array with appropriate data types
function parse_action_parameters(parametersString) {
    var paramsArray = [];

    // Ensure parametersString is a valid string
    if (!is_string(parametersString) || string_length(parametersString) == 0) return paramsArray;

    // Use an array to trim both `[` and `]` characters
    var trimmedString = string_trim(parametersString, ["[", "]"]);
    if (string_length(trimmedString) == 0) return paramsArray;

    var paramsRaw = string_split(trimmedString, ",");

    for (var i = 0; i < array_length(paramsRaw); i++) {
        var param = string_trim(paramsRaw[i]);

        // Parse as real
        if (string_is_real(param)) {
            paramsArray[i] = real(param);
        }
        // Treat as a string
        else {
            paramsArray[i] = param;
        }
    }

    return paramsArray;
}

