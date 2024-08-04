function execute_command(command) {
    handleDebugMessage("Raw command: " + command, true);
    
    command = string_replace_all(command, "\r", "");
    command = string_trim(string_replace_all(command, "\n", " "));
    command = string_replace_all(command, global.intentionalLineBreak, "");
    
    handleDebugMessage("Cleaned command: " + command, true);

    if (command == "") {
        handleDebugMessage("Error: Empty command", true);
        return;
    }
    
    var dotIndex = string_pos(".", command);
    var targetObject = "yeancat";  // Default to "yeancat"
    var openParenIndex = string_pos("(", command);
    var closeParenIndex = string_last_pos(")", command);
    var commandName = "";
    var parameters = [];
    
    if (dotIndex > 0 && (openParenIndex == 0 || dotIndex < openParenIndex)) {
    targetObject = string_copy(command, 1, dotIndex - 1);
    command = string_delete(command, 1, dotIndex);
    openParenIndex = string_pos("(", command);
    closeParenIndex = string_last_pos(")", command);
    
    if (targetObject == "Player") {
        global.currentTarget = yeancat;
    } else if (targetObject == "Center") {
        global.currentTarget = noone;
    } else if (ds_map_exists(global.object_references, targetObject)) {
        global.currentTarget = global.object_references[? targetObject];
    } else {
        // If still not found, try to get by asset index as before
        var asset = asset_get_index(targetObject);
        if (asset != -1) {
            global.currentTarget = instance_find(asset, 0);
        } else {
            global.currentTarget = noone;
        }
    }
} else {
    // If no dot notation is used, default to Center for camera_target command
    if (string_pos("camera_target", command) == 1) {
        global.currentTarget = noone;
    }
}
    
    if (string_pos("add_action(", command) == 1) {
        handleDebugMessage("Detected add_action command", true);
        
        if (openParenIndex > 0 && closeParenIndex > openParenIndex) {
            var argsString = string_copy(command, openParenIndex + 1, closeParenIndex - openParenIndex - 1);
            handleDebugMessage("Arguments string: " + argsString, true);
            
            var args = parse_arguments(argsString);
            handleDebugMessage("Parsed arguments: " + json_stringify(args), true);
            
            if (array_length(args) >= 3) {
                var actionName = string_trim_lr(args[0]);
                var fullActionCommand = string_trim_lr(args[1]);
                var actionParams = string_trim_lr(args[2]);
                
                handleDebugMessage("Action Name: " + actionName, true);
                handleDebugMessage("Full Action Command: " + fullActionCommand, true);
                handleDebugMessage("Action Params: " + actionParams, true);
                
                var actionDotIndex = string_pos(".", fullActionCommand);
                var actionTargetObject = "yeancat";
                var actionCommand = fullActionCommand;
                if (actionDotIndex > 0) {
                    actionTargetObject = string_copy(fullActionCommand, 1, actionDotIndex - 1);
                    actionCommand = string_delete(fullActionCommand, 1, actionDotIndex);
                }
                
                handleDebugMessage("Target Object: " + actionTargetObject, true);
                handleDebugMessage("Action Command: " + actionCommand, true);
                
                scr_add_action(actionName, actionCommand, actionParams, actionTargetObject);
            } else {
                handleDebugMessage("Invalid number of arguments for add_action", true);
            }
        } else {
            handleDebugMessage("Invalid add_action command format", true);
        }
        return;
    } else if (string_pos("execute_action(", command) == 1) {
    var actionName = string_replace(command, "execute_action(", "");
    actionName = string_replace(actionName, ")", "");
    actionName = string_trim(actionName);
    actionName = string_replace_all(actionName, "\"", ""); // Remove quotes
    
    handleDebugMessage("Attempting to execute action: " + actionName, true);
    handleDebugMessage("Action exists in actionDetails: " + string(ds_map_exists(global.actionDetails, actionName)), true);
    handleDebugMessage("Action exists in actionGroups: " + string(ds_map_exists(global.actionGroups, actionName)), true);
    handleDebugMessage("Action exists in actionConditions: " + string(ds_map_exists(global.actionConditions, actionName)), true);
    
    if (ds_map_exists(global.actionConditions, actionName)) {
        var actionConditionData = ds_map_find_value(global.actionConditions, actionName);
        handleDebugMessage("Executing action condition: " + actionName + " with data: " + json_stringify(actionConditionData), true);
        execute_action_condition(actionConditionData);
    } else if (ds_map_exists(global.actionDetails, actionName)) {
        var encodedCommand = ds_map_find_value(global.actionDetails, actionName);
        var decodedData = json_parse(base64_decode(encodedCommand));
        
        handleDebugMessage("Executing action: " + actionName, true);
        execute_single_action(decodedData);
    } else if (ds_map_exists(global.actionGroups, actionName)) {
        var groupActions = ds_map_find_value(global.actionGroups, actionName);
        handleDebugMessage("Executing action group: " + actionName, true);
        for (var i = 0; i < array_length(groupActions); i++) {
            execute_command("execute_action(" + groupActions[i] + ")");
        }
    } else {
        handleDebugMessage("Action/group/condition '" + actionName + "' not found.", true);
        handleDebugMessage("Contents of global.actionConditions:", true);
        var key = ds_map_find_first(global.actionConditions);
        while (!is_undefined(key)) {
            handleDebugMessage(key + ": " + json_stringify(ds_map_find_value(global.actionConditions, key)), true);
            key = ds_map_find_next(global.actionConditions, key);
        }
    }
    return;
} else if (openParenIndex > 0 && closeParenIndex > openParenIndex) {
        commandName = string_trim_lr(string_copy(command, 1, openParenIndex - 1));
        var paramString = string_copy(command, openParenIndex + 1, closeParenIndex - openParenIndex - 1);
        parameters = parse_arguments(paramString);
    } else {
        commandName = command;
    }
    
    handleDebugMessage("Command Name: " + commandName, true);
    handleDebugMessage("Target Object: " + targetObject, true);
    handleDebugMessage("Parameters: " + json_stringify(parameters), true);
    
	if (commandName == "add_action_group") {
        if (array_length(parameters) == 2) {
            var groupName = string_trim_lr(parameters[0]);
            var actionList = json_parse(parameters[1]);
            scr_add_action_group(groupName, actionList);
        } else {
            handleDebugMessage("Invalid number of arguments for add_action_group", true);
        }
        return;
    }
	
if (commandName == "spawn_boss") {
    if (array_length(parameters) == 1 && is_array(parameters[0])) {
        scr_spawn_boss(parameters[0]);
    } else {
        handleDebugMessage("Invalid parameters for spawn_boss command. Expected an array.", true);
    }
}

    if (commandName == "chat_bubble") {
    if (array_length(parameters) >= 1) {
        var text = is_string(parameters[0]) ? json_parse(parameters[0]) : parameters[0];
        var choices = (array_length(parameters) > 1) ? (is_string(parameters[1]) ? json_parse(parameters[1]) : parameters[1]) : [];
        scr_chat_bubble(text, targetObject, choices);
    } else {
        handleDebugMessage("Invalid number of arguments for chat_bubble", true);
    }
    return;
}
    
    var scriptName = "scr_" + commandName;
    if (script_exists(asset_get_index(scriptName))) {
        if (is_array(parameters) && array_length(parameters) > 0) {
            // If there's only one parameter and it's a string representation of an array, parse it
            if (array_length(parameters) == 1 && string_char_at(parameters[0], 1) == "[") {
                parameters = json_parse(parameters[0]);
            }
            script_execute_ext(asset_get_index(scriptName), parameters);
        } else {
            script_execute(asset_get_index(scriptName));
        }
    } else {
        handleDebugMessage("Script not found for command: " + commandName, true);
    }
}