/// @function scr_list_action_conditions()
function scr_list_action_conditions() {
    if (ds_map_empty(global.actionConditions)) {
        handleDebugMessage("No action conditions found.", false);
        return;
    }

    var conditionsList = "Action Conditions: ";
    var currentLine = conditionsList;
    var maxLineLength = 70;

    var key = ds_map_find_first(global.actionConditions);
    while (!is_undefined(key)) {
        var condition = key + (ds_map_find_next(global.actionConditions, key) != undefined ? ", " : "");

        if (string_length(currentLine) + string_length(condition) > maxLineLength) {
            handleDebugMessage(currentLine, false);
            currentLine = condition;
        } else {
            currentLine += condition;
        }

        key = ds_map_find_next(global.actionConditions, key);
    }

    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, false);
    }
}