//Draw Event of obj_chat_bubble

var tail_sprite_index = 0;
var middle_sprite_index = 1;
var top_sprite_index = 2;

var bottom_y = y;
var top_y = y - real_scale_y
var middle_height = clamp(scale_y - 240, 0, max_height - 120);  // Middle scale is clamped to the max_height
var middle_y = y-sprite_get_yoffset(sprite_index)-(120-sprite_get_yoffset(sprite_index))*middle_height/120  // Calculate middle y position between top and bottom
// These variables represent the very top-middle of the chat bubble given the width and height
var top_middle_x = x - (sprite_get_xoffset(sprite_index) - 250) * scale_x / 500;
var top_middle_y = y - sprite_get_yoffset(sprite_index) - middle_height - 60;  // Offset by -60 for the empty space

// Bottom (tail)
draw_sprite_ext(sprite_index, tail_sprite_index, x, bottom_y, scale_x / 500, 1, 0, c_white, 1);

// Middle
draw_sprite_ext(sprite_index, middle_sprite_index, x, middle_y, scale_x / 500, middle_height / 120, 0, c_white, 1);

// Top
draw_sprite_ext(sprite_index, top_sprite_index, x, top_y, scale_x / 500, 1, 0, c_white, 1);

// Draw message text
draw_set_font(text_font);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
drawTextWithOutline(top_middle_x, top_middle_y + padding, _text, text_scale, outline_size, text_color_outline, text_color);

// Debugging: draw the top-middle point of the chat bubble
draw_set_color(c_red);
draw_rectangle(top_middle_x - 1, top_middle_y - 1, top_middle_x + 1, top_middle_y + 1, false);
