/// @function scr_delete_action(actionName)
/// @param {string} actionName - The name of the action or action group to delete, or "All", "Actions", or "Groups"
function scr_delete_action(actionName) {
    actionName = string_trim(actionName);
    
    if (actionName == "All") {
        ds_map_clear(global.actionDetails);
        handleDebugMessage("All actions and action groups have been deleted.", false);
    } else if (actionName == "Actions" || actionName == "Groups") {
        var key = ds_map_find_first(global.actionDetails);
        var toDelete = ds_list_create();
        
        while (!is_undefined(key)) {
            var encodedData = ds_map_find_value(global.actionDetails, key);
            var decodedData = json_parse(base64_decode(encodedData));
            
            if ((actionName == "Actions" && !variable_struct_exists(decodedData, "type")) ||
                (actionName == "Groups" && variable_struct_exists(decodedData, "type") && decodedData.type == "action_group")) {
                ds_list_add(toDelete, key);
            }
            
            key = ds_map_find_next(global.actionDetails, key);
        }
        
        for (var i = 0; i < ds_list_size(toDelete); i++) {
            ds_map_delete(global.actionDetails, ds_list_find_value(toDelete, i));
        }
        
        ds_list_destroy(toDelete);
        handleDebugMessage("All " + actionName + " have been deleted.", false);
    } else if (ds_map_exists(global.actionDetails, actionName)) {
        ds_map_delete(global.actionDetails, actionName);
        handleDebugMessage("Action or action group '" + actionName + "' has been deleted.", false);
    } else {
        handleDebugMessage("Action or action group '" + actionName + "' not found.", true);
    }
    
    save_actions(); // Save the updated actions to file
}