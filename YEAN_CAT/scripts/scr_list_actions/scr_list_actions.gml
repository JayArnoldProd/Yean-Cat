/// @function scr_list_actions()
/// @description Lists all saved actions (excluding action groups) with line breaks
function scr_list_actions() {
    if (ds_map_size(global.actionDetails) == 0) {
        handleDebugMessage("No actions found.", false);
        return;
    }

    var actions = ds_list_create();
    var key = ds_map_find_first(global.actionDetails);

    while (!is_undefined(key)) {
        var encodedData = ds_map_find_value(global.actionDetails, key);
        var decodedData = json_parse(base64_decode(encodedData));
        
        // Only add to the list if it's not an action group
        if (!is_struct(decodedData) || !variable_struct_exists(decodedData, "type") || decodedData.type != "action_group") {
            ds_list_add(actions, key);
        }
        
        key = ds_map_find_next(global.actionDetails, key);
    }

    if (ds_list_size(actions) == 0) {
        handleDebugMessage("No individual actions found.", false);
        ds_list_destroy(actions);
        return;
    }

    ds_list_sort(actions, true);

    var actionsList = "Actions: ";
    var currentLine = actionsList;
    var maxLineLength = 70; // Maximum characters per line

    for (var i = 0; i < ds_list_size(actions); i++) {
        var action = ds_list_find_value(actions, i) + (i < ds_list_size(actions) - 1 ? ", " : "");

        if (string_length(currentLine) + string_length(action) > maxLineLength) {
            handleDebugMessage(currentLine, false);
            currentLine = action;
        } else {
            currentLine += action;
        }
    }

    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, false);
    }

    ds_list_destroy(actions);
}