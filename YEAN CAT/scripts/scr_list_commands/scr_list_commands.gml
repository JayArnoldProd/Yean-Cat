/// @function scr_list_commands()
/// @description Lists available commands based on the client's permission level and sorts them alphabetically
function scr_list_commands() {
    if (!ds_exists(global.commandDetails, ds_type_map)) {
        handleDebugMessage("Command details not initialized.", true);
        return;
    }

    var commands = ds_list_create();
    var key = ds_map_find_first(global.commandDetails);

    // Collect all commands the client has permission to execute
    while (key != undefined) {
        var cmdEntry = ds_map_find_value(global.commandDetails, key);
        var requiredLevel = ds_map_find_value(cmdEntry, "requiredLevel");
        if (master.permissions >= requiredLevel) {
            ds_list_add(commands, key);
        }
        key = ds_map_find_next(global.commandDetails, key);
    }

    // Sort the commands alphabetically
    ds_list_sort(commands, true);

    // Format and output the commands
    var commandsList = "Commands: ";
    var currentLine = commandsList;
    var maxLineLength = 70; // Maximum characters per line

    for (var i = 0; i < ds_list_size(commands); i++) {
        var command = ds_list_find_value(commands, i) + (i < ds_list_size(commands) - 1 ? ", " : "");

        // Check if adding this command would exceed the line length
        if (string_length(currentLine) + string_length(command) > maxLineLength) {
            handleDebugMessage(currentLine, true); // Send the current line
            currentLine = command; // Start a new line with the current command
        } else {
            currentLine += command; // Add the command to the current line
        }
    }

    // Send the final line, if it exists
    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, true); // Send the final line
    }

    ds_list_destroy(commands); // Clean up the list
}
