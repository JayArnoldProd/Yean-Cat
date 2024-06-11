/// @description Insert description here
// You can write your code in this editor
if joystick=1 {
if mainmenu != 1 {
	if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) and !instance_exists(obj_upgrademenu) and global.pause = 0 {
		joystickon=1
		joystickx=mouse_x
		joysticky=mouse_y
		joyangle=0
	}
}
}

//splashchoice=irandom(array_length(splash)-1);
//chosensplash=splash[splashchoice]
//splashtime=0
//splashangle=13
//splashalpha=0