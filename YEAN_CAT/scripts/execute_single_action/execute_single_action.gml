function execute_single_action(actionData) {
    var cmdName = actionData.command;
    var params = actionData.parameters;
    var targetObj = actionData.targetObject;
    
    if (cmdName == "chat_bubble") {
        // Special handling for chat_bubble
        var text = is_array(params) ? params[0] : params;
        var choices = is_array(params) && array_length(params) > 1 ? params[1] : [];
        
        // Remove any extra quotes from the text
        if (is_string(text)) {
            text = string_replace_all(text, "\"", "");
        }
        
        scr_chat_bubble(text, targetObj, choices);
    } else if (cmdName == "execute_action") {
        // Directly execute the action without wrapping it
        scr_execute_action(params[0]);
    } else {
        var fullCmd = (targetObj != "yeancat" ? targetObj + "." : "") + cmdName + "(" + json_stringify(params) + ")";
        execute_command(fullCmd);
    }
}