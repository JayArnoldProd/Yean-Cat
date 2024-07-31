
/// @function scr_list_objects()
function scr_list_objects() {
    var obj_list = "Available object references:\n";
    
    // List standard objects
    var standard_objects = ["Player", "Target", "Center"];
    for (var i = 0; i < array_length(standard_objects); i++) {
        var obj = get_object_reference(standard_objects[i]);
        if (obj != noone) {
            obj_list += standard_objects[i] + ": " + (instance_exists(obj) ? object_get_name(obj.object_index) : "Instance") + "\n";
        } else {
            obj_list += standard_objects[i] + ": Not found\n";
        }
    }
    
    // List all bosses and NPCs
    obj_list += "\nBosses and NPCs:\n";
    var keys = ds_map_keys_to_array(global.object_references);
    for (var i = 0; i < array_length(keys); i++) {
        var key = keys[i];
        var obj = global.object_references[? key];
        if (instance_exists(obj)) {
            if (obj.object_index == obj_boss) {
                var display_name = string_replace(key, "Boss_", "");
                obj_list += display_name + ": " + object_get_name(obj.object_index) + " (Boss) at (" + string(obj.x) + ", " + string(obj.y) + ")\n";
            } else if (obj.object_index == obj_npc) {
                var display_name = string_replace(key, "NPC_", "");
                obj_list += display_name + ": " + object_get_name(obj.object_index) + " (NPC) at (" + string(obj.x) + ", " + string(obj.y) + ")\n";
            }
        }
    }
    
    handleDebugMessage(obj_list, false);
    return obj_list;
}