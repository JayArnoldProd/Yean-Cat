// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shortestAngularDistance(argument0, argument1){
/// Find the shortest angular distance between two angles
/// @param argument0 - The first angle (in degrees)
/// @param argument1 - The second angle (in degrees)
/// @return The shortest angular distance between argument0 and argument1

    // Calculate the difference between the angles
    var diff = argument1 - argument0;

    // Normalize the difference to the range of -180 to 180 degrees
    diff = (diff + 180) mod 360 - 180;

    // Ensure the result is non-negative
    if (diff < 0)
        diff += 360;

    return diff;
}
