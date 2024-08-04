function save_action_conditions() {
    var file = file_text_open_write("ActionConditions.txt");
    var key = ds_map_find_first(global.actionConditions);
    
    while (!is_undefined(key)) {
        var actionConditionData = ds_map_find_value(global.actionConditions, key);
        var line = key + "|||" + json_stringify(actionConditionData);
        file_text_write_string(file, line);
        file_text_writeln(file);
        key = ds_map_find_next(global.actionConditions, key);
    }
    
    file_text_close(file);
    handleDebugMessage("Action conditions saved successfully to ActionConditions.txt.", true);
}
