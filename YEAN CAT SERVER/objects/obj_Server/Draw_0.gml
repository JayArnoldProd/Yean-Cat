// Draw Event of obj_Server

// Set drawing properties
draw_set_colour(c_ltgray);
draw_set_font(Font1); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Display server status
// Inside the Draw Event of obj_Server
var serverStatus = "Server Unable to Connect"; // Default message
if (isServerRunning) {
    serverStatus = "Server Online";
	draw_set_colour(c_lime);
} else {
    serverStatus = "Server Stopped";
	draw_set_colour(c_red);
}

var yy = 10; // Starting y position
draw_text(10, yy, serverStatus);
yy += 40; // Increment y position for next line
if connectedClients>0 {
	draw_set_colour(c_aqua);
} else {
	draw_set_colour(c_ltgrey);
}
draw_text(10, yy, "Connected Clients: "+string(connectedClients));
yy += 60; // Increment y position for next line
draw_set_font(Font2);
draw_set_colour(c_white);
var visibleMessages = min(ds_list_size(debugMessages) - floor(scrollIndex), maxDisplayMessages);
for (var i = 0; i < visibleMessages; i++) {
    var msgIndex = floor(scrollIndex) + i;
    var message = ds_list_find_value(debugMessages, msgIndex);
    var drawY = yy + ((i - (scrollIndex - floor(scrollIndex))) * 40*17/29); // Adjust y based on fractional scrollIndex
    draw_text(10, drawY, message);
}
yy=yy+16*38
draw_set_font(Font1); 
if (isActive) {
    draw_set_color(c_white);
    draw_rectangle(5, yy-6, clamp(44+44*(string_length(commandBuffer)-1)/2,40,room_width-10), yy+44, false);
    draw_set_color(c_black);
    draw_text(10, yy, commandBuffer + "_");  // Show blinking cursor
} else {
	draw_set_color(c_white);
    draw_text(10, yy, commandBuffer + "_");  // Show blinking cursor
}

