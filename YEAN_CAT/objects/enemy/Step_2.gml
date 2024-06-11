///enemy (parent object) End Step
if x>room_width/2-3/8*room_width*master.camscale or x<room_width/2+3/8*room_width*master.camscale or y>room_height/2-room_height*3/8*master.camscale or y<room_height/2+room_height*3/8*master.camscale {		

if time > 100-clamp(instance_number(enemy)/5,0,98) {
	instance_destroy();
}
}