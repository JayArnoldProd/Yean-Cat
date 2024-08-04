function save_action_groups() {
    var file = file_text_open_write("ActionGroups.txt");
    var key = ds_map_find_first(global.actionGroups);
    
    while (!is_undefined(key)) {
        var groupActions = ds_map_find_value(global.actionGroups, key);
        var line = key + "|||" + json_stringify(groupActions);
        file_text_write_string(file, line);
        file_text_writeln(file);
        key = ds_map_find_next(global.actionGroups, key);
    }
    
    file_text_close(file);
    handleDebugMessage("Action groups saved successfully to ActionGroups.txt.", true);
}
