/// @function handleDebugMessage(msg, isDebug)
/// @param {string} msg - The message to log
/// @param {bool} isDebug - True if this is a debug message, false for essential messages
function handleDebugMessage(msg, isDebug) {
    // Check and format message content safely
    var safeMsg = is_string(msg) ? msg : "Undefined message content";

    // Safely fetch and format date and time
    var currentDate = date_current_datetime();
    var formattedDate = date_date_string(currentDate);
    var formattedTime = date_time_string(currentDate);

    var logMsg = formattedDate + " " + formattedTime + ": " + safeMsg + "\n";

    // Always send the message to the GMS2 IDE console
    show_debug_message("Date: " + formattedDate + " Time: " + formattedTime + " Msg: " + safeMsg);

    // Paths for log files
    var sessionLogFilePath = working_directory + global.sessionLogFileName;
    var masterLogFilePath = working_directory + global.masterLogFileName;

    // Append to the session-specific log file
    if (file_exists(sessionLogFilePath)) {
        var sessionLogFile = file_text_open_append(sessionLogFilePath);
        file_text_write_string(sessionLogFile, logMsg);
        file_text_close(sessionLogFile);
    } else {
        var sessionLogFile = file_text_open_write(sessionLogFilePath);
        file_text_write_string(sessionLogFile, logMsg);
        file_text_close(sessionLogFile);
    }

    // Always append to the master log file
    if (file_exists(masterLogFilePath)) {
        var masterLogFile = file_text_open_append(masterLogFilePath);
        file_text_write_string(masterLogFile, logMsg);
        file_text_close(masterLogFile);
    } else {
        var masterLogFile = file_text_open_write(masterLogFilePath);
        file_text_write_string(masterLogFile, logMsg);
        file_text_close(masterLogFile);
    }

    // Existing code to handle in-game debug message display
    if (!isDebug || global.showDebugMessages) {
        if (ds_list_size(debugMessages) >= global.maximumMessages) {
            ds_list_delete(debugMessages, 0); // Keep the latest messages
        }
        ds_list_add(debugMessages, safeMsg);
    }
}
