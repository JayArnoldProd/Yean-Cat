/// Destroy Event of obj_chat_bubble
if (ds_exists(hover_progress, ds_type_map)) {
    ds_map_destroy(hover_progress);
}
if (ds_exists(hover_scale, ds_type_map)) {
    ds_map_destroy(hover_scale);
}