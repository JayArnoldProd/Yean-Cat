function scr_add_action(argument0, argument1, argument2) {
    var name = string(argument0);
    var commandName = string(argument1);
    var parameters = argument2;
    
    handleDebugMessage("Adding action: " + name + ", Command: " + commandName + ", Raw Parameters: " + json_stringify(parameters), true);
    
    if (ds_map_exists(global.actionDetails, name)) {
        handleDebugMessage("Action '" + name + "' already exists.", true);
        return;
    }
    
    var commandDetailName = commandName;
    var commandDetailNameWithParentheses = commandName + "(";
    handleDebugMessage("Checking for command: " + commandName, true);
    if (!ds_map_exists(global.commandDetails, commandDetailName) && !ds_map_exists(global.commandDetails, commandDetailNameWithParentheses)) {
        handleDebugMessage("Command '" + commandName + "' does not exist.", true);
        return;
    }
    
    // Use the correct command detail name for further processing
    if (ds_map_exists(global.commandDetails, commandDetailNameWithParentheses)) {
        commandDetailName = commandDetailNameWithParentheses;
    }
    
    var actionEntry = ds_map_create();
    ds_map_add(actionEntry, "command", commandName);
    
    // Ensure parameters is always an array
    if (!is_array(parameters)) {
        parameters = [parameters];
    }
    
    var encodedParams = base64_encode(json_stringify(parameters));
    ds_map_add(actionEntry, "parameters", encodedParams);
    
    ds_map_add(global.actionDetails, name, actionEntry);
    
    handleDebugMessage("Action '" + name + "' added successfully.", true);
    
    save_actions();
}

//function scr_add_action(argument0, argument1, argument2) {
//    var name = string(argument0);
//    var commandName = string(argument1);
//    var parameters = argument2;
    
//    // Convert the parameters to a JSON string
//    var param_string = json_stringify(parameters);
    
//    // Use base64 encoding to preserve all characters
//    var encoded_params = base64_encode(param_string);
    
//    handleDebugMessage("Adding action: " + name + ", Command: " + commandName + ", Raw Parameters: " + param_string, true);
//    handleDebugMessage("Encoded Parameters: " + encoded_params, true);
    
//    if (ds_map_exists(global.actionDetails, name)) {
//        handleDebugMessage("Action '" + name + "' already exists.", true);
//        return;
//    }
    
//    var commandDetailName = commandName;
//    var commandDetailNameWithParentheses = commandName + "(";
//    handleDebugMessage("Checking for command: " + commandName, true);
//    if (!ds_map_exists(global.commandDetails, commandDetailName) && !ds_map_exists(global.commandDetails, commandDetailNameWithParentheses)) {
//        handleDebugMessage("Command '" + commandName + "' does not exist.", true);
//        return;
//    }
    
//    // Use the correct command detail name for further processing
//    if (ds_map_exists(global.commandDetails, commandDetailNameWithParentheses)) {
//        commandDetailName = commandDetailNameWithParentheses;
//    }
    
//    var actionEntry = ds_map_create();
//    ds_map_add(actionEntry, "command", commandName);
//    ds_map_add(actionEntry, "parameters", encoded_params);
    
//    ds_map_add(global.actionDetails, name, actionEntry);
    
//    handleDebugMessage("Action '" + name + "' added successfully.", true);
    
//    save_actions();
//}