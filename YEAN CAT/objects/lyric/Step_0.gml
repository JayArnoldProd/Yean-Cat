/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

if duration=-1 {
} else {
	if duration>0 {
		duration-=1
	} else {
		instance_destroy();
	}
}