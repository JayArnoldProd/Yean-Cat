function drawTextWithOutline(x, y, text, scale, outline_width, outline_color, text_color, max_width) {
    draw_set_color(outline_color);
    for (var i = -outline_width; i <= outline_width; i++) {
        for (var j = -outline_width; j <= outline_width; j++) {
            draw_text_ext_transformed(x + i, y + j, text, -1, max_width, scale, scale, 0);
        }
    }
    draw_set_color(text_color);
    draw_text_ext_transformed(x, y, text, -1, max_width, scale, scale, 0);
}
