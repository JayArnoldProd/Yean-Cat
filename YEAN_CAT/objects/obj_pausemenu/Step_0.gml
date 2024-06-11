/// @description Insert description here
// You can write your code in this editor
al=(1-clamp((room_height/2-y)/1000,0,1))/2
if global.pause=0 and falling=0 {
	falling=-1
}
if falling=1 {
if y<room_height/2 {
	y+=(global.room_speed_set/1000000*delta_time)*((room_height/2-y)/15+5)
} else {
	y=room_height/2
	falling=0
}
} else {
	if falling =-1 {
		if y>0 {
	y-=(global.room_speed_set/1000000*delta_time)*((y)/15+5)
} else {
	//destroy buttons
	instance_destroy();
}
	}
}



anicount+=(global.room_speed_set/1000000*delta_time)*.03