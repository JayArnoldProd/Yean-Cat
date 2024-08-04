/// @function scr_add_action_group(groupName, actionList)
/// @param {string} groupName - The name of the action group
/// @param {array} actionList - An array of action names to be executed in order
function scr_add_action_group(groupName, actions) {
    ds_map_set(global.actionGroups, groupName, actions);
    handleDebugMessage("Action group '" + groupName + "' added successfully.", true);
    save_action_groups();
}