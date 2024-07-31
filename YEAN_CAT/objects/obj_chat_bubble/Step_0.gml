// obj_chat_bubble Step Event

if (!instance_exists(owner)) {
    instance_destroy();  // Destroy the chat bubble if its owner no longer exists
    exit;
}

x = owner.x;
y = owner.y - 60;


if (wrapped == 0) {
	if string_contains(text, "|") {
	text = string_replace_all(text, "|", "\n");
	}
    draw_set_font(text_font);
    var text_length = string_length(text);
    var longestWordWidth = get_longest_word_width(text, text_font, 1);
    
    // Calculate initial text scale
    text_scale = min(clamp(1 - text_length / 600, 0.4, 1), clamp(1.5 - longestWordWidth / 1200, 0.4, 1));
    
    // Wrap text
    wrapped_text = wrap_chat_text(text, max_width - 2 * padding);
    
    // Count lines and adjust scale if needed
    line_count = string_count("\n", wrapped_text) + 1;
    if (line_count > 5) {
        text_scale *= (5 / line_count);
        wrapped_text = wrap_chat_text(text, (max_width - 2 * padding) / text_scale);
        line_count = string_count("\n", wrapped_text) + 1;
    }
    
    // Calculate bubble dimensions
    scale_x = clamp(string_width_ext(wrapped_text, -1, max_width - 2 * padding) * text_scale + 6 * padding, min_width, max_width);
    real_scale_y = clamp(string_height_ext(wrapped_text, -1, max_width - 2 * padding) * text_scale + 4 * padding, min_height - 120, max_height - 120);
    
    scale_y = real_scale_y + 120;
    wrapped = 1;
}

// Calculate top_middle_x and top_middle_y
top_middle_x = x - (sprite_get_xoffset(sprite_index) - 250) * scale_x / 500;
top_middle_y = y - sprite_get_yoffset(sprite_index) - real_scale_y - 60;

// obj_chat_bubble Step Event
if (timer_enabled) {
    lifetime++;
    if (lifetime >= duration) {
        instance_destroy();
    }
}
