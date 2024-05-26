//function updateWPM() {
//    var currentTime = date_current_datetime(); // Assuming this returns time in seconds

//    // Ensuring global.typingSpeedCalcDuration is valid
//    if (global.typingSpeedCalcDuration == undefined || global.typingSpeedCalcDuration <= 0) {
//        global.typingSpeedCalcDuration = 5; // Default to 5 minutes if not set or set improperly
//        handleDebugMessage("global.typingSpeedCalcDuration was not set properly. Defaulting to 5 minutes.", true);
//    }
//    var cutoffTime = currentTime - (global.typingSpeedCalcDuration * 60); // Convert minutes to seconds
    
//    var totalWords = 0;
//    var firstMessageTime = -1;
//    var lastMessageTime = -1;

//    handleDebugMessage("Debug: Current Time: " + string(currentTime) + ", Cutoff Time: " + string(cutoffTime), true);

//    for (var i = ds_list_size(global.chatLogs) - 1; i >= 0; i--) {
//        var entry = global.chatLogs[| i];
//        var messageTime = entry[0];

//        if (messageTime >= cutoffTime) {
//            var wordsInMessage = string_count(" ", entry[1]) + 1; // Assuming entry[1] is the message text
//            totalWords += wordsInMessage;

//            if (firstMessageTime == -1 || messageTime < firstMessageTime) {
//                firstMessageTime = messageTime;
//            }
//            if (lastMessageTime == -1 || messageTime > lastMessageTime) {
//                lastMessageTime = messageTime;
//            }
//        }
//    }

//    if (firstMessageTime != -1 && lastMessageTime != -1 && firstMessageTime < lastMessageTime) {
//        var activeSeconds = lastMessageTime - firstMessageTime;
//        var activeMinutes = activeSeconds / 60.0;
//        master.wpm = activeMinutes > 0 ? totalWords / activeMinutes : 0;
//        handleDebugMessage("WPM Calculation - Words: " + string(totalWords) + ", Active Seconds: " + string(activeSeconds) + ", WPM: " + string(master.wpm), true);
//    } else {
//        master.wpm = 0;
//        handleDebugMessage("No active interval detected or no messages within the interval.", true);
//    }
//}



//can you make it functinoal like this one but have the features we are trying to add?

function updateWPM() {
    var currentTime = date_current_datetime();
    var cutoffTime = date_inc_minute(currentTime, -60); // 60 minutes ago

    var totalWords = 0;
    var firstMessageTime = -1; // Initialize with -1 to denote 'undefined'
    var lastMessageTime = -1;

    for (var i = ds_list_size(global.chatLogs) - 1; i >= 0; i--) {
        var entry = global.chatLogs[| i];
        var messageTime = entry[0];

        if (messageTime >= cutoffTime) {
            totalWords += entry[1];
            if (lastMessageTime == -1 || messageTime > lastMessageTime) {
                lastMessageTime = messageTime;
            }
            if (firstMessageTime == -1 || messageTime < firstMessageTime) {
                firstMessageTime = messageTime;
            }
        } else {
            ds_list_delete(global.chatLogs, i);  // Remove entries older than 60 minutes
        }
    }

    if (firstMessageTime != -1 && lastMessageTime != -1) {
        var activeMinutes = date_minute_span(firstMessageTime, lastMessageTime);
        if (activeMinutes > 0) {
            master.wpm = totalWords / activeMinutes;
        } else {
            master.wpm = 0; // No active typing minutes, set WPM to 0
        }
    } else {
        master.wpm = 0; // No messages in the period, set WPM to 0
    }
}


//// Function to update WPM from global.chatLogs
//function updateWPM() {
//    // Get the current datetime and subtract 60 minutes
//    var currentTime = date_current_datetime();
//    var cutoffTime = date_inc_minute(currentTime, -60); // Subtracting 60 minutes to get the cutoff time

//    var totalWords = 0;
//    var totalSeconds = 0;
//    for (var i = ds_list_size(global.chatLogs) - 1; i >= 0; i--) {
//        var entry = global.chatLogs[| i];
//        if (entry[0] >= cutoffTime) {
//            totalWords += entry[1];
//            totalSeconds += (date_current_datetime() - entry[0]);
//        } else {
//            ds_list_delete(global.chatLogs, i);  // Remove entries older than 60 minutes
//        }
//    }

//    if (totalSeconds > 0) {
//        var totalMinutes = totalSeconds / 60;
//        master.wpm = totalWords / totalMinutes;
//    }
//}
