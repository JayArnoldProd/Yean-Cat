/// @function scr_spawn_boss(boss_id, x, y, relative_to)
/// @description Spawns a boss at the specified position relative to a reference point
/// @param {real} boss_id The ID of the boss in the spaceboss array
/// @param {real} x The x coordinate relative to the reference point
/// @param {real} y The y coordinate relative to the reference point
/// @param {string} relative_to The reference point ("Center", "Player", "Target", or object name)
function scr_spawn_boss() {
    var boss_id, x_pos, y_pos;
    
    if (argument_count == 1 && is_array(argument[0])) {
        // This is from an action execution
        var params = argument[0];
        boss_id = params[0];
        x_pos = params[1];
        y_pos = params[2];
    } else if (argument_count == 3) {
        // This is from a direct command
        boss_id = argument[0];
        x_pos = argument[1];
        y_pos = argument[2];
    } else {
        handleDebugMessage("Invalid parameters for spawn_boss", true);
        return;
    }

    var relative_to = "Target"; // Default to Target if not specified
    var spawn_x, spawn_y
    
    var ref_obj = get_object_reference(relative_to);
if (ref_obj != noone && instance_exists(ref_obj)) {
    spawn_x = ref_obj.x + x_pos;
    spawn_y = ref_obj.y + y_pos;
} else {
    spawn_x = room_width / 2 + x_pos;
    spawn_y = room_height / 2 + y_pos;
}
    
    // Check if the boss_id is valid
    if (boss_id >= 0 && boss_id < array_length(master.spaceboss)) {
        // Check if the "boss" layer exists, if not create it
        var layer_id = layer_get_id("boss");
        if (layer_id == -1) {
            layer_id = layer_create(0, "boss");
        }
        
        // Find a suitable spawn position
        var attempts = 0;
        var max_attempts = 10;
        var min_distance = 200; // Minimum distance between bosses
        
        while (attempts < max_attempts) {
            var is_valid_position = true;
            
            // Check distance from other bosses
            with (obj_boss) {
                if (point_distance(x, y, spawn_x, spawn_y) < min_distance) {
                    is_valid_position = false;
                    break;
                }
            }
            
            if (is_valid_position) {
                break;
            } else {
                // Adjust spawn position randomly
                spawn_x += random_range(-100, 100);
                spawn_y += random_range(-100, 100);
                attempts++;
            }
        }
        
        var boss = instance_create_layer(spawn_x, spawn_y, layer_id, obj_boss);
        
        with (boss) {
            bossid = master.spaceboss[boss_id, 12];
            position = master.spaceboss[boss_id, 0];
            namee = master.spaceboss[boss_id, 1];
            healthh = master.spaceboss[boss_id, 2];
            maxhealth = master.spaceboss[boss_id, 2];
            resistance = master.spaceboss[boss_id, 3];
            damage = master.spaceboss[boss_id, 6];
            attackspeed = master.spaceboss[boss_id, 4];
            attacktype = master.spaceboss[boss_id, 5];
            movetype = master.spaceboss[boss_id, 7];
            sprite_index = master.spaceboss[boss_id, 9];
            bosstype = master.spaceboss[boss_id, 11];
            lookid = master.spaceboss[boss_id, 12];
            flying = 1;
            bossaltitude = 40000;
            
            event_perform(ev_other, ev_user0);
        }
		boss.min_distance = random_range(150, 250);
        
        // Add the boss reference using your existing function
        var ref_name = add_object_reference(boss.namee, boss);
        if (ref_name != "") {
            handleDebugMessage("Added boss reference: " + ref_name + " -> " + object_get_name(boss.object_index), true);
        }
        handleDebugMessage("Boss spawned successfully: " + string(boss_id) + " at position (" + string(spawn_x) + ", " + string(spawn_y) + ") relative to " + relative_to, false);
        return boss; // Return the spawned boss instance
    } else {
        handleDebugMessage("Invalid boss_id: " + string(boss_id), false);
        return noone;
    }
}