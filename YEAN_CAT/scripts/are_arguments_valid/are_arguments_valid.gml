// Function to validate command arguments based on expected types
function are_arguments_valid(commandName, arguments) {
    if (ds_map_exists(global.commandDetails, commandName)) {
        var cmdData = ds_map_find_value(global.commandDetails, commandName);
        var argsRequired = ds_map_find_value(cmdData, "arg_count");
        var argTypes = ds_map_find_value(cmdData, "arg_types");

        // Check if the number of arguments matches the required count
        if (array_length(arguments) != argsRequired) {
            handleDebugMessage("Incorrect argument count for command '" + commandName + "'. Expected: " + string(argsRequired) + ", Provided: " + string(array_length(arguments)), true);
            return false;
        }

        // Check each argument against the allowed types
        for (var i = 0; i < array_length(arguments); i++) {
            var arg = arguments[i];
            var validType = false;

            for (var j = 0; j < array_length(argTypes[i]); j++) {
                var type = argTypes[i][j];

                if (type == "real" && is_real(arg)) {
                    validType = true;
                    break;
                }
                if (type == "string" && (is_string(arg) || typeof(arg) == string)) {
                    validType = true;
                    break;
                }
                if (type == "array" && is_array(arg)) {
                    validType = true;
                    break;
                }
            }

            if (!validType) {
                handleDebugMessage("Invalid argument type for command '" + commandName + "'. Argument: " + string(arg) + ", Expected: " + string(argTypes[i]), true);
                return false;
            }
        }

        return true;
    }

    handleDebugMessage("Command '" + commandName + "' not found in commandDetails.", true);
    return false; // Command data not found or arguments not valid
}






