/// @function debug_action_details()
/// @description Prints the contents of `global.actionDetails` for debugging purposes
function debug_action_details() {
    if (ds_map_size(global.actionDetails) == 0) {
        handleDebugMessage("No actions found in `global.actionDetails`.", true);
        return;
    }

    var actionKey = ds_map_find_first(global.actionDetails);

    while (actionKey != undefined) {
        var actionData = ds_map_find_value(global.actionDetails, actionKey);
        var command = actionData[? "command"];
        var parameters = string(actionData[? "parameters"]);
        
        var debugMessage = "Action '" + actionKey + "': Command = " + command + ", Parameters = " + parameters;
        handleDebugMessage(debugMessage, true);

        actionKey = ds_map_find_next(global.actionDetails, actionKey);
    }
}
