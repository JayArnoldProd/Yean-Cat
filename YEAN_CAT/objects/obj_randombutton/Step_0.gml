if instance_exists(obj_Client) {
if instance_exists(obj_levelup) {
if num=1 {
	if col!=c_red {
	if obj_levelup.banishing=0 {
		if col != c_maroon {
		col=c_maroon
		scale=.33
		}
	} else {
		col=c_ltgrey
	}
}
}
if !obj_Client.show_chatbox {
//gamepad select
//left bumper random always
if (input_check_pressed("left_bumper")) {
	if num=1 {
	if obj_levelup.banishing=0 {
		col=c_red
		scale=.37
	} else {
	col=c_ltgrey
	}
}
}
if (input_check_released("left_bumper")) {
	if obj_levelup.banishing=0 {
	if time>1.5 {
	if safety=0 {
	if num=1 {
	master.randomchoice=1
	}

} else {
	instance_destroy();
}
}
} else {
	//play error sound
}
safety=0
}
if (input_check_pressed("right_bumper")) {
if num=2 {
		col=c_red
		scale=.37
}
}
if (input_check_released("right_bumper")) {
	if time>1.5 {
	if safety=0 {
if instance_exists(obj_levelup) {
	if num=2 {
	master.randomchoiceonce=1
	}
}
} else {
	instance_destroy();
}
}
//with (obj_yesorno) {
//	instance_destroy()
//}
safety=0
}
}
} else {
	instance_destroy();
}
}

time+=.03
sss=master.camscale
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale*3.8
}

if instance_exists(obj_levelup)  {
if !instance_exists(obj_choicebutton) {
		if instance_exists(obj_choicebutton) {
	with (obj_choicebutton) {
		instance_destroy();
	}
	}
	if instance_exists(obj_rerollbutton) {
	with (obj_rerollbutton) {
		instance_destroy();
	}
	}
	if instance_exists(obj_levelup) {
	with (obj_levelup) {
		instance_destroy();
	}
	}
	if instance_exists(obj_rerollbutton) {
	with (obj_rerollbutton) {
		instance_destroy();
	}
	}
	audio_pause_sync_group(master.sg);
		audio_pause_all()
		global.pause=0
	//master.skips-=1;
instance_destroy();
exit
}
	if num=1 {
	name="RANDOM\n(ALWAYS)"
	if obj_levelup.choicetotal>3 {
		x=obj_levelup.x-520*master.camscale
	} else {
		x=obj_levelup.x-500*master.camscale
		
	}
	
	}
	if num=2 {
	name="RANDOM\n(ONCE)"
	if obj_levelup.choicetotal>3 {
		x=obj_levelup.x+520*master.camscale
	} else {
		x=obj_levelup.x+500*master.camscale
		
	}


	}
	if obj_levelup.choicetotal>3 {
		y=obj_levelup.y-373*master.camscale
	} else {
		y=obj_levelup.y-295*master.camscale
		
	}
} else {
	instance_destroy()
}

if load=1 {
	
		col=c_maroon

load=0;
}

if instance_exists(obj_levelup) {
if obj_levelup.banishing=1 {
	if num=1 {
	if col !=c_dkgrey {
	col=c_ltgrey
	}
	}
}
}