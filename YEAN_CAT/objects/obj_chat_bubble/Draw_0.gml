// obj_chat_bubble Draw Event

// Draw main chat bubble
var tail_sprite_index = 0;
var middle_sprite_index = 1;
var top_sprite_index = 2;

var bottom_y = y;
var top_y = y - real_scale_y;
var middle_height = clamp(scale_y - 240, 0, max_height - 120);
var middle_y = y - sprite_get_yoffset(sprite_index) - (120 - sprite_get_yoffset(sprite_index)) * middle_height / 120;

var top_middle_x = x - (sprite_get_xoffset(sprite_index) - 250) * scale_x / 500;
var top_middle_y = y - sprite_get_yoffset(sprite_index) - middle_height - 60;

draw_sprite_ext(sprite_index, tail_sprite_index, x, bottom_y, scale_x / 500, 1, 0, c_white, 1);
draw_sprite_ext(sprite_index, middle_sprite_index, x, middle_y, scale_x / 500, middle_height / 120, 0, c_white, 1);
draw_sprite_ext(sprite_index, top_sprite_index, x, top_y, scale_x / 500, 1, 0, c_white, 1);

draw_set_font(text_font);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
drawTextWithOutline(top_middle_x, top_middle_y + padding, _text, text_scale, outline_size, text_color_outline, text_color);

// Draw choices
if (choice_count > 0) {
    var choice_start_y = bottom_y + 20; // Start drawing choices below the main bubble
    
    for (var i = 0; i < choice_count; i++) {
        var choice_text = choices[i][0];
        
        // Calculate choice bubble dimensions
        draw_set_font(text_font);
        var choice_text_width = string_width(choice_text) * text_scale;
        var choice_text_height = string_height(choice_text) * text_scale;
        var choice_scale_x = max(choice_text_width + padding * 4, min_width);
        var choice_scale_y = max(choice_text_height + padding * 2, min_height - 120);
        
        // Draw choice bubble
        var choice_x = x;
        var choice_y = choice_start_y + (i * (choice_scale_y + 10)); // 10 pixel vertical spacing between choices
        
        // Bottom (tail) - we don't need a tail for choices
        draw_sprite_ext(spr_chatchoice1, 0, choice_x, choice_y + choice_scale_y, choice_scale_x / 500, 1, 0, c_white, 1);
        
        // Middle
        var choice_middle_height = choice_scale_y - 120;
        if (choice_middle_height > 0) {
            draw_sprite_ext(spr_chatchoice1, 1, choice_x, choice_y + 60, choice_scale_x / 500, choice_middle_height / 120, 0, c_white, 1);
        }
        
        // Top
        draw_sprite_ext(spr_chatchoice1, 2, choice_x, choice_y, choice_scale_x / 500, 1, 0, c_white, 1);
        
        // Draw choice text
        var choice_text_x = choice_x;
        var choice_text_y = choice_y + padding;
        drawTextWithOutline(choice_text_x, choice_text_y, choice_text, text_scale, outline_size, text_color_outline, text_color);
    }
}