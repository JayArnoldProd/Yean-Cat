function scr_execute_action(actionName) {
    actionName = string_trim(actionName);
    
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
            scr_execute_action(groupActions[i]);  // Recursive call to handle nested groups
        }
    } else {
        handleDebugMessage("Action/group/condition '" + actionName + "' not found.", true);
    }
}