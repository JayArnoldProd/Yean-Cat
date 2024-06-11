// Async Networking Event of obj_Server

var n_id = ds_map_find_value(async_load, "id");
if (n_id == server_socket) {
    var type = ds_map_find_value(async_load, "type");
    switch (type) {
        case network_type_connect:
            var sock = ds_map_find_value(async_load, "socket");
            if (connectedClients >= global.maxClients) {
                handleDebugMessage("[Server] Max client limit reached. Rejecting new connection for Socket " + string(sock), true);
                network_destroy_socket(sock);
                break;
            }
            handleDebugMessage("[Server] Attempting connection for Socket " + string(sock), true);
            if (!ds_map_exists(global.socketToUniqueID, string(sock))) {
                ds_list_add(socketlist, sock);
                connectedClients++;
                handleDebugMessage("[Server] Client(Socket " + string(sock) + ") connected. Total clients: " + string(connectedClients), false);
                // Send a welcome packet to confirm connection
                var buffer = buffer_create(256, buffer_grow, 1);
                buffer_seek(buffer, buffer_seek_start, 0);
                buffer_write(buffer, buffer_u8, global.IDENTIFIER_TEST_MESSAGE);
                buffer_write(buffer, buffer_string, "Welcome!");
                network_send_packet(sock, buffer, buffer_tell(buffer));
                buffer_delete(buffer);
            } else {
                handleDebugMessage("[Server] Repeated connection attempt ignored for Socket " + string(sock), true);
            }
            break;

        case network_type_disconnect:
            var sock = ds_map_find_value(async_load, "socket");
            var index = ds_list_find_index(socketlist, sock);
            if (index != -1) {
                var uniqueID = "Unknown";
                if (ds_map_exists(global.socketToUniqueID, string(sock))) {
                    uniqueID = ds_map_find_value(global.socketToUniqueID, string(sock));
                }
                ds_list_delete(socketlist, index);
                ds_map_delete(global.socketToUniqueID, string(sock));
                connectedClients--;
                var reason = ds_map_exists(async_load, "reason") ? async_load[? "reason"] : "No reason provided";
                handleDebugMessage("[Server] Client(Unique ID: " + uniqueID + ") disconnected. Socket: " + string(sock) + ". Reason: " + reason, false);
            } else {
                var reason = ds_map_exists(async_load, "reason") ? async_load[? "reason"] : "No reason provided";
                handleDebugMessage("[Server] Disconnect attempt for unknown Socket: " + string(sock) + ". Reason: " + reason, true);
            }
            break;
    }
}
