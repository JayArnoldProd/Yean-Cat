function scr_execute_action(actionName) {
    if (ds_map_exists(global.actionDetails, actionName)) {
        var encodedCommand = ds_map_find_value(global.actionDetails, actionName);
        var decodedData = json_parse(base64_decode(encodedCommand));
        
        if (is_struct(decodedData) && variable_struct_exists(decodedData, "command")) {
            var targetObj = decodedData.targetObject;
            var cmdName = decodedData.command;
            var params = decodedData.parameters;
            
            var targetInstance = get_object_reference(targetObj);
            if (targetInstance != noone) {
                with (targetInstance) {
                    var script = asset_get_index("scr_" + cmdName);
                    if (script_exists(script)) {
                        script_execute(script, params);
                    } else {
                        handleDebugMessage("Script not found: " + cmdName, true);
                    }
                }
            } else {
                handleDebugMessage("Target object not found: " + targetObj, true);
            }
        } else {
            handleDebugMessage("Invalid action data for: " + actionName, true);
        }
    } else {
        handleDebugMessage("Action '" + actionName + "' not found.", true);
    }
}