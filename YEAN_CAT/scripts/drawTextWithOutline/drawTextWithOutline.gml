// Helper function to draw text with an outline
function drawTextWithOutline(x, y, text, sca, offset, col1, col2) {
    draw_set_color(col1);
    draw_text_transformed(x + offset, y + offset, text, sca, sca, 0);
    draw_text_transformed(x - offset, y + offset, text, sca, sca, 0);
    draw_text_transformed(x + offset, y - offset, text, sca, sca, 0);
    draw_text_transformed(x - offset, y - offset, text, sca, sca, 0);

    draw_set_color(col2);
    draw_text_transformed(x, y, text, sca, sca, 0);
}