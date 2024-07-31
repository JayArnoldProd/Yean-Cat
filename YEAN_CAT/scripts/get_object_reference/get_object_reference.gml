function get_object_reference(name) {
    if (ds_map_exists(global.object_references, name)) {
        var obj = global.object_references[? name];
        return instance_exists(obj) ? obj : noone;
    }
    
    switch(name) {
        case "Player": return instance_exists(yeancat) ? yeancat : noone;
        case "Target": return instance_exists(global.currentTarget) ? global.currentTarget : (instance_exists(yeancat) ? yeancat : noone);
        case "Center": return {x: room_width/2, y: room_height/2};
		case "Boss": 
            // Return the first found boss instance
            with (obj_boss) {
                return id;
            }
            return noone;
        default: 
            // Check if the name matches any boss name
            for (var i = 0; i < array_length(master.spaceboss); i++) {
                if (master.spaceboss[i,1] == name) {
                    with (obj_boss) {
                        if (namee == name) return id;
                    }
                    break;
                }
            }
            return noone;
    }
}