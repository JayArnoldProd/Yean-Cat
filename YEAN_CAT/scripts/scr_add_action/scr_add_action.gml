function scr_add_action(actionName, fullActionCommand, actionParams) {
    var parts = string_split(fullActionCommand, ".");
    var targetObject, actionCommand;
    
    if (array_length(parts) == 2) {
        targetObject = parts[0];
        actionCommand = parts[1];
    } else {
        targetObject = "Target";  // Default to Target if no object specified
        actionCommand = fullActionCommand;
    }

    var actionData = {
        type: "single_action",
        targetObject: targetObject,
        command: actionCommand,
        parameters: json_parse(actionParams)
    };

    var encodedCommand = base64_encode(json_stringify(actionData));

    ds_map_set(global.actionDetails, actionName, encodedCommand);

    handleDebugMessage("Action '" + actionName + "' added/updated successfully.", false);
    
    save_actions();
}