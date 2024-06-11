/// @function scr_add_action(name, commandName, parameters)
/// @param {string} name - The name of the action
/// @param {string} commandName - The command to execute
/// @param {array} parameters - An array of parameters to be passed to the command
function scr_add_action(argument0, argument1, argument2) {
    var name = string(argument0);
    var commandName = string(argument1);
    var parameters = string(argument2); // Assume this is a string representation of an array

    // Ensure the action doesn't already exist
    if (ds_map_exists(global.actionDetails, name)) {
        handleDebugMessage("Action '" + name + "' already exists.", true);
        return;
    }

    // Ensure the command is valid and exists
    var commandDetailName = commandName + "(";
    if (!ds_map_exists(global.commandDetails, commandDetailName)) {
        handleDebugMessage("Command '" + commandName + "' does not exist.", true);
        return;
    }

    // Convert parameters string back to an array
    var paramString = string_copy(parameters, 2, string_length(parameters) - 2);
    var paramArray = string_split(paramString, ",");
    for (var i = 0; i < array_length(paramArray); i++) {
        paramArray[i] = string_trim(paramArray[i]);
    }

    // Create the action entry
    var actionEntry = ds_map_create();
    ds_map_add(actionEntry, "command", commandName);
    ds_map_add(actionEntry, "parameters", paramArray);

    // Add the action entry to the global action details
    ds_map_add(global.actionDetails, name, actionEntry);
    handleDebugMessage("Action '" + name + "' added successfully.", true);
}

