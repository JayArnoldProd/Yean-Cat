//CREATE EVENT of obj_chat_bubble

// Add these variables to the existing Create event
choices = [];
choice_count = 0;
selected_choice = -1;

// Initialize default properties
_text = "";
line_count = 1;
owner = noone;
max_width = 500;  // Maximum width of the chat bubble
max_height = 800;  // Maximum height of the chat bubble
min_width = 200;
min_height = 240;
padding = 15;
scale_y = min_height;  // Default size in pixels for a 1-line chat bubble
scale_x = min_width;  // Default size in pixels
real_scale_y= min_height-120
duration = 1000;  // Chat bubble display duration in frames
lifetime = 0;
sprite_index = spr_chatbubble1;
if (owner != noone) {
    x = owner.x;
    y = owner.y - 60;  // Adjust to appear above the owner's head
}
text_font = Font_Default;
text_color = c_dkgrey;
text_color_outline = c_black;
text_scale = 1;
outline_size = 2;
wrapped=0
