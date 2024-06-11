///Client Draw Code
draw_set_font(fnt_chat);
if show_chatbox=true {
	var xx = 990;
	var yy = 686; // Starting y position
	var lm_cal=clamp(xx+(clamp(110-global.longestmessage,0,110))+1.65*(global.longestmessage-50)/3,xx+215,(display_get_gui_width()-10)/2+room_width/2)+10
	var x1 = 980
	var y1 = 686-20
	var x2 = max(lm_cal,clamp(xx+(clamp(110-global.longestmessage,0,110))+1.65*(string_width(global.commandBuffer)-1)/3,xx+215,(display_get_gui_width())/2+room_width/2+50))
	var y2 = _yy+100
	//draw transparent background box for chatbox that adjusts to fit the longest message. will be later swapped for a scaled image background
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
	//we can keep drawing this section this way unless somehow your next response can condense it as well. but its  kind of fine as is, no issues here.
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

if show_chatbox and ds_exists(global.debugMessages, ds_type_list) {
    var startY = yy;
    var maxLinesToShow = global.max_visible_lines;
	// Before calling drawChatMessages, ensure messages is a ds_list
if (!ds_exists(global.debugMessages, ds_type_list)) {
    show_debug_message("Error: debugMessages is not a valid ds_list.");
    return;
}

    var totalLines = drawChatMessages(global.debugMessages, 990, startY, maxLinesToShow, sca, false,global.c_chat2,global.c_chat1);

    // Calculate the max index for scrolling based on the total number of lines
    var maxScrollIndex = max(0, clamp(totalLines - maxLinesToShow,0,9999999));

    // Scroll messages with keyboard or mouse wheel
    if (input_check("up") || mouse_wheel_up()) {
		if !(input_check("up") and isActive = true) { //disable scrolling from "W" when typing
        scrollIndex = max(0, scrollIndex - 1);
        show_debug_message("[Client] Scrolled up: Current scroll index is " + string(scrollIndex));
		}
    }
    if (input_check("down") || mouse_wheel_down()) {
		if !(input_check("down") and isActive = true) {//disable scrolling from "S" when typing
        scrollIndex = min(maxScrollIndex, scrollIndex + 1);
        show_debug_message("[Client] Scrolled down: Current scroll index is " + string(scrollIndex));
		}
    }

    // Ensuring scrollIndex is always within the valid range
    scrollIndex = clamp(scrollIndex, 0, maxScrollIndex);

    // Redraw messages considering the scroll index
	// Before calling drawChatMessages, ensure messages is a ds_list
if (!ds_exists(global.debugMessages, ds_type_list)) {
    show_debug_message("Error: debugMessages is not a valid ds_list.");
    return;
}

    drawChatMessages(global.debugMessages, 990, yy , maxLinesToShow, sca, true,global.c_chat2,global.c_chat1);
}

yy=yy+clamp(totalLines-scrollIndex,0,global.max_visible_lines)*(global.chat_line_height*1.00)+5
sca=.6
_yy=yy-15
 
if (isActive) {
// Determine the number of line breaks in the command buffer
var lineCount = array_length(string_split(global.commandBuffer, "\n"));

// Calculate the new height based on the number of lines
var lines = string_split(global.commandBuffer, "\n");
var boxHeight = global.chat_line_height*1.05 * array_length(lines) + 2; // Calculate box height based on number of lines

//chat input box drawing code 
draw_set_color(c_black); // Set initial color to black (border)
 
    if (string_char_at(global.commandBuffer, 1) = "/") {
        draw_set_color(c_white);  // border becomes white if command is being typed
    }
// Adjust the bottom y-coordinate of the rectangle to expand with each new line
draw_rectangle(xx + 5, yy - 11, clamp(xx - 90 + 1.85 * (string_width(global.commandBuffer) - 1) / 3, xx - 90, (display_get_gui_width() - 10) / 2 + room_width / 2) + 150 + 10, yy + boxHeight + 10, false);

    draw_set_color(c_white);  // Set initial bg color to white when no '/' detected
    if (string_char_at(global.commandBuffer, 1) = "/") {
        draw_set_color(c_black);  // Default bg color if command is being typed
		slash_typed=true
    } else {
		slash_typed=false
	}
draw_rectangle(xx + 10, yy - 6, clamp(xx - 90 + 1.85 * (string_width(global.commandBuffer) - 1) / 3, xx - 90, (display_get_gui_width() - 10) / 2 + room_width / 2) + 150, yy + boxHeight, false);
//draw command buffer
draw_set_color(global.c_chat2);
	//we stay drawing these like this because theres no need for line handling here.

	draw_set_color(merge_color(global.textColor,c_red,clamp(abs(shake_angle),0,1)));
    draw_text_transformed(xx+20+shake_angle*7, yy-shake_angle*7, global.commandBuffer + "_", sca, sca, shake_angle*.25);  // Shoblinking cursor
} else {
	draw_set_color(merge_color(global.c_chat1,c_red,clamp(abs(shake_angle),0,1)));
    draw_text_transformed(xx+20+shake_angle*7, yy-shake_angle*7, global.commandBuffer + "_", sca, sca, shake_angle*.25);  // Show blinking cursor
}
} else {
	exit
}


// instance_exists(obj_levelup) {
//if input_value() != undefined {
//draw_set_color(c_red)
//var dbug = ""
//draw_text_transformed(room_width/2,room_height/2,string(global.choiceselect),3,3,0)
//draw_text_transformed(room_width/2,room_height/2,dbug,3,3,0)
//}

////debug draw last key id
//draw_set_color(c_black);
//draw_text(room_width/2+2,room_height/2+2,keyboard_lastkey)
//draw_text(room_width/2-2,room_height/2+2,keyboard_lastkey)
//draw_text(room_width/2+2,room_height/2-2,keyboard_lastkey)
//draw_text(room_width/2-2,room_height/2-2,keyboard_lastkey)
//draw_set_color(c_white);
//draw_text(room_width/2,room_height/2,keyboard_lastkey)