// Function to log a message
function logChatMessage(message, isActive) {
    var words = string_count(" ", message) + 1;  // Counts words by counting spaces and adding one for the last word
    var timestamp = date_current_datetime();
    var entry = [timestamp, words, isActive];  // Ensure this structure includes the isActive flag
    ds_list_add(global.chatLogs, entry);
}
