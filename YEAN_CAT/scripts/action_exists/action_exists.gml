function action_exists(actionName) {
    if (!ds_exists(global.actions, ds_type_map)) {
        show_debug_message("Error: global.actions is not a valid ds_map");
        return false;
    }
    return ds_map_exists(global.actions, actionName);
}

