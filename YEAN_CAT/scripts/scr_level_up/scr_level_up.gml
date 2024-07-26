function scr_level_up(Count) {
    if (is_array(Count) && array_length(Count) > 0) {
        Count = Count[0];
    }
    
    if (is_string(Count)) {
        // Try to parse as JSON, if it fails, use the string as is
        try {
            Count = json_parse(Count);
        } catch(e) {
            // If parsing fails, just use the string as is
        }
    }
    
    // If Count is still an array after parsing, take the first element
    if (is_array(Count) && array_length(Count) > 0) {
        Count = Count[0];
    }
    
    var realCount = real(Count);

    var instance = instance_create_layer(x, y, "uii", obj_level_up);
    if (instance != noone) {
        instance.levelup_goal = realCount;
        handleDebugMessage("Level up initiated with goal: " + string(realCount), true);
    } else {
        handleDebugMessage("Failed to create level up instance.", true);
    }
}