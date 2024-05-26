/// @function handleNetworkData(identifier, buffer)
/// @description Handles different types of network data based on the identifier
/// @param {int} identifier - The type of data received
/// @param {buffer} buffer - The buffer containing the network data
function handleNetworkData(identifier, buffer) {
    switch (identifier) {
        case global.IDENTIFIER_HEARTBEAT:
            show_debug_message("Heartbeat received.");
            break;
        case global.IDENTIFIER_UNIQUE_ID:
            var uniqueID = buffer_read(buffer, buffer_string);
            global.clientUniqueID = uniqueID;
            show_debug_message("Unique ID received: " + uniqueID);
            break;
        case global.IDENTIFIER_TEST_MESSAGE:
            var message = buffer_read(buffer, buffer_string);
            show_debug_message("Message received: " + message);
            break;
        default:
            show_debug_message("Unknown data type received.");
            break;
    }
    buffer_delete(buffer);
}