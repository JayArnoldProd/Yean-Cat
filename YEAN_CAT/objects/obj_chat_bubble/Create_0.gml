// obj_chat_bubble Create Event

hover_progress = ds_map_create();
hover_scale = ds_map_create();
_text_color = c_black;
choices_per_row = 2;
text_color_outline = c_white;
text_scale = 1;
outline_size = 2;
padding = 10;
wrapped_text = "";
line_count = 1;
choice_text_scale = 0.6;
choice_line_height = 20
max_width = 1000;
max_height = 800;
min_width = 200;
min_height = 240;
top_middle_x = 0;
top_middle_y = 0;
line_spacing = 0;
scale_y = min_height;
scale_x = min_width;
real_scale_y = min_height - 120;
duration = 1000;
lifetime = 0;
main_bubble_sprite = spr_chatbubble1;
choice_bubble_sprite = spr_chatchoice1;
text_font = Font_Default;
wrapped = 0;
show_bounds = false;

// These properties will be set by the constructor
text = text ?? "";
owner = owner ?? noone;
choices = choices ?? [];

// Set up timer
if (array_length(choices) > 0) {
    has_choices = true;
    timer_enabled = false;
} else {
    has_choices = false;
    timer_enabled = true;
}

text = wrap_chat_text(text, max_width - 2 * padding);