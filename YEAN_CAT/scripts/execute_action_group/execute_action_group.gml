function execute_action_group(actions) {
    for (var i = 0; i < array_length(actions); i++) {
        scr_execute_action(actions[i]);
    }
}