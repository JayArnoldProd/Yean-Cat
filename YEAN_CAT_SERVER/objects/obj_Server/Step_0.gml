// Step Event of obj_Server

// Toggle command input mode with a specific key, e.g., Enter
if (keyboard_check_pressed(ord("I"))) {
    //make sure not currently inputing text
    if (!isActive) {
        isActive = true;
        commandBuffer = "";  // Clear previous commands or texts
        keyboard_string = "";
    }
}

// Function to execute server commands
if (global.debugCommand != "") {
    function scr_execute_command(command) {
        switch (command) {
            case "toggle server":
                isServerRunning = !isServerRunning;
                handleDebugMessage("Server running state toggled: " + string(isServerRunning), false);
                break;
            case "toggle debug":
                global.showDebugMessages = !global.showDebugMessages;
                handleDebugMessage("Debug messages toggled.", false);
                break;
            case "list clients":
                handleDebugMessage("Connected clients: " + string(connectedClients), false);
                break;
            case "enable heartbeat":
                sendHeartbeat = true;
                handleDebugMessage("Heartbeat enabled.", false);
                break;
            case "disable heartbeat":
                sendHeartbeat = false;
                handleDebugMessage("Heartbeat disabled.", false);
                break;
            case "toggle log debug":
                global.logDebugMessagesToFile = !global.logDebugMessagesToFile;
                handleDebugMessage("Log debug messages to file toggled: " + string(global.logDebugMessagesToFile), false);
                break;
            case "backup log":
                var backupFilePath = working_directory + "MasterLogBackup_" + string_replace_all(string(date_current_datetime()), ":", "-") + ".txt";
                file_copy(working_directory + global.masterLogFileName, backupFilePath);
                var clearFile = file_text_open_write(working_directory + global.masterLogFileName);
                file_text_write_string(clearFile, "");
                file_text_close(clearFile);
                handleDebugMessage("Master log backed up and cleared.", false);
                break;
            default:
                handleDebugMessage("Unknown command: " + global.debugCommand, false);
                break;
        }
    }
    scr_execute_command(global.debugCommand); // Call the function with the current command
    global.debugCommand = "";  // Clear the command after executing
}

// Handle text input when isActive is true
if (isActive) {
    var char = keyboard_string;
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(commandBuffer) > 0) {
            commandBuffer = string_delete(commandBuffer, string_length(commandBuffer), 1);
        }
    } else if (char != "") {
        commandBuffer += char;
        keyboard_string = "";  // Clear the buffer after reading
    }

    // Check if Enter is pressed to process the command
    if (keyboard_check_released(vk_enter)) {
        global.debugCommand = string_trim(commandBuffer);
        commandBuffer = "";  // Clear the buffer after setting the command
        isActive = false;  // Exit command input mode
    }
}

// Reset the keyboard_string after processing to avoid repeated inputs
keyboard_string = "";

// Scroll messages with keyboard
if (keyboard_check_pressed(vk_up)) {
    scrollIndex = max(0, scrollIndex - 1);
}
if (keyboard_check_pressed(vk_down)) {
    var maxIndex = max(0, ds_list_size(debugMessages) - maxDisplayMessages);
    scrollIndex = min(scrollIndex + 1, maxIndex);
}

// Handle scrolling
if (mouse_wheel_up()) {
    scrollIndex -= global.scrollSensitivity;
    global.isScrolling = true;
} else if (mouse_wheel_down()) {
    scrollIndex += global.scrollSensitivity;
    global.isScrolling = true;
} else {
    // If not scrolling, slowly reset sensitivity and flag isScrolling as false
    global.scrollSensitivity = max(baseScrollSensitivity, global.scrollSensitivity - sensitivityDecrement);
    global.isScrolling = false;
}

// Adjust sensitivity if scrolling is continuing
if (global.isScrolling) {
    global.scrollSensitivity = min(maxScrollSensitivity, global.scrollSensitivity + sensitivityIncrement);
}

// Ensure scrollIndex does not exceed the bounds
var maxIndex = max(0, ds_list_size(debugMessages) - maxDisplayMessages);
scrollIndex = clamp(scrollIndex, 0, maxIndex);

// Reset isScrolling flag at the end of the step
if (!mouse_wheel_up() && !mouse_wheel_down()) {
    global.isScrolling = false;
}

// Ensure scrollIndex does not exceed the bounds
scrollIndex = clamp(scrollIndex, 0, max(0, ds_list_size(debugMessages) - maxDisplayMessages));

// Only process incoming data and send heartbeats if the server is running
if (isServerRunning && sendHeartbeat) {
    var currentTime = current_time; // Get current time in milliseconds
    var deltaTime = currentTime - global.lastHeartbeatTime; // Calculate delta time since last heartbeat

    // Check if it's time to send a heartbeat
    if (deltaTime >= broadcastInterval) {
        // Send heartbeat to all connected clients
        // ... Heartbeat sending logic goes here ...

        handleDebugMessage("Heartbeat sent to all clients.", true); // Use the handleDebugMessage function

        global.lastHeartbeatTime = currentTime; // Reset the last heartbeat time to the current time
    }

    //logic for processing incoming data from clients goes here
    // This might involve reading incoming packets, handling client commands, etc.
	// I do not have any such logic, you should add it for me if it is needed for our code to function properly.
}
