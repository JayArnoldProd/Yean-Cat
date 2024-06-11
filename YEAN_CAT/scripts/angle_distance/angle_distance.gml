// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function angle_distance(argument0,argument1){
    var diff = argument1 - argument0;

    // Adjust the difference to find the shortest path
    if (diff > 180) {
        diff -= 360;
    } else if (diff < -180) {
        diff += 360;
    }

    return diff;
}
