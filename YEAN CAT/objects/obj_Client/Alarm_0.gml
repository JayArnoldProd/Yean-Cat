// Alarm[0] Event
var t_buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(t_buffer, buffer_seek_start, 0);
buffer_write(t_buffer, buffer_u8, global.IDENTIFIER_UNIQUE_ID);
buffer_write(t_buffer, buffer_string, global.clientUniqueID);
network_send_packet(global.client_socket, t_buffer, buffer_tell(t_buffer));
buffer_delete(t_buffer);
global.uniqueIDSent = true; // Ensure we don't resend the unique ID
show_debug_message("[Client] Unique ID sent after delay: " + global.clientUniqueID);
