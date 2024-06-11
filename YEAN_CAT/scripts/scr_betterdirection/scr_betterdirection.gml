// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_betterdirection(argument0){
/// ConvertDirection(degrees, facing_left)
/// Converts a direction in degrees to the specified range.
/// Arguments:
/// degrees - The direction in degrees (0 to 360).
/// facing_left - Whether the object is facing left (true) or right (false).

var dir = argument0; // Input direction in degrees
var facing_left = 1
if dir>90 and dir<270 {
facing_left = 1; // Is the object facing left?
} else {
facing_left = 0
}
if (facing_left) {
    // Convert to the range 0-360 when facing left
    while (dir < 0) {
        dir += 360;
    }
    while (dir >= 360) {
        dir -= 360;
    }
} else {
    // Convert to the range -180 to 180 when facing right
    if (dir > 180) {
        dir -= 360;
    }
}

return dir; // Return the converted direction

}