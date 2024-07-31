/// @function scr_spawn_npc(name, appearance_id, x, y, optional_action_trigger)
/// @param {string} name - The name of the NPC
/// @param {real} appearance_id - The appearance ID of the NPC
/// @param {real} x - The x coordinate (relative to the target)
/// @param {real} y - The y coordinate (relative to the target)
/// @param {string} [optional_action_trigger=""] - The action or action group to trigger when interacting
/// @function scr_spawn_npc(name, appearance_id, x, y, optional_action_trigger)
/// @param {string} name - The name of the NPC
/// @param {real} appearance_id - The appearance ID of the NPC
/// @param {real} x - The x coordinate (relative to the target)
/// @param {real} y - The y coordinate (relative to the target)
/// @param {string} [optional_action_trigger=""] - The action or action group to trigger when interacting
function scr_spawn_npc(name, appearance_id, x, y, optional_action_trigger = "") {
    var spawn_x, spawn_y;
    var target_obj = get_object_reference("Target");
    
    if (target_obj != noone && instance_exists(target_obj)) {
        spawn_x = target_obj.x + x;
        spawn_y = target_obj.y + y;
    } else {
        spawn_x = room_width / 2 + x;
        spawn_y = room_height / 2 + y;
    }
    
    // Create the NPC
    var npc = instance_create_layer(spawn_x, spawn_y, "player", obj_npc);
    npc.name = name;
    npc.lookid = appearance_id;
    npc.action_trigger = optional_action_trigger;
    
    // Add NPC reference with a unique identifier
    var unique_id = "NPC_" + name + "_" + string(instance_number(obj_npc));
    var ref_name = add_object_reference(unique_id, npc);
    if (ref_name != "") {
        handleDebugMessage("Added NPC reference: " + ref_name + " -> " + object_get_name(npc.object_index), true);
    }
    
    handleDebugMessage("NPC '" + name + "' spawned successfully: " + string(appearance_id) + " at position (" + string(spawn_x) + ", " + string(spawn_y) + ") relative to Target", true);
    return npc;
}