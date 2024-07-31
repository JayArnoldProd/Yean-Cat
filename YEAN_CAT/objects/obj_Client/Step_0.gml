/// Step Event of obj_Client

//create mouse if it doesnt exist and using keyboard and mouse
if !instance_exists(obj_Cursor) and (global.control_type!=1) { 
	instance_create_depth(mouse_x,mouse_y,-1000000,obj_Cursor);
}

// Set current font and heartbeat rate
global.heartbeatBPM = global.current_bpm;
fnt_chat = master.font_array[fnt_chat_id, 1];
global.wrapWidth = 1700; // Adjusted wrap width

//check for gamepad input
check_gamepad_input()

//randomly and probability skewed to bring shake_angle back to 0
if abs(shake_angle)>.1 {
	var invert = choose(-1,1)*(random(8)+92)/100
	shake_angle=round(invert*shake_angle*100)/100
} else {
	if shake_angle!=0 {
	shake_angle=0
	keyboard_lastkey=vk_nokey
	}
}

// Handle reconnection logic
if (!global.isConnected && global.reconnectTimer <= 0) {
    var result = network_connect(global.client_socket, global.serverAddress, global.serverPort);
    if (result >= 0) {
        global.isConnected = true;
        isServerRunning = true;
        handleDebugMessage("[Client] Successfully reconnected to server.", true);
        global.reconnectTimer = global.reconnectInterval;
    } else {
        global.reconnectTimer = global.reconnectInterval;
        isServerRunning = false;
        handleDebugMessage("[Client] Failed to reconnect to server. Will try again...", true);
    }
} else if (global.isConnected && global.reconnectTimer > 0) {
    global.reconnectTimer--;
}

// Handle incoming network events safely
if (ds_exists(async_load, ds_type_map)) {
    var type = ds_map_find_value(async_load, "type");
    var n_id = ds_map_find_value(async_load, "id");

    if (n_id == global.client_socket) {
        switch (type) {
            case network_type_data:
                var buffer = ds_map_find_value(async_load, "buffer");
                buffer_seek(buffer, buffer_seek_start, 0);
                var identifier = buffer_read(buffer, buffer_u8);

                switch (identifier) {
                    case global.IDENTIFIER_HEARTBEAT:
                        handleDebugMessage("[Client] Heartbeat received from server.", true);
                        break;
                    
                    case global.IDENTIFIER_TEST_MESSAGE:
                        var msg = buffer_read(buffer, buffer_string);
                        handleDebugMessage("[Client] Message from server: " + msg, true);
                        break;
                }
                buffer_delete(buffer);
                break;

            case network_type_connect:
                handleDebugMessage("[Client] Connected to server.", true);
                break;
                
            case network_type_disconnect:
                global.isConnected = false;
                handleDebugMessage("[Client] Disconnected from server. Attempting to identify cause...", true);
                break;
        }
    }
} else {
    //show_debug_message("ERROR: Invalid ds_map reference in async event.");
}


// Command input and execution logic
if (input_check_pressed("chat") && !isActive) {
    isActive = true;
    global.commandBuffer = "";
    keyboard_string = "";
    show_debug_message("[Client] Chat input activated.");
}

// Toggle chat box with a specific key, e.g., Tab
if (keyboard_check_pressed(vk_tab)) {
    show_chatbox = !show_chatbox;
    global.commandBuffer = "";  // Clear previous commands or texts
    keyboard_string = "";
    show_debug_message("[Client] Toggled chat box visibility: " + string(show_chatbox));
}

// Handle backspace and text input
if (isActive) {
    var lines = string_split(string_replace_all(global.commandBuffer, global.intentionalLineBreak, "\n"), "\n");
    var total_lines = array_length(lines);
    global.input_scroll_offset = max(0, total_lines - global.max_visible_lines);
    
    // Adjust scroll offset based on total lines
    if (total_lines > global.max_visible_lines) {
        global.input_scroll_offset = total_lines - global.max_visible_lines;
    } else {
        global.input_scroll_offset = 0;
    }

// Handle backspace input
    if (input_check("cancel") && string_length(global.commandBuffer) > 0) {
        if (global.backspaceTimer == 0 || global.backspaceTimer >= global.backspaceDelay) {
            var lastCharPosition = string_length(global.commandBuffer);

            // Check if the last character is a newline
            if (string_char_at(global.commandBuffer, lastCharPosition) == "\n") {
                // Adjust the global.lastSpaceIndex if necessary
                if (global.lastSpaceIndex >= lastCharPosition) {
                    global.lastSpaceIndex = string_last_index_of(string_copy(global.commandBuffer, 1, lastCharPosition - 1), " ");
                }
            }

            // Perform the character deletion
            global.commandBuffer = string_delete(global.commandBuffer, lastCharPosition, 1);
            update_chat_input_visuals();
            show_debug_message("[Client] Updated command buffer after backspace: " + global.commandBuffer);

            // Clear the keyboard buffer to avoid unwanted characters
            keyboard_string = "";

            // Increase deletion speed
            if (global.backspaceTimer == 0) {
                global.backspaceTimer = 1;
            } else {
                global.backspaceTimer = global.backspaceSpeed;
				if global.backspaceSpeed<14 {
					global.backspaceSpeed+=1
				}
            }
        } else {
            global.backspaceTimer += 1;
        }
    } else {
        global.backspaceTimer = 0; // Reset timer when backspace is released
		global.backspaceSpeed=1
    }
	
	// Detect pasting via Ctrl+V (Windows) or Command+V (Mac)
    var pasting = false;
    if (os_type == os_windows) {
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V"))) {
            pasting = true;
			keyboard_string=""
			char = ""
        }
    } else if (os_type == os_macosx) {
        if (keyboard_check(92) && keyboard_check_pressed(ord("V"))) {
            pasting = true;
			keyboard_string=""
			char = ""
        }
    }
	
	if string_length(global.commandBuffer) < global.character_limit {
    var char = keyboard_string;
        var space_pressed = keyboard_check_pressed(vk_space);
        
        if (char != "" || space_pressed) {
            if (!pasting) {
                if (space_pressed) {
                    global.commandBuffer += " ";
                    show_debug_message("[Client] Space added to command buffer");
                } else {
                    global.commandBuffer += char;
                }
                keyboard_string = ""; // Clear the keyboard buffer after reading
                update_chat_input_visuals();
                show_debug_message("[Client] Appended character to command buffer: " + global.commandBuffer);
            }
        }
	} else {
    var char = "";
    if keyboard_check_pressed(vk_anykey) {
        if last_key_is_valid_character(keyboard_lastkey) {
            //play sound to indicate char limit. 
            var sound = audio_play_sound(uibuttonsound7,0,0,master.uivol*master.mastervol)
            shake_angle = choose(-1,1) * random_range(.95,1.00)
        }
    }
}

// Debug: Check for space key press
    if (keyboard_check_pressed(vk_space)) {
        show_debug_message("[Client] Space key pressed");
    }

    // Debug: Check keyboard_string content
    if (keyboard_string != "") {
        show_debug_message("[Client] keyboard_string content: " + keyboard_string);
    }

// Handle pasting
// In the Step event of obj_Client
if (pasting) {
    if (clipboard_has_text()) {
        var clip_string = clipboard_get_text();
        if (string_length(clip_string) > 0 && string_length(clip_string) < global.character_limit) {
            // Replace regular line breaks with intentional line breaks
            clip_string = string_replace_all(clip_string, "\n", global.intentionalLineBreak);
            clip_string = string_replace_all(clip_string, "\r", "");
            
            global.commandBuffer = appendAndWrap(clip_string, global.commandBuffer, global.wrapWidth);
            update_chat_input_visuals();
            show_debug_message("[Client] Appended clipboard content to command buffer: " + global.commandBuffer);
        } else {
            handleDebugMessage("Clipboard content is too long to paste!", false);
        }
    }
    pasting = false;
}

// Check if Enter is pressed to process the command or chat message
if (input_check_pressed("confirm")) {
	if (keyboard_check(vk_shift)) {
            // Shift+Enter: Add a new line
            global.commandBuffer += global.intentionalLineBreak;
            update_chat_input_visuals();
        } else {
        if (string_char_at(global.commandBuffer, 1) == "/") {
            execute_multiple_commands(global.commandBuffer);
            global.textColor = global.defaultTextColor;
            isActive = false;
        } else {
            var chatMessage = "[" + master.playername + "] " + global.commandBuffer;
            global.message_is_bubble = 1;
            handleDebugMessage(chatMessage, -1);
            global.message_is_bubble = 0;
        }

        // Add the command/message to the recall list
        if (string_length(global.commandBuffer) > 0) {
            ds_list_add(global.recall_list, global.commandBuffer);
            if (ds_list_size(global.recall_list) > global.recall_max) {
                ds_list_delete(global.recall_list, 0);  // Remove the oldest entry if exceeding the limit
            }
        }
        global.recall_index = -1;
        global.textColor = global.defaultTextColor;
        global.commandBuffer = "";
        isActive = false;
        show_debug_message("[Client] Processed command/chat and cleared buffer.");
}
}
    // Navigate through the recall list using up and down arrows
    if (keyboard_check_pressed(vk_up)) {
        if (global.recall_index == -1) {
            global.recall_index = ds_list_size(global.recall_list) - 1;
        } else {
            global.recall_index = max(0, global.recall_index - 1);
        }

        if (global.recall_index >= 0 && global.recall_index < ds_list_size(global.recall_list)) {
            global.commandBuffer = ds_list_find_value(global.recall_list, global.recall_index);
            update_chat_input_visuals();
            show_debug_message("[Client] Recalled previous command/chat: " + global.commandBuffer);
        }
    } else if (keyboard_check_pressed(vk_down)) {
        if (global.recall_index != -1) {
            global.recall_index = min(ds_list_size(global.recall_list) - 1, global.recall_index + 1);

            if (global.recall_index < ds_list_size(global.recall_list)) {
                global.commandBuffer = ds_list_find_value(global.recall_list, global.recall_index);
            } else {
                global.commandBuffer = "";
            }
            update_chat_input_visuals();
            show_debug_message("[Client] Recalled next command/chat: " + global.commandBuffer);
        }
    }
}

if (show_chatbox && ds_exists(global.debugMessages, ds_type_list)) {
	global.longestmessage = updateLongestMessage(global.debugMessages);
    var totalLines = drawChatMessages(global.debugMessages, 990, 0, global.max_visible_lines, .5, false, global.c_chat2, global.c_chat1);
 
    // Check if a new message was added
    if (ds_list_size(global.debugMessages) > 0 && 
        ds_list_find_value(global.debugMessages, ds_list_size(global.debugMessages) - 1) == global.lastAddedMessage) {
        // Scroll to the bottom when a new message is added
        scrollIndex = max(0, totalLines - global.max_visible_lines);
        global.lastAddedMessage = ""; // Reset the last added message
    } else {
        // Ensure scrollIndex is within valid range
        scrollIndex = clamp(scrollIndex, 0, max(0, totalLines - global.max_visible_lines));
    }
    
    // Draw the chat messages
    drawChatMessages(global.debugMessages, 990, 0, global.max_visible_lines, .5, true, global.c_chat2, global.c_chat1);
}

// Only process incoming data and send heartbeats if the server is running
if (isServerRunning && sendHeartbeat && (current_time - global.lastHeartbeatTime >= broadcastInterval)) {
    handleDebugMessage("Heartbeat sent to Server", true);
    global.lastHeartbeatTime = current_time;
}



