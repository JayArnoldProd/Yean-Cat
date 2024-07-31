function execute_decoded_command(commandName, parameters) {
    if (commandName == "chat_bubble") {
        if (is_array(parameters) && array_length(parameters) >= 2) {
            var text = parameters[0];
            var owner = parameters[1];
            var choices2 = (array_length(parameters) > 2) ? parameters[2] : [];
            scr_chat_bubble(text, owner, choices2);
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