// Function to check if a player has permission to execute a command
function check_permission_command(commandName) {
    // Check if the commandName is in the details map
    if (ds_map_exists(global.commandDetails, commandName)) {
        var commandInfo = ds_map_find_value(global.commandDetails, commandName);
        var requiredLevel = commandInfo[? "requiredLevel"];
        
        // Now check the player's permission level against the required level
        if (master.permissions >= requiredLevel) {
            return true;  // Permission granted
        } else {
            // Optionally, you could include a debug message here if permission is denied
            return false;  // Permission denied
        }
    } else {
        // Command not recognized or not in the map
        return false;
    }
}


