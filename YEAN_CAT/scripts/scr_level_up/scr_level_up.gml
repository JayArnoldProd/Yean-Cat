/// scr_level_up(count)
function scr_level_up(Count) {
    var realCount = real(Count); // Convert to real to ensure it's a numeric value

    var instance = instance_create_layer(x, y, "uii", obj_level_up);
    if (instance != noone) { // Check if the instance was created successfully
        instance.levelup_goal = realCount;
        handleDebugMessage("Level up initiated with goal: " + string(realCount), true);
    } else {
        handleDebugMessage("Failed to create level up instance.", true);
    }
}
