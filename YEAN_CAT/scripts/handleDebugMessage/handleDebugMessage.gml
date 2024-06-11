/// @function handleDebugMessage(msg, isDebug)
/// @description Logs messages to the debug console and files, and manages chat display
/// @param {string} msg - The message to log
/// @param {bool} isDebug - True if this is a debug message, false for essential messages
function handleDebugMessage(msg, isDebug) {
    var safeMsg = is_string(msg) ? msg : "Undefined message content";
    var currentDate = date_current_datetime();
    var formattedDate = date_date_string(currentDate);
    var formattedTime = date_time_string(currentDate);
    var logMsg = formattedDate + " " + formattedTime + ": " + safeMsg + "\n";

    show_debug_message("Date: " + formattedDate + " Time: " + formattedTime + " Msg: " + safeMsg);

    // Function to handle file logging
    function logToFile(filePath, message) {
        var file;
        if (file_exists(filePath)) {
            file = file_text_open_append(filePath);
        } else {
            file = file_text_open_write(filePath);
        }
        file_text_write_string(file, message);
        file_text_close(file);
    }

    logToFile(working_directory + global.sessionLogFileName, logMsg);
    logToFile(working_directory + global.masterLogFileName, logMsg);

    // Update the chat system and possibly calculate WPM
    if (isDebug && global.showDebugMessages) {
        if (ds_list_size(global.debugMessages) >= global.maximumMessages) {
            ds_list_delete(global.debugMessages, 0); // Keep the latest messages
        }
        ds_list_add(global.debugMessages, safeMsg);

        // Before drawing chat messages, ensure messages is a valid ds_list
        if (!ds_exists(global.debugMessages, ds_type_list)) {
            show_debug_message("Error: debugMessages is not a valid ds_list.");
            return;
        }

        var totalLines = drawChatMessages(global.debugMessages, 990, 0, global.max_visible_lines, .5, false, global.c_chat2, global.c_chat1);
        if (totalLines - obj_Client.scrollIndex > global.max_visible_lines) {
            var totalLines_inRecentMessage = is_string(msg) ? countLinesInString(msg) : 1;
            obj_Client.scrollIndex = totalLines; // Scroll to bottom when new message
            obj_Client.scrollIndex -= (clamp(totalLines_inRecentMessage - 1, 0, 999999)); // Scroll back up number of lines in newest message (-1)
        }
        if (obj_Client.scrollIndex > totalLines) {
            // Clamp scroll
            obj_Client.scrollIndex = clamp(totalLines, 0, 99999);
        }
        draw_set_font(obj_Client.fnt_chat);
        global.longestmessage = updateLongestMessage(global.debugMessages);
    }

    // Create a chat bubble when no command is entered
    if (isDebug = 1) and !(string_char_at(safeMsg,0) = "/") {
        global.bubble_send_to_log = 0; // Don't send message to chat log
        var cleanMsg = string_remove_between(safeMsg, "[", "]");
        cleanMsg = string_replace_all(cleanMsg, "\n", " ");  // Remove existing line breaks
		if global.message_is_bubble=1 {
        scr_chat_bubble(cleanMsg, "yeancat");
		}
        global.bubble_send_to_log = 1; // Reset the variable
    }

    // WPM Calculation Logic Integration
    if (isDebug) {  // Assuming non-debug messages are chat messages
        var wordCount = string_word_count(safeMsg);
        var messageDetails = [currentDate, wordCount];
        ds_list_add(global.chatLogs, messageDetails);
        updateWPM();  // This would be a new function to handle WPM updates based on chatLogs
    }
}






///// @function handleDebugMessage(msg, isDebug)
///// @param {string} msg - The message to log
///// @param {bool} isDebug - True if this is a debug message, false for essential messages
//function handleDebugMessage(msg, isDebug) {
//    var safeMsg = is_string(msg) ? msg : "Undefined message content";
//    var currentDate = date_current_datetime();
//    var formattedDate = date_date_string(currentDate);
//    var formattedTime = date_time_string(currentDate);
//    var logMsg = formattedDate + " " + formattedTime + ": " + safeMsg + "\n";

//    show_debug_message("Date: " + formattedDate + " Time: " + formattedTime + " Msg: " + safeMsg);

//    // Function to handle file logging
//    function logToFile(filePath, message) {
//        var file;
//        if (file_exists(filePath)) {
//            file = file_text_open_append(filePath);
//        } else {
//            file = file_text_open_write(filePath);
//        }
//        file_text_write_string(file, message);
//        file_text_close(file);
//    }

//    logToFile(working_directory + global.sessionLogFileName, logMsg);
//    logToFile(working_directory + global.masterLogFileName, logMsg);

//    if (isDebug && global.showDebugMessages) {
//        if (ds_list_size(obj_Client.debugMessages) >= global.maximumMessages) {
//            ds_list_delete(obj_Client.debugMessages, 0); // Keep the latest messages
//        }
//        ds_list_add(debugMessages, safeMsg);
//		if show_chatbox and ds_exists(debugMessages, ds_type_list) {
//			// Before calling drawChatMessages, ensure messages is a ds_list
//if (!ds_exists(debugMessages, ds_type_list)) {
//    show_debug_message("Error: debugMessages is not a valid ds_list.");
//    return;
//}

//var totalLines = drawChatMessages(debugMessages, 990, 0, global.max_visible_lines, .5, false,global.c_chat2,global.c_chat1);
//		if (totalLines-obj_Client.scrollIndex>global.max_visible_lines) {
//			var totalLines_inRecentMessage = 1
//			if is_string(msg) {
//			totalLines_inRecentMessage = countLinesInString(msg)
//			}
//			obj_Client.scrollIndex = totalLines //scroll to bottom when new message
//            obj_Client.scrollIndex -= (clamp(totalLines_inRecentMessage-1,0,999999)); //scroll back up number of lines in newest message (-1)
//        }
//        if (obj_Client.scrollIndex>totalLines ) {
//			//clamp scroll
//            obj_Client.scrollIndex = clamp(totalLines,0,99999);
//        }
//        draw_set_font(obj_Client.fnt_chat);
//        global.longestmessage = updateLongestMessage(debugMessages);	
//		}
//    }
//}

