/// @function handle_choice_selection(action_name)
/// @param {string} action_name The name of the action, action group, or command to execute
function handle_choice_selection(action_name) {
    // Clean up data structures before executing the action
    if (ds_exists(hover_progress, ds_type_map)) {
        ds_map_destroy(hover_progress);
    }
    if (ds_exists(hover_scale, ds_type_map)) {
        ds_map_destroy(hover_scale);
    }
    
    // Execute the action, action group, or command
    execute_command("execute_action(" + action_name + ")");
    
    // Destroy the chat bubble after selection
    instance_destroy();
}