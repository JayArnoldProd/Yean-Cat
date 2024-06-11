// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// Calculate the angle a2 based on angle a and height h
/// @param a - The original angle (in degrees)
/// @param h - The height (0 to scalingValue)
/// @param scalingValue - The scaling value (default 100)
/// @return The calculated angle a2

function calculateAngle(argument0, argument1, argument2)
{
    if (argument1 == 0)
    {
       if (argument0 < 45 ) or (argument0>315) {
		   //facingright
		   return 0
		}
		if (argument0 > 45 ) and (argument0<135) {
		   //facingup
		   return 0
		}
		if (argument0 > 135 ) and (argument0<225) {
		   //facingleft
		   return 0
		}
		if (argument0 >225 ) and (argument0<315) {
		   //facingdown
		   return 0
		}
    }
          if (argument0 < 45 ) or (argument0>315) {
		   //facingright
		   return (argument0)+clamp((shortestAngularDistance(argument0,0)/45),-.5,.5)
		}
		if (argument0 > 45 ) and (argument0<135) {
			 return (argument0)+clamp((shortestAngularDistance(argument0,90)/45),-.5,.5)
		   //facingup

		}
		if (argument0 > 135 ) and (argument0<225) {
			return (argument0)+clamp((shortestAngularDistance(argument0,180)/45),-.5,.5)
		   //facingleft

		}
		if (argument0 >225 ) and (argument0<315) {
			return (argument0)+clamp((shortestAngularDistance(argument0,270)/45),-.5,.5)
		   //facingdown

		}
}

//// Example usage:
//var originalAngle = 45;  // Original angle (0 to 360 degrees)
//var height = 50;        // Height value
//var scaling = 100;      // Scaling value

//var calculatedAngle = calculateAngle(originalAngle, height, scaling);
//show_message("Calculated Angle (a2): " + string(calculatedAngle));
