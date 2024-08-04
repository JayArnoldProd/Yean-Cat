function scr_debug_print_all_data() {
    handleDebugMessage("=== Action Conditions ===", true);
    var key = ds_map_find_first(global.actionConditions);
    while (!is_undefined(key)) {
        var value = ds_map_find_value(global.actionConditions, key);
        handleDebugMessage(key + ": " + json_stringify(value), true);
        key = ds_map_find_next(global.actionConditions, key);
    }
    
    handleDebugMessage("=== Conditions ===", true);
    key = ds_map_find_first(global.conditions);
    while (!is_undefined(key)) {
        var value = ds_map_find_value(global.conditions, key);
        handleDebugMessage(key + ": " + json_stringify(value), true);
        key = ds_map_find_next(global.conditions, key);
    }
    
    handleDebugMessage("=== Action Details ===", true);
    key = ds_map_find_first(global.actionDetails);
    while (!is_undefined(key)) {
        var value = ds_map_find_value(global.actionDetails, key);
        handleDebugMessage(key + ": " + value, true);
        key = ds_map_find_next(global.actionDetails, key);
    }
    
    handleDebugMessage("=== Action Groups ===", true);
    key = ds_map_find_first(global.actionGroups);
    while (!is_undefined(key)) {
        var value = ds_map_find_value(global.actionGroups, key);
        handleDebugMessage(key + ": " + json_stringify(value), true);
        key = ds_map_find_next(global.actionGroups, key);
    }
}