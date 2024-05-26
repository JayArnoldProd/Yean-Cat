///STEP EVENT OF obj_options
if onscreen !=0 {
	 if alp <.7 {
		 alp+=.01
	 }
} else {
	if alp >0 {
		 alp-=.01
	 }
}

time+=(global.room_speed_set/1000000*delta_time)*.03
if selected != -1 {
	if slide < 1 {
	slide+=(global.room_speed_set/1000000*delta_time)*.05*clamp(1-slide,.1,1);
	} else {
		slide=1
	}
	
} else {
	if slide > 0 {
		slide-=(global.room_speed_set/1000000*delta_time)*.05*clamp(slide,.1,1);
	} else {
		slide = 0;
	}
}

if onscreen=1 {
	if x< room_width/2 {
		x+=(global.room_speed_set/1000000*delta_time)*20*(room_width-x)/500
	} else {
		x=room_width/2
	}
} else {
	if onscreen=-1 {
		if x> room_width/2 {
		x-=(global.room_speed_set/1000000*delta_time)*20*(x-room_width/2)/500
	} else {
		x = room_width/2
		onscreen=1
	}
		
	} else {
		
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		x=0
		instance_destroy();
	}
	}
}

// exit options for phone devices
if ((os_type=os_ios or os_type=os_android) and mouse_check_button_pressed(mb_right)) or input_check_pressed("pause") {
if master.mainmenu=1 {
	if !instance_exists(obj_start) {
onscreen=0;
	instance_create_layer(room_width, room_height/2-50, "uii", obj_start);
	instance_create_layer(room_width, room_height/2+125, "uii", obj_upgrade);
	instance_create_layer(room_width, room_height/2+300, "uii", obj_unlock);
	instance_create_layer(room_width, room_height/2-350, "uiitop", obj_logo);
}
}
}