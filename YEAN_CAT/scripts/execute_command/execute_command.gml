function execute_command(command) {
    handleDebugMessage("Executing command: " + command, true);

    var commandName = "";
    var parameters = [];

    command = string_trim(command);
    if (string_char_at(command, 1) == "/") {
        command = string_delete(command, 1, 1);
    }

    handleDebugMessage("Processed command: " + command, true);

    if (string_pos("add_action(", command) == 1) {
        var startParen = string_pos("(", command);
        var endParen = string_last_pos(")", command);
        if (startParen > 0 && endParen > startParen) {
            var argsString = string_copy(command, startParen + 1, endParen - startParen - 1);
            var args = string_split(argsString, ",");
            if (array_length(args) >= 3) {
                var actionName = string_trim(args[0]);
                var actionCommand = string_trim(args[1]);
                var actionParams = string_join_ext(",", args, 2);
                actionParams = string_replace_all(actionParams, "[", "");
                actionParams = string_replace_all(actionParams, "]", "");
                var paramArray = string_split(actionParams, ",");
                for (var i = 0; i < array_length(paramArray); i++) {
                    paramArray[i] = string_trim(paramArray[i]);
                }
                scr_add_action(actionName, actionCommand, paramArray);
                return;
            }
        }
    } else if (string_pos("execute_action(", command) == 1) {
        var actionName = string_replace(command, "execute_action(", "");
        actionName = string_replace(actionName, ")", "");
        actionName = string_trim(actionName);
        
        if (ds_map_exists(global.actionDetails, actionName)) {
            var actionEntry = ds_map_find_value(global.actionDetails, actionName);
            commandName = ds_map_find_value(actionEntry, "command");
            parameters = ds_map_find_value(actionEntry, "parameters");
        } else {
            handleDebugMessage("Action '" + actionName + "' not found.", true);
            return;
        }
    } else {
        // Parse regular commands
        var startParenthesis = string_pos("(", command);
        var endParenthesis = string_pos(")", command);
        
        if (startParenthesis > 0 && endParenthesis > startParenthesis) {
            commandName = string_trim(string_copy(command, 1, startParenthesis - 1));
            var paramString = string_copy(command, startParenthesis + 1, endParenthesis - startParenthesis - 1);
            parameters = string_split(paramString, ",");
            
            // Trim and convert parameters
            for (var i = 0; i < array_length(parameters); i++) {
                var param = string_trim(parameters[i]);
                if (string_char_at(param, 1) == "\"" && string_char_at(param, string_length(param)) == "\"") {
                    param = string_copy(param, 2, string_length(param) - 2);
                } else if (string_digits(param) == param) {
                    param = real(param);
                }
                parameters[i] = param;
            }
        } else {
            var parts = string_split(command, " ");
            commandName = parts[0];
            if (array_length(parts) > 1) {
                for (var i = 1; i < array_length(parts); i++) {
                    array_push(parameters, parts[i]);
                }
            }
        }
    }

    var scriptName = "scr_" + commandName;
    
    if (script_exists(asset_get_index(scriptName))) {
        script_execute_ext(asset_get_index(scriptName), parameters);
    } else {
        handleDebugMessage("Script not found for command: " + commandName, true);
    }
}