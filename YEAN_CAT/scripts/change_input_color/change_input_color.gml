// Utility to change input color based on status
function change_input_color(colorName) {
    switch (colorName) {
        case "green":
            draw_set_color(c_lime);
            break;
        case "red":
            draw_set_color(c_red);
            break;
        case "aqua":
            draw_set_color(c_aqua);
            break;
        default:
            draw_set_color(c_white);  // Default color
    }
}