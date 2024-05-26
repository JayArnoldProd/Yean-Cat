/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	exit
	}
	
	
} else {
	sx=xprevious-x
	sy=yprevious-y
	if instance_exists(yeancat) {
speed=vspeedset*master.projectilespeed*yeancat.oxyspeed*projectilespeed
	} else {
		speed=vspeedset*master.projectilespeed*projectilespeed
	}
}
if stepp<10 {
	stepp+=.5
}