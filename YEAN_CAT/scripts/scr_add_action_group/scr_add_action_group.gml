/// @function scr_add_action_group(groupName, actionList)
/// @param {string} groupName - The name of the action group
/// @param {array} actionList - An array of action names to be executed in order
function scr_add_action_group(groupName, actionList) {
    if (!is_string(groupName) || !is_array(actionList)) {
        handleDebugMessage("Invalid parameters for add_action_group", true);
        return;
    }

    // Create a data structure to hold the action group information
    var groupData = {
        type: "action_group",
        actions: actionList
    };

    // Encode the group data
    var encodedGroupData = base64_encode(json_stringify(groupData));

    // Store the action group
    ds_map_set(global.actionDetails, groupName, encodedGroupData);

    handleDebugMessage("Action group '" + groupName + "' added successfully.", false);
    
    // Save the updated actions (including the new action group)
    save_actions();
}