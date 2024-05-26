// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function seconds_to_time(P)
/// @param P Total number of seconds
/// @description Converts a total seconds value into hours, minutes, and seconds
/// @return Array with three values: hours (H), minutes (M), and seconds (S)

function seconds_to_time(argument0) {
	var P = argument0
    var time_array = array_create(3, 0); // Create an array with three elements initialized to 0

    time_array[2] = P div 3600; // Calculate hours
    P = P mod 3600; // Remaining seconds after removing hours

    time_array[1] = P div 60;  // Calculate minutes
    P = P mod 60;   // Remaining seconds after removing minutes

    time_array[0] = P; // The remaining seconds

    return time_array;
}