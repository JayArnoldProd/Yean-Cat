function handle_choice_selection(action_name) {
    // Clean up data structures before executing the action
    if (ds_exists(hover_progress, ds_type_map)) {
        ds_map_destroy(hover_progress);
    }
    if (ds_exists(hover_scale, ds_type_map)) {
        ds_map_destroy(hover_scale);
    }
    
    // Execute the action, action group, or command
    with (obj_Client) {  // Assuming obj_Client is where execute_action is defined
        scr_execute_action(action_name);
    }
    
    // Destroy the chat bubble after selection
    instance_destroy();
}