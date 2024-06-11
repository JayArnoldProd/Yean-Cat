


// Handle command execution with advanced parsing for arguments and permissions
function execute_command(command) {
    var commandName = "";
    var parameters = [];

    // Trim command to remove any leading/trailing whitespace
    command = string_trim(command);

    // Remove the leading "/" if present
    if (string_char_at(command, 1) == "/") {
        command = string_delete(command, 1, 1);
    }

    // Check if the command contains parentheses for parameters
    var startParenthesis = string_pos("(", command);
    var endParenthesis = string_pos(")", command);
    var requiresParentheses = false;

    if (startParenthesis > 0 && endParenthesis > startParenthesis) {
        // Extract the command name and parameters inside parentheses
        commandName = string_copy(command, 1, startParenthesis - 1);
        commandName = string_trim(commandName);
        var paramString = string_copy(command, startParenthesis + 1, endParenthesis - startParenthesis - 1);
        parameters = string_split(paramString, ",");  // Split parameters by commas
        requiresParentheses = true;
    } else {
        // Split command by spaces if no parentheses are used
        var parts = string_split(command, " ");
        commandName = parts[0];
        if (array_length(parts) > 1) {
            for (var i = 1; i < array_length(parts); i++) {
                parameters[array_length(parameters)] = parts[i];
            }
        }
    }

    // Ensure command name has the "scr_" prefix if needed
    var scriptName = "scr_" + commandName;

    // Check if the command details exist and the command is being called correctly
    var commandDetailName = commandName + (requiresParentheses ? "(" : "");
    if (ds_map_exists(global.commandDetails, commandDetailName)) {
        var commandInfo = ds_map_find_value(global.commandDetails, commandDetailName);
        var requiredLevel = commandInfo[? "requiredLevel"];
        if (check_permission(requiredLevel)) {
            // Check if the script exists and execute it with all parameters; supports up to 8 parameters.
            if (script_exists(asset_get_index(scriptName))) {
                switch (array_length(parameters)) {
                    case 0:
                        script_execute(asset_get_index(scriptName));
                        break;
                    case 1:
                        script_execute(asset_get_index(scriptName), parameters[0]);
                        break;
                    case 2:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1]);
                        break;
                    case 3:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1], parameters[2]);
                        break;
                    case 4:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1], parameters[2], parameters[3]);
                        break;
                    case 5:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1], parameters[2], parameters[3], parameters[4]);
                        break;
                    case 6:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1], parameters[2], parameters[3], parameters[4], parameters[5]);
                        break;
                    case 7:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1], parameters[2], parameters[3], parameters[4], parameters[5], parameters[6]);
                        break;
                    default:
                        script_execute(asset_get_index(scriptName), parameters[0], parameters[1], parameters[2], parameters[3], parameters[4], parameters[5], parameters[6], parameters[7]);
                        break;
                }
            } else {
                handleDebugMessage("Script not found for command: " + command, true);
            }
        } else {
            handleDebugMessage("Permission denied for command: " + command, true);
        }
    } else {
        handleDebugMessage("Unknown command: " + command + " type '/list_commands' to see all commands", true);
    }
}



