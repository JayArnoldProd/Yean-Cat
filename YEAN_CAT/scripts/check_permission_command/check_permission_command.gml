// Function to check if a player has permission to execute a command
function check_permission_command(commandName) {
    show_debug_message("Checking permission for command: '" + commandName + "'");
    if (ds_map_exists(global.commandDetails, commandName) || ds_map_exists(global.commandDetails, commandName + "(")) {
        var commandInfo = ds_map_find_value(global.commandDetails, commandName) ?? ds_map_find_value(global.commandDetails, commandName + "(");
        var requiredLevel = commandInfo[? "requiredLevel"];
        var hasPermission = (master.permissions >= requiredLevel);
        show_debug_message("Required level: " + string(requiredLevel) + ", Player level: " + string(master.permissions) + ", Has permission: " + string(hasPermission));
        return hasPermission;
    } else {
        show_debug_message("Command '" + commandName + "' not found in global.commandDetails");
        return false;
    }
}