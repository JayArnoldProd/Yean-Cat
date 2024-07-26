function execute_command(command) {
    handleDebugMessage("Executing command: " + command, true);
    command = string_trim(string_replace_all(command, "\n", " "));
    if (command == "") {
        handleDebugMessage("Error: Empty command", true);
        return;
    }
    if (string_char_at(command, 1) == "/") {
        command = string_delete(command, 1, 1);
    }
    handleDebugMessage("Processed command: " + command, true);
    var commandName = "";
    var parameters = [];
    
    var fullCommand = command;
    var openParenIndex = string_pos("(", command);
    var closeParenIndex = string_last_pos(")", command);
    
    if (string_pos("add_action(", command) == 1) {
    var startParen = string_pos("(", command);
    var endParen = string_last_pos(")", command);
    if (startParen > 0 && endParen > startParen) {
        var argsString = string_copy(command, startParen + 1, endParen - startParen - 1);
        var args = parse_arguments(argsString);
        if (array_length(args) >= 3) {
            var actionName = string_trim(args[0]);
            var actionCommand = string_trim(args[1]);
            var actionParamsString = string_trim(args[2]);
            
            // Remove surrounding brackets if present
            if (string_char_at(actionParamsString, 1) == "[" && string_char_at(actionParamsString, string_length(actionParamsString)) == "]") {
                actionParamsString = string_copy(actionParamsString, 2, string_length(actionParamsString) - 2);
            }
            
            var actionParams;
            if (actionParamsString == "") {
                actionParams = [];
            } else {
                try {
                    actionParams = json_parse(actionParamsString);
                } catch(e) {
                    handleDebugMessage("Error parsing action parameters: " + string(e), true);
                    return;
                }
            }
            scr_add_action(actionName, actionCommand, actionParams);
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
    var encodedParams = ds_map_find_value(actionEntry, "parameters");
    parameters = decode_action_parameters(encodedParams);
    
    handleDebugMessage("Executing action: " + actionName, true);
    handleDebugMessage("Command: " + commandName, true);
    handleDebugMessage("Decoded Parameters: " + json_stringify(parameters), true);
    
    var scriptName = "scr_" + commandName;
    if (script_exists(asset_get_index(scriptName))) {
        if (is_array(parameters) && array_length(parameters) > 0) {
            script_execute_ext(asset_get_index(scriptName), parameters);
        } else {
            script_execute(asset_get_index(scriptName));
        }
    } else {
        handleDebugMessage("Script not found for command: " + commandName, true);
    }
    return;
} else {
    handleDebugMessage("Action '" + actionName + "' not found.", true);
    return;
}
    } else if (openParenIndex > 0 && closeParenIndex > openParenIndex) {
        commandName = string_trim(string_copy(command, 1, openParenIndex - 1));
        var paramString = string_copy(command, openParenIndex + 1, closeParenIndex - openParenIndex - 1);
        parameters = parse_arguments(paramString);
    } else {
        commandName = command;
    }
    
    if (commandName == "chat_bubble") {
        if (is_array(parameters) && array_length(parameters) >= 2) {
            var text = parameters[0];
            var owner = parameters[1];
            var choices = (array_length(parameters) > 2) ? parameters[2] : [];
            scr_chat_bubble(text, owner, choices);
        } else if (is_string(parameters)) {
            var parsed = json_parse(parameters);
            if (is_array(parsed) && array_length(parsed) >= 2) {
                var text = parsed[0];
                var owner = parsed[1];
                var choices = (array_length(parsed) > 2) ? parsed[2] : [];
                scr_chat_bubble(text, owner, choices);
            } else {
                handleDebugMessage("Error: Invalid parameters for chat_bubble command", true);
            }
        } else {
            handleDebugMessage("Error: Invalid parameters for chat_bubble command", true);
        }
        return;
    }
    
    var scriptName = "scr_" + commandName;
    
    if (script_exists(asset_get_index(scriptName))) {
        if (is_array(parameters)) {
            script_execute_ext(asset_get_index(scriptName), parameters);
        } else {
            script_execute(asset_get_index(scriptName), parameters);
        }
    } else {
        handleDebugMessage("Script not found for command: " + commandName, true);
    }
}