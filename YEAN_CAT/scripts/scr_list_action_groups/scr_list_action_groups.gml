/// @function scr_list_action_groups()
function scr_list_action_groups() {
    if (ds_map_empty(global.actionGroups)) {
        handleDebugMessage("No action groups found.", false);
        return;
    }

    var groups = ds_list_create();
    var key = ds_map_find_first(global.actionGroups);
    while (!is_undefined(key)) {
        ds_list_add(groups, key);
        key = ds_map_find_next(global.actionGroups, key);
    }

    ds_list_sort(groups, true);

    var groupsList = "Action Groups: ";
    var currentLine = groupsList;
    var maxLineLength = 70;

    for (var i = 0; i < ds_list_size(groups); i++) {
        var group = ds_list_find_value(groups, i) + (i < ds_list_size(groups) - 1 ? ", " : "");

        if (string_length(currentLine) + string_length(group) > maxLineLength) {
            handleDebugMessage(currentLine, false);
            currentLine = group;
        } else {
            currentLine += group;
        }
    }

    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, false);
    }

    ds_list_destroy(groups);
}
