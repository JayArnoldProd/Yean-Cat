// handleCommandWithArgs function to manage command arguments and colors
function handleCommandWithArgs(argsStart, argsEnd, command, hasPermission) {
    if (ds_map_exists(global.commandDetails, command)) {
        var commandInfo = ds_map_find_value(global.commandDetails, command);
        var argsRequired = commandInfo[? "argsRequired"];
        var argCount = commandInfo[? "arg_count"];
        var arguments = (argsStart > 0 && argsEnd > argsStart) ? string_copy(global.commandBuffer, argsStart + 1, argsEnd - argsStart - 1) : "";

        if (argsRequired) {
            if (argsEnd > argsStart) {
                // Command with arguments is fully typed and enclosed
                //handleDebugMessage("Command: " + command + ", Args: '" + arguments + "'", true);
                var params = parse_data_types(parse_arguments(arguments));
                var isValidArguments = (array_length(params) == argCount) && are_arguments_valid(command, params);

                //handleDebugMessage("Args Parsed: " + string(params) + ", Is Valid: " + string(isValidArguments), true);
                return (hasPermission && isValidArguments) ? c_lime : c_red;
            } else {
                // Arguments are still being typed
                return c_aqua;
            }
        } else {
            // Command is complete and no arguments are required
            return hasPermission ? c_lime : c_red;
        }
    } else {
        // Adjusting the condition to maintain aqua color until arguments are closed
        if (argsStart > 0 && argsEnd == 0) {
            return c_aqua; // Maintain aqua until closing parenthesis
        } else {
            return c_pink; // No command or incomplete command without '('
        }
    }
}
