function scr_camera_target(offset_x = 0, offset_y = 0) {
    with (obj_camera) {
        if (global.currentTarget == noone) {
            // Center case
            target_object = noone;
            desired_x = room_width / 2;
            desired_y = room_height / 2;
        } else if (instance_exists(global.currentTarget)) {
            target_object = global.currentTarget;
            desired_x = target_object.x;
            desired_y = target_object.y;
        } else {
            handleDebugMessage("Invalid camera target specified", true);
            return;
        }
        
        target_offset_x = offset_x;
        target_offset_y = offset_y;
    }
    
    var target_name = (global.currentTarget == noone) ? "room center" : 
        (ds_map_exists(global.object_references, global.currentTarget) ? 
            ds_map_find_value(global.object_references, global.currentTarget) : 
            object_get_name(global.currentTarget.object_index));
    
    handleDebugMessage("Camera target set to " + target_name + " with offset (" + string(offset_x) + ", " + string(offset_y) + ")", true);
}