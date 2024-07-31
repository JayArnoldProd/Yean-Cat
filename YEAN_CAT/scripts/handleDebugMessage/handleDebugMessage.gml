/// @function handleDebugMessage(msg, isDebug)
/// @description Logs messages to the debug console and files, and manages chat display
/// @param {string} msg - The message to log
/// @param {bool} isDebug - True if this is a debug message, false for essential messages
function handleDebugMessage(msg, isDebug) {
    var safeMsg = is_string(msg) ? msg : "Undefined message content";
    // Convert vertical lines to new lines
    safeMsg = string_replace_all(safeMsg, "|", "\n");
    // Remove only carriage returns, keep new lines
    safeMsg = string_replace_all(safeMsg, "\r", "");
    
    var currentDate = date_current_datetime();
    var formattedDate = date_date_string(currentDate);
    var formattedTime = date_time_string(currentDate);
    var logMsg = formattedDate + " " + formattedTime + ": " + safeMsg + "\n";
    show_debug_message("Date: " + formattedDate + " Time: " + formattedTime + " Msg: " + safeMsg);
    
    // Log to file
    logToFile(working_directory + global.sessionLogFileName, logMsg);
    logToFile(working_directory + global.masterLogFileName, logMsg);
    
    // Always add messages to the debug messages list
	if (isDebug=true && global.logDebugMessagesToFile) || (isDebug<=0) {
    if (ds_exists(global.debugMessages, ds_type_list)) {
        if (ds_list_size(global.debugMessages) >= global.maximumMessages) {
            ds_list_delete(global.debugMessages, 0);
        }
        ds_list_add(global.debugMessages, safeMsg);
        global.lastAddedMessage = safeMsg;
    } else {
        show_debug_message("ERROR: global.debugMessages is not a valid ds_list");
    }
	}
    // Create a chat bubble for non-debug messages that don't start with "/"
    if (isDebug = -1 && string_char_at(safeMsg, 1) != "/"){
        var cleanMsg = string_remove_between(safeMsg, "[", "]");
        // Don't replace spaces here
        scr_chat_bubble(cleanMsg, "yeancat", []); // Pass an empty array for choices
    }
    
    // WPM Calculation Logic Integration
    if (!isDebug) {
        var wordCount = string_word_count(safeMsg);
        var messageDetails = [currentDate, wordCount];
        if (ds_exists(global.chatLogs, ds_type_list)) {
            ds_list_add(global.chatLogs, messageDetails);
            updateWPM();
        } else {
            show_debug_message("ERROR: global.chatLogs is not a valid ds_list");
        }
    }
}