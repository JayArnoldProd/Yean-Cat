function scr_level_up(Count) {
    if (is_array(Count) && array_length(Count) > 0) {
        Count = Count[0];
    }
    
    if (is_string(Count)) {
        Count = real(string_replace_all(Count, "[", ""));
        Count = real(string_replace_all(string(Count), "]", ""));
    }
    
    var realCount = real(Count);

    var instance = instance_create_layer(x, y, "uii", obj_level_up);
    if (instance != noone) {
        instance.levelup_goal = realCount;
        handleDebugMessage("Level up initiated with goal: " + string(realCount), false);
    } else {
        handleDebugMessage("Failed to create level up instance.", false);
    }
}