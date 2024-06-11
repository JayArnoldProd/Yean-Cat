/// @function parse_data_types(argumentsArray)
/// @description Converts strings in an array to appropriate data types
function parse_data_types(argumentsArray) {
    var parsedArray = [];
    for (var i = 0; i < array_length(argumentsArray); i++) {
        var arg = string_trim(argumentsArray[i]);

        // Parse as array
        if (string_char_at(arg, 1) == "[" && string_char_at(arg, string_length(arg)) == "]") {
            parsedArray[i] = parse_data_types(parse_arguments(string_copy(arg, 2, string_length(arg) - 2)));
        }
        // Parse as real
        else if (string_is_real(arg)) {
            parsedArray[i] = real(arg);
        }
        // Treat as a string
        else {
            parsedArray[i] = arg;
        }
    }
    return parsedArray;
}





//// Function to convert string arguments into their appropriate data types
//function parse_data_types(arguments) {
//    var parsedArguments = [];
//    var currentArg;

//    for (var i = 0; i < array_length(arguments); i++) {
//        currentArg = string_trim(arguments[i]);

//        // Detect if the argument is an array
//        if (string_char_at(currentArg, 1) == "[" && string_char_at(currentArg, string_length(currentArg)) == "]") {
//            // Remove brackets and split the inner array by commas
//            currentArg = string_copy(currentArg, 2, string_length(currentArg) - 2);
//            var innerArray = parse_arguments(currentArg);
//            parsedArguments[array_length(parsedArguments)] = parse_data_types(innerArray);
//        }
//        // Detect if the argument is a real number
//        else if (is_real(currentArg) || string_is_real(currentArg)) {
//            parsedArguments[array_length(parsedArguments)] = real(currentArg);
//        }
//        // Otherwise, it's a string
//        else {
//            parsedArguments[array_length(parsedArguments)] = currentArg;
//        }
//    }

//    return parsedArguments;
//}
