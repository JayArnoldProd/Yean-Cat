function scr_execute_action(actionName) {
    if (ds_map_exists(global.actionDetails, actionName)) {
        var actionData = ds_map_find_value(global.actionDetails, actionName);
        if (!ds_map_exists(actionData, "command") || !ds_map_exists(actionData, "parameters")) {
            handleDebugMessage("Error: Invalid action format for '" + actionName + "'.", true);
            return;
        }
        
        var command = ds_map_find_value(actionData, "command");
        var params = ds_map_find_value(actionData, "parameters");
        
        // Construct the command string and execute it
        var commandString = command + "(";
        for (var i = 0; i < array_length(params); i++) {
            if (is_string(params[i])) {
                commandString += "\"" + string_replace_all(params[i], "\"", "\\\"") + "\"";
            } else {
                commandString += string(params[i]);
            }
            if (i < array_length(params) - 1) {
                commandString += ", ";
            }
        }
        commandString += ")";
        
        handleDebugMessage("Executing action: " + commandString, true);
        execute_command(commandString);
    } else {
        handleDebugMessage("Action '" + actionName + "' not found.", true);
    }
}

///// @function scr_execute_action(name)
///// @description Executes a saved action by name
//function scr_execute_action(actionName) {
//    // Retrieve the action from the global map
//    if (ds_map_exists(global.actionDetails, actionName)) {
//        var actionData = ds_map_find_value(global.actionDetails, actionName);

//        if (!ds_map_exists(actionData, "command") || !ds_map_exists(actionData, "parameters")) {
//            handleDebugMessage("Error: Invalid action format for '" + actionName + "'.", true);
//            return;
//        }

//        var command = ds_map_find_value(actionData, "command");
//        var params = ds_map_find_value(actionData, "parameters");

//        // Construct the command string and execute it
//        var commandString = command + "(";
//        for (var i = 0; i < array_length(params); i++) {
//            commandString += string(params[i]);
//            if (i < array_length(params) - 1) {
//                commandString += ", ";
//            }
//        }
//        commandString += ")";

//        handleDebugMessage("Executing action: " + commandString, true);
//        execute_command(commandString);
//    } else {
//        handleDebugMessage("Action '" + actionName + "' not found.", true);
//    }
//}












