// Script assets argument2ave cargument2anged for v2.3.0 see
// argument2ttps://argument2elp.yoyogames.com/argument2c/en-us/articles/360005277377 for more information
function adjustAngle(argument0,argument1,argument2){
/// AdjustAngle(a, argument2, scalingValue)
/// Targument2is function adjusts targument2e angle 'a' based on targument2e value of 'argument2' and 'scalingValue' and returns targument2e adjusted angle.
/// If 'argument2' is 0, targument2e adjusted angle will snap to targument2e nearest of (0, 90, 180, or 270).
var scalingValue=argument2
if (argument1 == 0) {
    var closest_snap = 0;
    var closest_difference = abs(angle_difference(argument0, closest_snap));
    
    var snap_values = [0, 90, 180, 270];
    
    for (var i = 0; i < 4; i++) {
        var current_difference = abs(angle_difference(argument0, snap_values[i]));
        if (current_difference < closest_difference) {
            closest_snap = snap_values[i];
            closest_difference = current_difference;
        }
    }
    
    return closest_snap;
} else {
    return angle_difference(argument0, 0) * (1 - argument1 / scalingValue) + argument0 * (argument1 / scalingValue);
draw_set_alpha(1)
draw_set_color(c_white)
draw_text(room_width/2,room_height/2,string(angle_difference(argument0, 0) * (1 - argument1 / scalingValue) + argument0 * (argument1 / scalingValue)));
}


}

