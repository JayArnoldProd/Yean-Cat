function drawTextWithOutline(x, y, text, sca, offset, col1, col2, max_text_width = -1) {
    if (max_text_width == -1) {
        // If no max width is provided, use regular draw_text
        draw_set_color(col1);
        draw_text_transformed(x + offset, y + offset, text, sca, sca, 0);
        draw_text_transformed(x - offset, y + offset, text, sca, sca, 0);
        draw_text_transformed(x + offset, y - offset, text, sca, sca, 0);
        draw_text_transformed(x - offset, y - offset, text, sca, sca, 0);
        draw_set_color(col2);
        draw_text_transformed(x, y, text, sca, sca, 0);
    } else {
        // Use draw_text_ext_transformed if max width is provided
        draw_set_color(col1);
        draw_text_ext_transformed(x + offset, y + offset, text, -1, max_text_width, sca, sca, 0);
        draw_text_ext_transformed(x - offset, y + offset, text, -1, max_text_width, sca, sca, 0);
        draw_text_ext_transformed(x + offset, y - offset, text, -1, max_text_width, sca, sca, 0);
        draw_text_ext_transformed(x - offset, y - offset, text, -1, max_text_width, sca, sca, 0);
        draw_set_color(col2);
        draw_text_ext_transformed(x, y, text, -1, max_text_width, sca, sca, 0);
    }
}