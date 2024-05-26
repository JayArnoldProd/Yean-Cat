// Async Networking Event Handling for Client

/// Revised Async Networking Event
var type = ds_map_find_value(async_load, "type");
var n_id = ds_map_find_value(async_load, "id");

if (n_id == global.client_socket) {
    switch (type) {
        case network_type_connect:
            show_debug_message("[Client] Connected to server.");
            global.isConnected = true;
            break;
        case network_type_disconnect:
            show_debug_message("[Client] Disconnected from server.");
            global.isConnected = false;
            break;
        case network_type_data:
            if (ds_map_exists(async_load, "buffer")) {
                var buffer = ds_map_find_value(async_load, "buffer");
                if (buffer != undefined) {
                    buffer_seek(buffer, buffer_seek_start, 0);
                    var identifier = buffer_read(buffer, buffer_u8);
                    handleNetworkData(identifier, buffer);
                } else {
                    show_debug_message("ERROR: Buffer not found in data event.");
                }
            } else {
                show_debug_message("ERROR: 'buffer' key does not exist in the async_load map.");
            }
            break;
    }
} else {
    show_debug_message("ERROR: Invalid socket ID reference in async event.");
}


//// Async Networking Event of obj_Client

//var type = ds_map_find_value(async_load, "type");
//var n_id = ds_map_find_value(async_load, "id");

//if (n_id == global.client_socket) {
//    switch (type) {
//        case network_type_data:
//            var buffer = ds_map_find_value(async_load, "buffer");
//            buffer_seek(buffer, buffer_seek_start, 0);
//            var identifier = buffer_read(buffer, buffer_u8);

//            switch (identifier) {
//                case global.IDENTIFIER_HEARTBEAT:
//                    // Handle heartbeat received from the server
//                    show_debug_message("[Client] Heartbeat received from server.");
//                    // Optionally, send back a confirmation or keep alive message
//                    break;
                
//                case global.IDENTIFIER_UNIQUE_ID:
//                    // This would be where the server confirms receipt of your unique ID
//                    // Or any other custom logic for unique ID handling
//                    var confirmationMessage = buffer_read(buffer, buffer_string);
//                    show_debug_message("[Client] Server confirmed Unique ID: " + confirmationMessage);
//                    break;
                
//                // Add more case handlers for different data types as needed
//            }
//            buffer_delete(buffer);
//            break;

//        case network_type_connect:
//            // Immediately upon connection, send the unique ID to the server
//            // This ensures server is aware of who just connected
//            var buffer = buffer_create(256, buffer_grow, 1);
//            buffer_seek(buffer, buffer_seek_start, 0);
//            buffer_write(buffer, buffer_u8, global.IDENTIFIER_UNIQUE_ID);
//            buffer_write(buffer, buffer_string, global.clientUniqueID);
//            network_send_packet(global.client_socket, buffer, buffer_tell(buffer));
//            show_debug_message("[Client] Sent unique ID to server: " + global.clientUniqueID);
//            buffer_delete(buffer);
//            break;
            
//        case network_type_disconnect:
//            // Handle disconnection logic here, if needed
//            global.isConnected = false; // Update the connection status
//            show_debug_message("[Client] Disconnected from server.");
//            break;
//    }
//}
