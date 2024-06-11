/// STEP EVENT for obj_slider
if instance_exists(obj_pausemenu) {
	x=obj_pausemenu.x+offset_x
	y=obj_pausemenu.y+offset_y+90*iii*(6/array_length(master.optionarray))
} else {
	if instance_exists(obj_options) {
	x=obj_options.x+offset_x
	y=obj_options.y+offset_y+90*iii*(6/array_length(master.optionarray))
} else {
	instance_destroy();
}
}
if rainpos<sprite_get_height(spr_sliderrainbow)/2 {
	rainpos+=(.1+.1*(iii/6))*2
} else {
	rainpos=0
}
if dir=0 { //horizontal
if mouse_check_button_pressed(mb_left) { //check when clicked on slider button
	if point_in_circle(mouse_x,mouse_y,(x-lengthh/2+15)*((1-valuee)/1)+(x+lengthh/2-15)*(valuee/1),y,20) {
		grabbed=1
	}
}
}  else { //vertical
	//need to add grabbing for vertical
}
if grabbed=1 {
	valuee=clamp(.95*(mouse_x-x)/(lengthh)+.5,0,1)
	if instance_exists(typee) {
	if iii!=-1 {
		variable_instance_set(typee,varname,valuee)
	}
	
	if varname="musicvol" or varname="mastervolset" { //special handling for musicvol
	with (master) {
		audio_sound_gain(music,musicvol*mastervol,1)
	}
	}
	if varname="uiscale" { //special handling for uiscale
	master.uiscale=master.uiscale/2+.5
	with (master) {
	scaleg=uiscale
	}
	}

}
}

