function load_action_groups() {
    if (file_exists("ActionGroups.txt")) {
        var file = file_text_open_read("ActionGroups.txt");
        while (!file_text_eof(file)) {
            var line = file_text_read_string(file);
            var split = string_split(line, "|||");
            if (array_length(split) == 2) {
                var groupName = split[0];
                var groupActions = json_parse(split[1]);
                ds_map_set(global.actionGroups, groupName, groupActions);
                handleDebugMessage("Loaded action group: " + groupName, true);
            }
            file_text_readln(file);
        }
        file_text_close(file);
        handleDebugMessage("Action groups loaded successfully from ActionGroups.txt.", true);
    } else {
        handleDebugMessage("ActionGroups.txt not found. No action groups loaded.", true);
    }
}