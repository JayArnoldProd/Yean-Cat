
draw_set_font(fnt_chat);
if show_chatbox=true {
    var xx = 990;
    var yy = 686; // Starting y position
    var lm_cal=clamp(xx+(clamp(110-global.longestmessage,0,110))+1.7*(global.longestmessage-51)/3,xx+215,(display_get_gui_width()-10)/2+room_width/2)+10
    var x1 = 980
    var y1 = 686-20
    var x2 = max(lm_cal, clamp(xx + (clamp(110 - global.longestmessage, 0, 110)) + 1.7 * (string_width(global.commandBuffer) - 1) / 3, xx + 230, (display_get_gui_width() - 10) / 2 + room_width / 2 + 50));
    var y2 = _yy+100
    
    // Draw transparent background box for chatbox
    draw_rectangle_outlined(x1,y1,x2,y2,false,global.borderwidth,global.o_color,global.bg_color,global.bg_alpha);
    draw_set_alpha(1);
    var sca=.7
    global.chat_line_height = 70 * sca + 5;
    
    // Set drawing properties
    draw_set_colour(c_ltgray);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(fnt_chat); 
    
    // Display server status
    var serverStatus = "Server Unable to Connect"; // Default message
    if (isServerRunning) {
        serverStatus = "Server Online";
        draw_set_colour(c_lime);
    } else {
        serverStatus = "Server Stopped";
        draw_set_colour(c_red);
    }

    if show_server_status=true {
        draw_text_transformed(xx, yy, serverStatus, sca, sca, 0);
        yy += 40; // Increment y position for next line
    }

    if connectedClients>0 {
        draw_set_colour(c_aqua);
    } else {
        draw_set_colour(c_ltgrey);
    }
    if show_server_status=true {
        draw_text_transformed(xx+3, yy+3-10, "Connected Clients: "+string(connectedClients), sca, sca, 0);
        draw_text_transformed(xx-3, yy+3-10, "Connected Clients: "+string(connectedClients), sca, sca, 0);
        draw_text_transformed(xx+3, yy-3-10, "Connected Clients: "+string(connectedClients), sca, sca, 0);
        draw_text_transformed(xx-3, yy-3-10, "Connected Clients: "+string(connectedClients), sca, sca, 0);
        draw_set_color(global.c_chat1);
        draw_text_transformed(xx, yy-10, "Connected Clients: "+string(connectedClients), sca, sca, 0);
        yy += 50; // Increment y position for next 
    } else {
        draw_set_color(global.c_chat1);
        draw_text_transformed(xx+3, yy+3-10, "Chat Box", sca, sca, 0);
        draw_text_transformed(xx-3, yy+3-10, "Chat Box", sca, sca, 0);
        draw_text_transformed(xx+3, yy-3-10, "Chat Box", sca, sca, 0);
        draw_text_transformed(xx-3, yy-3-10, "Chat Box", sca, sca, 0);
        draw_set_color(global.c_chat2);
        draw_text_transformed(xx, yy-10, "Chat Box", sca, sca, 0);
        yy += 60; // Increment y position for next line
    }

    sca=.5

    if (show_chatbox && ds_exists(global.debugMessages, ds_type_list)) {
    global.longestmessage = updateLongestMessage(global.debugMessages);
    var totalLines = drawChatMessages(global.debugMessages, 990, yy, global.max_visible_lines, .5, false, global.c_chat2, global.c_chat1);
 
    var maxScrollIndex = max(0, totalLines - global.max_visible_lines);

    var wheel = mouse_wheel_down() - mouse_wheel_up();
    if (wheel != 0) {
        global.isScrolling = true;
        scrollIndex = clamp(scrollIndex - wheel, 0, maxScrollIndex);
        global.scrollResetTimer = 60; // Reset timer when scrolling
    }

    if (global.scrollResetTimer > 0) {
        global.scrollResetTimer--;
        if (global.scrollResetTimer == 0) {
            global.isScrolling = false;
        }
    }

    // Auto-scroll to bottom if not manually scrolling
    //if (!global.isScrolling) {
    //    scrollIndex = maxScrollIndex;
    //}

    drawChatMessages(global.debugMessages, 990, yy, global.max_visible_lines, .5, true, global.c_chat2, global.c_chat1);
}

    yy=yy+clamp(totalLines-scrollIndex,0,global.max_visible_lines)*(global.chat_line_height*1.00)+5
    sca=.6
    _yy=yy-15
    
    if global.commandBuffer != "" {
        displayText = string_replace_all(global.commandBuffer, global.intentionalLineBreak, "\n");
    } else {
        displayText = ""
    }
    
if (isActive) {
    var lines = string_split(string_replace_all(global.commandBuffer, global.intentionalLineBreak, "\n"), "\n");
    var totalLines = array_length(lines);
    var maxInputLines = 25; // Maximum number of lines in the input box
    var visibleLines = min(totalLines, maxInputLines);
    
    // Calculate the new height based on the number of visible lines
    var boxHeight = global.chat_line_height * visibleLines + 2;
    
    // Calculate the scroll offset for the input box
    var inputScrollOffset = max(0, totalLines - maxInputLines);
    
    // Count actual lines in the chat history
    var actualChatLines = 0;
    for (var i = 0; i < ds_list_size(global.debugMessages); i++) {
        var message = ds_list_find_value(global.debugMessages, i);
        actualChatLines += string_count("\n", message) + 1;
    }
    
    // Calculate when to start expanding upward
    var expandUpwardThreshold = max(15 - clamp(actualChatLines, 0, global.max_visible_lines), 2);
    
    // Adjust the y position of the input box
    var inputBoxY = yy;
    if (totalLines > expandUpwardThreshold) {
        inputBoxY -= global.chat_line_height * (totalLines - expandUpwardThreshold);
    }
    inputBoxY = max(inputBoxY, global.chat_line_height); // Ensure it doesn't go above the top of the screen
    
    // Draw chat input box
    draw_set_color(c_black);
    if (string_char_at(global.commandBuffer, 1) = "/") {
        draw_set_color(c_white);
    }
    draw_rectangle(xx + 5, inputBoxY - 11, clamp(xx - 90 + 1.88 * (string_width(displayText) - 1) / 3, xx - 90, (display_get_gui_width() - 10) / 2 + room_width / 2) + 150 + 10, inputBoxY + boxHeight + 10, false);

    draw_set_color(c_white);
    if (string_char_at(global.commandBuffer, 1) = "/") {
        draw_set_color(c_black);
        slash_typed = true;
    } else {
        slash_typed = false;
    }
    draw_rectangle(xx + 10, inputBoxY - 6, clamp(xx - 90 + 1.88 * (string_width(displayText) - 1) / 3, xx - 90, (display_get_gui_width() - 10) / 2 + room_width / 2) + 150, inputBoxY + boxHeight, false);

    // Draw visible lines of text
    draw_set_color(merge_color(global.textColor, c_red, clamp(abs(shake_angle), 0, 1)));
    for (var i = 0; i < visibleLines; i++) {
        var lineIndex = i + inputScrollOffset;
        if (lineIndex < totalLines) {
            var lineText = lines[lineIndex];
            draw_text_transformed(xx + 20 + shake_angle * 7, inputBoxY - shake_angle * 7 + i * global.chat_line_height, lineText, sca, sca, shake_angle * .25);
        }
    }
    
    // Draw cursor
    var cursorY = inputBoxY - shake_angle * 7 + (visibleLines - 1) * global.chat_line_height;
    draw_text_transformed(xx + 20 + shake_angle * 7 + string_width(lines[totalLines - 1]) * sca, cursorY, "_", sca, sca, shake_angle * .25);
} else {
        // Draw "Press 'T' to Type" prompt
        draw_set_color(c_white);
        draw_set_alpha(0.7);
        draw_text_transformed(xx + 20, yy, "Press 'T' to Type", sca*.7, sca*.7, shake_angle*.25);
        draw_set_alpha(1);
    }
} else {
    exit
}
