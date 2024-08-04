/// @function scr_list_actions()
function scr_list_actions() {
    if (ds_map_empty(global.actionDetails)) {
        handleDebugMessage("No actions found.", false);
        return;
    }

    var actions = ds_list_create();
    var key = ds_map_find_first(global.actionDetails);

    while (!is_undefined(key)) {
        ds_list_add(actions, key);
        key = ds_map_find_next(global.actionDetails, key);
    }

    ds_list_sort(actions, true);

    var actionsList = "Actions: ";
    var currentLine = actionsList;
    var maxLineLength = 70;

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

