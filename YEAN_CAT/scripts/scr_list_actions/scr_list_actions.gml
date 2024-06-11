/// @function scr_list_actions()
/// @description Lists all saved actions
function scr_list_actions() {
    if (ds_map_size(global.actionDetails) == 0) {
        handleDebugMessage("No actions found.", true);
        return;
    }

    var message = "Actions: ";
    var keys = ds_map_keys_to_array(global.actionDetails);

    for (var i = 0; i < array_length(keys); i++) {
        message += keys[i] + ", ";
    }

    // Remove trailing comma and space
    message = string_trim_right(message, ", ");

    handleDebugMessage(message, true);
}



