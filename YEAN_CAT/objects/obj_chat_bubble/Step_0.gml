// obj_chat_bubble: Step Event
if (owner != noone) {
    x = owner.x;
    y = owner.y - 60;
}

if wrapped = 0 {
    draw_set_font(text_font);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
    var longestWordWidth = get_longest_word_width(_text, text_font, text_scale);
    text_scale = min(clamp(1-string_length(_text)/500,.5,1),clamp(1.5-longestWordWidth/1000,.5,1))
    max_width = clamp(max(500+string_length(_text)*1.5,longestWordWidth/2+250),min_width,1500)
    _text = wrap_text(_text, max_width - 2 * padding);
    line_count = string_count("\n", _text) + 1;
    scale_x = clamp(string_width(_text) + 6 * padding, min_width, max_width);
    real_scale_y = clamp(((line_count-1) * (string_height("M")+30*text_scale)) * 1.5 * text_scale / 2+120, min_height-120, max_height-120);
    wrapped = 1
}

scale_y = real_scale_y + 120

if sprite_get_xoffset(sprite_index) = 250 {
    facing = 0
} else if sprite_get_xoffset(sprite_index) > 250 {
    facing = -1
} else {
    facing = 1
}

if (choice_count > 0) {
    var choice_start_y = y + real_scale_y + 20;
    
    for (var i = 0; i < choice_count; i++) {
        var choice_text = choices[i][0];
        draw_set_font(text_font);
        var choice_text_width = string_width(choice_text) * text_scale;
        var choice_text_height = string_height(choice_text) * text_scale;
        var choice_scale_x = max(choice_text_width + padding * 4, min_width);
        var choice_scale_y = max(choice_text_height + padding * 2, min_height - 120);
        
        var choice_x = x - choice_scale_x / 2;
        var choice_y = choice_start_y + (i * (choice_scale_y + 10));
        
        if (point_in_rectangle(mouse_x, mouse_y, choice_x, choice_y, choice_x + choice_scale_x, choice_y + choice_scale_y)) {
            if (mouse_check_button_pressed(mb_left)) {
                selected_choice = i;
                if (choices[i][1] != undefined && choices[i][1] != "") {
                    scr_execute_action(choices[i][1]);
                }
                instance_destroy();
                return;
            }
        }
    }
}

lifetime++;
if (lifetime >= duration && choice_count == 0) {
    instance_destroy();
}

