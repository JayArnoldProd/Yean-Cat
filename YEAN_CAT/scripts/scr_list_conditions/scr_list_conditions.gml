function scr_list_conditions() {
    if (ds_map_empty(global.conditions)) {
        handleDebugMessage("No conditions defined.", false);
        return;
    }

    var conditionsList = "Conditions: ";
    var currentLine = conditionsList;
    var maxLineLength = 70;

    var key = ds_map_find_first(global.conditions);
    while (!is_undefined(key)) {
        var condition = key + (ds_map_find_next(global.conditions, key) != undefined ? ", " : "");

        if (string_length(currentLine) + string_length(condition) > maxLineLength) {
            handleDebugMessage(currentLine, false);
            currentLine = condition;
        } else {
            currentLine += condition;
        }

        key = ds_map_find_next(global.conditions, key);
    }

    if (string_length(currentLine) > 0) {
        handleDebugMessage(currentLine, false);
    }
}
