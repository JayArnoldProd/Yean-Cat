
/// Step Event for obj_level_up
if (levelup_count < levelup_goal) {
    with (master) {
        level_up();  // Assuming 'level_up' is a method that increments 'master.level'
    }
    // Update count only if the level has indeed increased
    if (master_levellast != master.level) {
        levelup_count++;
        master_levellast = master.level; // Update last known level
    }
} else {
    instance_destroy(); // Destroy the object once the goal is reached
}