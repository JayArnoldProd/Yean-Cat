// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @param argument0 - The first angle (in degrees)
/// @param argument1 - The second angle (in degrees)
/// @return 1 if clockwise, -1 if counterclockwise

function shortestAngularDirection(argument0, argument1)
{
    // Calculate the difference between the angles
    var diff = argument1 - argument0;

    // Normalize the difference to the range of -180 to 180 degrees
    diff = (diff + 180) mod 360 - 180;

    // Determine the direction based on the sign of the difference
    if (diff == 0)
    {
        return 0; // No angular difference (angles are the same)
    }
    else if (diff > 0)
    {
        return 1; // Clockwise
    }
    else
    {
        return -1; // Counterclockwise
    }
}