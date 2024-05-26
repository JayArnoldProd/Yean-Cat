// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function command_requires_arguments(commandName) {
    if (ds_map_exists(global.commandDetails, commandName)) {
        var cmdData = ds_map_find_value(global.commandDetails, commandName);
        var args = ds_map_find_value(cmdData, "arg_types");
        return array_length(args) > 0 && array_length(args[0]) > 0;
    }
    return false;  // Default to no arguments required if command not found
}
