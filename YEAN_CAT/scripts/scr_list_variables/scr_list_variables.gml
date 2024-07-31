/// @function scr_list_variables()
/// @description Lists the names of all modifiable variables
function scr_list_variables() {
    if (!ds_exists(global.variableDetails, ds_type_map)) {
        handleDebugMessage("Variable details not initialized.", true);
        return;
    }

    var key = ds_map_find_first(global.variableDetails);
    var variablesList = "Variables: ";
    var currentLine = variablesList;
    var maxLineLength = 70; // Maximum characters per line

    while (key != undefined) {
        var variableEntry = ds_map_find_value(global.variableDetails, key);
        var displayName = ds_map_find_value(variableEntry, "displayName");

        // Add the variable to the list
        var variable = displayName + (ds_map_find_next(global.variableDetails, key) != undefined ? ", " : "");

        // Check if adding this variable would exceed the line length
        if (string_length(currentLine) + string_length(variable) > maxLineLength) {
            handleDebugMessage(currentLine, false); // Send the current line
            currentLine = variable; // Start a new line with the current variable
        } else {
            currentLine += variable; // Add the variable to the current line
        }

        key = ds_map_find_next(global.variableDetails, key);
    }

    // Send the final line, if it exists
    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, false); // Send the final line
    }
}

