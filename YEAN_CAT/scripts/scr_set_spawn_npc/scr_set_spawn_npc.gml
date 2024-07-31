/// @function scr_set_spawn_npc(name, x, y, optional_object_reference, optional_action_trigger)
/// @param {string} name - The name of the NPC
/// @param {real} [x=0] - The x coordinate (relative to the reference object)
/// @param {real} [y=0] - The y coordinate (relative to the reference object)
/// @param {string} [optional_object_reference="Player"] - The reference object for positioning
/// @param {string} [optional_action_trigger=""] - The action or action group to trigger when interacting
function scr_set_spawn_npc(name, x = 0, y = 0, optional_object_reference = "Player", optional_action_trigger = "") {
    // Create or update the NPC spawn data
    var spawn_data = {
        name: name,
        x: x,
        y: y,
        reference: optional_object_reference,
        action_trigger: optional_action_trigger
    };
    
    // Store this data in a global NPC spawn list
    if (!variable_global_exists("npc_spawn_list")) {
        global.npc_spawn_list = ds_list_create();
    }
    
    // Check if an NPC with this name already exists in the spawn list
    var existing_index = -1;
    for (var i = 0; i < ds_list_size(global.npc_spawn_list); i++) {
        if (global.npc_spawn_list[| i].name == name) {
            existing_index = i;
            break;
        }
    }
    
    if (existing_index != -1) {
        // Update existing spawn data
        global.npc_spawn_list[| existing_index] = spawn_data;
    } else {
        // Add new spawn data
        ds_list_add(global.npc_spawn_list, spawn_data);
    }
}