// obj_chat_bubble Draw Event
// At the beginning of the Draw Event, add these variables if they're not already defined:
if (!variable_instance_exists(id, "text_color")) {
    _text_color = c_black;  // Default text color
}
if (!variable_instance_exists(id, "text_color_outline")) {
    text_color_outline = c_white;  // Default outline color
}
if (!variable_instance_exists(id, "text_scale")) {
    text_scale = 1;  // Default text scale
}
if (!variable_instance_exists(id, "outline_size")) {
    outline_size = 1;  // Default outline size
}
if (!variable_instance_exists(id, "padding")) {
    padding = 10;  // Default padding
}
if (!variable_instance_exists(id, "max_width")) {
    max_width = 500;  // Default max width
}

// Define sprite variables (you can set these in the Create event)
if (!variable_instance_exists(id, "main_bubble_sprite")) {
    main_bubble_sprite = spr_chatbubble1;
}
if (!variable_instance_exists(id, "choice_bubble_sprite")) {
    choice_bubble_sprite = main_bubble_sprite; // Use the same sprite for choices
}
var tail_sprite_index = 0;
var middle_sprite_index = 1;
var top_sprite_index = 2;

var bottom_y = y - 100;
var top_y = y - real_scale_y - 100;
var middle_height = clamp(scale_y - 240, 0, max_height - 120);
var middle_y = y - 100 - sprite_get_yoffset(main_bubble_sprite) - (120 - sprite_get_yoffset(main_bubble_sprite)) * middle_height / 120;

// Draw main chat bubble
draw_sprite_ext(main_bubble_sprite, tail_sprite_index, x, bottom_y, scale_x / 500, 1, 0, c_white, 1);
draw_sprite_ext(main_bubble_sprite, middle_sprite_index, x, middle_y, scale_x / 500, middle_height / 120, 0, c_white, 1);
draw_sprite_ext(main_bubble_sprite, top_sprite_index, x, top_y, scale_x / 500, 1, 0, c_white, 1);

// Draw message text
draw_set_font(text_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
drawTextWithOutline(top_middle_x, top_middle_y - 100 + padding + 130, wrapped_text, text_scale, outline_size, text_color_outline, _text_color, max_width - 2 * padding);

// Calculate choice layout variables
// Calculate choice layout variables
if (array_length(choices) > 0) {
    var choice_padding = 10;
    var choice_width = 1100;
    var choice_height = 100;
    choices_per_row = min(2, array_length(choices));
    var rows = ceil(array_length(choices) / choices_per_row);
    
    var total_width = (choice_width + choice_padding) * choices_per_row - choice_padding;
    var start_x = x - total_width / 2;
    var start_y = bottom_y + 40;  // Position choices below the main bubble

    // Draw choices
    for (var i = 0; i < array_length(choices); i++) {
        var row = i div choices_per_row;
        var col = i mod choices_per_row;
        var choice_x = start_x + choice_width/3 + col * (choice_width/1.3 + choice_padding);
        var choice_y = start_y + row * (choice_height + choice_padding);

        var choice_middle_height = 0; //this should be set above 0 if there is more than 1 line in a choice.
        var choice_top_y = choice_y-60;
        var choice_bottom_y = choice_y + choice_middle_height+60;
        var choice_middle_y = choice_y+0;

        var is_hovering = point_in_rectangle(mouse_x, mouse_y, choice_x, choice_y, choice_x + choice_width, choice_bottom_y);
        
        var alpha = 0.5;
        var color = c_white;
        var scale = 1;

        // Smooth hover animation
        if (ds_exists(hover_progress, ds_type_map) && ds_exists(hover_scale, ds_type_map)) {
            if (!ds_map_exists(hover_progress, i)) ds_map_add(hover_progress, i, 0);
            if (!ds_map_exists(hover_scale, i)) ds_map_add(hover_scale, i, 1);

            if (is_hovering) {
                hover_progress[? i] = min(hover_progress[? i] + 1/30, 1);
                hover_scale[? i] = min(hover_scale[? i] + 0.05/30, 1.05);
            } else {
                hover_progress[? i] = max(hover_progress[? i] - 1/30, 0);
                hover_scale[? i] = max(hover_scale[? i] - 0.05/30, 1);
            }
            
            alpha = lerp(0.5, 1, hover_progress[? i]);
            color = merge_color(c_white, c_ltgray, hover_progress[? i]);
            scale = hover_scale[? i];
        }
			
        // Check for mouse click
        if (is_hovering && mouse_check_button_pressed(mb_left)) {
            if (choices[i][1] != "null") {
                handle_choice_selection(choices[i][1]);  // Pass the action name to the new function
            } else {
                // Handle "null" action (e.g., close the chat bubble)
                instance_destroy();
            }
        }

        // Draw choice bubble
        var choice_scale_x = choice_width / 880 * scale;
        var choice_scale_y = scale;
        draw_sprite_ext(choice_bubble_sprite, tail_sprite_index, choice_x + choice_width/3, choice_bottom_y, choice_scale_x, choice_scale_y, 0, color, alpha);
        draw_sprite_ext(choice_bubble_sprite, middle_sprite_index, choice_x + choice_width/3, choice_middle_y, choice_scale_x, choice_middle_height / 120 * choice_scale_y, 0, color, alpha);
        draw_sprite_ext(choice_bubble_sprite, top_sprite_index, choice_x + choice_width/3, choice_top_y, choice_scale_x, choice_scale_y, 0, color, alpha);

// Inside the for loop that draws choices
var choice_text = choices[i][0];
var wrapped_choice_text = wrap_chat_text(choice_text, choice_width - 40);  // Adjust padding

// Calculate the number of lines in the wrapped choice text
var choice_lines = string_count("\n", wrapped_choice_text) + 1;

// Adjust choice height based on number of lines
var adjusted_choice_height = max(choice_height, choice_lines * choice_line_height * choice_text_scale);

// Calculate the total height of the text
var total_text_height = choice_lines * choice_line_height * choice_text_scale;

// Calculate the starting Y position to center the text vertically
var text_start_y = choice_y + (adjusted_choice_height - total_text_height) / 2 - 45;

// Draw choice text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);  // Change to top alignment

var text_color = is_hovering ? c_white : c_black;
var outline_color = is_hovering ? c_black : c_white;

drawTextWithOutline(
    choice_x + choice_width / 3, 
    text_start_y, 
    wrapped_choice_text, 
    choice_text_scale * scale, 
    1, 
    outline_color, 
    text_color, 
    choice_width - 40
);

}
}

// Debug: draw bounding box
if (show_bounds) {
    draw_set_color(c_red);
    draw_rectangle(top_middle_x - scale_x/2, top_middle_y + 130, top_middle_x + scale_x/2, bottom_y, true);
}