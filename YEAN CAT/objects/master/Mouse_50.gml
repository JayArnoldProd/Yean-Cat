/// @description Insert description here
// You can write your code in this editor
if global.pause=0 {
if joystick=1 {
if mainmenu = 0 {
	if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) {
		if joystickon=1 {
			joyangle=point_direction(joystickx,joysticky,mouse_x,mouse_y)
			if point_distance(joystickx,joysticky,mouse_x,mouse_y)<joysticksize*100*camscale {
				//returns value of between 0 and 100
			joydist=(point_distance(joystickx,joysticky,mouse_x,mouse_y)/camscale)/joysticksize
			
			if joydist>100 {
				joydist=100
			}
			
			} else {
				joydist=100
			}
		}
	} else {
		joystickon=0
		joydist=0
		joyangle=0
	}
} else {
	joystickon=0
		joydist=0
		joyangle=0
	
}
}
} else {
	joystickon=0
		joydist=0
		joyangle=0
}