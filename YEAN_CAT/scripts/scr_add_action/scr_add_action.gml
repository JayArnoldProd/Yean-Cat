function scr_add_action(argument0, argument1, argument2) {
    var name = string(argument0);
    var commandName = string(argument1);
    var parameters = argument2; // This should be an array
    
    handleDebugMessage("Adding action: " + name + ", Command: " + commandName + ", Parameters: " + string(parameters), true);

    // Ensure the action doesn't already exist
    if (ds_map_exists(global.actionDetails, name)) {
        handleDebugMessage("Action '" + name + "' already exists.", true);
        return;
    }
    
    // Ensure the command is valid and exists
    var commandDetailName = commandName + "(";
    handleDebugMessage("Checking for command: " + commandDetailName, true);
    if (!ds_map_exists(global.commandDetails, commandDetailName)) {
        handleDebugMessage("Command '" + commandName + "' does not exist.", true);
        return;
    }
    
    // Ensure parameters is an array
    if (!is_array(parameters)) {
        parameters = [parameters];
    } else if (array_length(parameters) == 1 && is_string(parameters[0])) {
        // If it's a single string that looks like an array, split it
        var paramString = string_replace_all(parameters[0], "[", "");
        paramString = string_replace_all(paramString, "]", "");
        parameters = string_split(paramString, ",");
    }
    
    // Process each parameter
    for (var i = 0; i < array_length(parameters); i++) {
        var param = parameters[i];
        // Remove quotes if present
        if (is_string(param)) {
            param = string_replace_all(param, "\"", "");
            param = string_trim(param);
            // Convert to number if it's a valid number
            if (string_digits(param) == param) {
                param = real(param);
            }
        }
        parameters[i] = param;
    }
    
    handleDebugMessage("Parameters after processing: " + string(parameters), true);
    
    // Create the action entry
    var actionEntry = ds_map_create();
    ds_map_add(actionEntry, "command", commandName);
    ds_map_add(actionEntry, "parameters", parameters);
    
    // Add the action entry to the global action details
    ds_map_add(global.actionDetails, name, actionEntry);
    
    handleDebugMessage("Action '" + name + "' added successfully.", true);
    
    // Save the action to the file
    save_actions();
}

//function scr_add_action(argument0, argument1, argument2) {
//    var name = string(argument0);
//    var commandName = string(argument1);
//    var parameters = string(argument2); // This should be a string representation of an array

//    // Ensure the action doesn't already exist
//    if (ds_map_exists(global.actionDetails, name)) {
//        handleDebugMessage("Action '" + name + "' already exists.", true);
//        return;
//    }

//    // Ensure the command is valid and exists
//    var commandDetailName = commandName + "(";
//    if (!ds_map_exists(global.commandDetails, commandDetailName)) {
//        handleDebugMessage("Command '" + commandName + "' does not exist.", true);
//        return;
//    }

//    // Convert parameters string back to an array
//    var paramString = string_copy(parameters, 2, string_length(parameters) - 2);
//    var paramArray = string_split(paramString, ",");
//    for (var i = 0; i < array_length(paramArray); i++) {
//        paramArray[i] = string_trim(paramArray[i]);
//        // Remove surrounding quotes if present
//        if (string_char_at(paramArray[i], 1) == "\"" && string_char_at(paramArray[i], string_length(paramArray[i])) == "\"") {
//            paramArray[i] = string_copy(paramArray[i], 2, string_length(paramArray[i]) - 2);
//        }
//    }

//    // Create the action entry
//    var actionEntry = ds_map_create();
//    ds_map_add(actionEntry, "command", commandName);
//    ds_map_add(actionEntry, "parameters", paramArray);

//    // Add the action entry to the global action details
//    ds_map_add(global.actionDetails, name, actionEntry);
//    handleDebugMessage("Action '" + name + "' added successfully.", true);
//}


