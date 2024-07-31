function add_object_reference(name, object) {
    if (instance_exists(object)) {
        var obj_index = object.object_index;
        
        if (obj_index == obj_boss) {
            var formatted_name = format_boss_name(name);
            var boss_number = instance_number(obj_boss);
            var unique_name = formatted_name + string(boss_number);
            
            // Combine the formatted name and Boss_ reference
            global.object_references[? unique_name] = object;
            
            return unique_name;
        } else {
            global.object_references[? name] = object;
            return name;
        }
    }
    return "";
}