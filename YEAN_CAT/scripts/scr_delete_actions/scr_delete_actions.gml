/// @function scr_delete_actions(actionNames)
/// @param {array} actionNames - An array of action or action group names to delete
function scr_delete_actions(actionNames) {
    var deletedCount = 0;
    var notFoundCount = 0;
    
    for (var i = 0; i < array_length(actionNames); i++) {
        var actionName = string_trim(actionNames[i]);
        if (ds_map_exists(global.actionDetails, actionName)) {
            ds_map_delete(global.actionDetails, actionName);
            deletedCount++;
        } else {
            notFoundCount++;
        }
    }
    
    handleDebugMessage(string(deletedCount) + " action(s) or action group(s) deleted. " + string(notFoundCount) + " not found.", false);
    save_actions(); // Save the updated actions to file
}