/// @function scr_name_color(color)
/// @param {color} color - The color to name.
function scr_name_color(color){
	//variable setup
	var name = ""
	var hue=0
	var sat=0
	var val=0
	
	//retrieve hsv values
	hue=color_get_hue(color)
	sat=color_get_saturation(color)
	val=color_get_value(color)
	
	
	 var color_names = [
        // Built-in colors
        [color_get_hue(c_white), color_get_saturation(c_white), color_get_value(c_white), "White"],
        [color_get_hue(c_black), color_get_saturation(c_black), color_get_value(c_black), "Black"],
        [color_get_hue(c_red), color_get_saturation(c_red), color_get_value(c_red), "Red"],
        [color_get_hue(c_orange), color_get_saturation(c_orange), color_get_value(c_orange), "Orange"],
        [color_get_hue(c_yellow), color_get_saturation(c_yellow), color_get_value(c_yellow), "Yellow"],
        [color_get_hue(c_green), color_get_saturation(c_green), color_get_value(c_green), "Green"],
        [color_get_hue(c_blue), color_get_saturation(c_blue), color_get_value(c_blue), "Blue"],
        [color_get_hue(c_purple), color_get_saturation(c_purple), color_get_value(c_purple), "Purple"],
        [color_get_hue(c_aqua), color_get_saturation(c_aqua), color_get_value(c_aqua), "Aqua"],
        [color_get_hue(c_teal), color_get_saturation(c_teal), color_get_value(c_teal), "Teal"],
        [color_get_hue(c_maroon), color_get_saturation(c_maroon), color_get_value(c_maroon), "Maroon"],
        [color_get_hue(c_fuchsia), color_get_saturation(c_fuchsia), color_get_value(c_fuchsia), "Fuchsia"],
        [color_get_hue(c_gray), color_get_saturation(c_gray), color_get_value(c_gray), "Gray"],
        [color_get_hue(c_ltgray), color_get_saturation(c_ltgray), color_get_value(c_ltgray), "Light Gray"],
        [color_get_hue(c_dkgray), color_get_saturation(c_dkgray), color_get_value(c_dkgray), "Dark Gray"],
        [color_get_hue(c_silver), color_get_saturation(c_silver), color_get_value(c_silver), "Silver"],
        [color_get_hue(c_olive), color_get_saturation(c_olive), color_get_value(c_olive), "Olive"],
        [color_get_hue(c_navy), color_get_saturation(c_navy), color_get_value(c_navy), "Navy"],
        [color_get_hue(c_lime), color_get_saturation(c_lime), color_get_value(c_lime), "Lime"],

        // Custom colors (examples, add more as needed)
        [18, 230, 250, "Coral Pink"],
        [30, 180, 200, "Sandy Brown"],
        [45, 255, 255, "Bright Gold"],
        [60, 200, 200, "Soft Yellow"],
        [75, 150, 150, "Pale Green"],
        [90, 100, 100, "Grass Green"],
        [105, 50, 200, "Ocean Blue"],
        [120, 200, 250, "Sky Blue"],
        [135, 100, 100, "Deep Sea"],
        [150, 150, 150, "Orchid"],
        [165, 200, 200, "Lavender"],
        [180, 250, 250, "Neon Blue"],
        [195, 255, 255, "Aqua Marine"],
        [210, 230, 230, "Turquoise"],
        [225, 100, 100, "Royal Blue"],
        [240, 50, 150, "Midnight Blue"],
        [255, 150, 200, "Magenta"],
        [270, 180, 180, "Violet"],
        [285, 210, 210, "Plum"],
        [300, 240, 240, "Deep Purple"],
        [315, 255, 255, "Hot Pink"],
        [330, 100, 200, "Tulip Red"],
        [345, 150, 250, "Pastel Pink"]
    ];
	
	// Initialize a variable to store the smallest distance and corresponding color name
    var min_distance = 255; //i didnt know what to put here, so i just put 255? lmk if it should be something else
    
    // Loop through each predefined color to find the closest match
    for (var i = 0; i < color_names.length; i++) {
        var distance = calculate_color_distance(hue, sat, val, color_names[i][0], color_names[i][1], color_names[i][2]);
        if (distance < min_distance) {
            min_distance = distance;
            name = color_names[i][3]; // Store the name of the closest color
        }
    }
    
    // Return the name of the color that is the closest match
    return name;

}