///Destroy Event for obj_Client
if (global.isConnected) {
    network_destroy(global.client_socket);
}


//// Clean up dynamic resources
//if (ds_exists(clien, ds_type_map)) {
//    ds_map_destroy(myDataStructure);
//}

// Optionally, inform the master object or handle game state changes
// For example, transition to a different room or update the UI
//event_perform_object(obj_Master, ev_Other, ev_user0); // Custom user event for cleanup in obj_Master
