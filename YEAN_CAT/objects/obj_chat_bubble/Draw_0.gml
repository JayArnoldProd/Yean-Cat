// obj_chat_bubble Draw Event
show_debug_message("Drawing chat bubble. Text: '" + text + "'");
show_debug_message("Wrapped text: '" + wrapped_text + "'");
show_debug_message("Text position: " + string(top_middle_x) + ", " + string(top_middle_y + padding));
show_debug_message("Text color: " + string(text_color) + ", Outline color: " + string(text_color_outline));
show_debug_message("Text scale: " + string(text_scale));
show_debug_message("Max width: " + string(max_width));

var tail_sprite_index = 0;
var middle_sprite_index = 1;
var top_sprite_index = 2;

var bottom_y = y;
var top_y = y - real_scale_y;
var middle_height = clamp(scale_y - 240, 0, max_height - 120);
var middle_y = y - sprite_get_yoffset(sprite_index) - (120 - sprite_get_yoffset(sprite_index)) * middle_height / 120;

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
drawTextWithOutline(top_middle_x, top_middle_y + padding + 130, wrapped_text, text_scale, outline_size, text_color_outline, text_color, max_width - 2 * padding);

// Debug: draw a point at the text position
draw_set_color(c_red);
draw_point(top_middle_x, top_middle_y + padding);

// Debug: draw bounding box
if show_bounds = true {
draw_set_color(c_red);
draw_rectangle(top_middle_x - scale_x/2, top_middle_y + 130, top_middle_x + scale_x/2, bottom_y, true);
}