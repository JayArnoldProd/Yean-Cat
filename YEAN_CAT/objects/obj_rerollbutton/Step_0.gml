///rerollbutton step
if instance_exists(obj_Client) {
if obj_Client.show_chatbox = false {

//controller skip
if input_check_pressed("special") {
	if time>1.5 {
		if safety=0 {
			if master.banishes>0 {
				if num=1 {
					col=c_blue
					if locked=1 {
						col=c_dkgrey
					}
					scale=.37
				}
			}
		}
	}
}
if input_check_released("special") {
	if time>1.5 {
	if safety=0 {
		if num=1 {
if master.rerolls>0 {
if instance_exists(obj_levelup) {
	
		if instance_exists(obj_choicebutton) {
	with (obj_choicebutton) {
		instance_destroy();
	}
	}
	if instance_exists(obj_randombutton) {
	with (obj_randombutton) {
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
		global.pause=1
		sound=audio_play_sound(rerollsound1,0,0,master.uivol,0,.99+random(2)/100)
	var levv=instance_create_layer(room_width/2,0,"uiitop",obj_levelup)
	levv.muted=1
	master.rerolls-=1;

	}

} else {
	instance_destroy();
}
//with (obj_yesorno) {
//	instance_destroy()
//}
}
}
}
}
//controller banish
//controller skip
if input_check_pressed("action") {
	if time>1.5 {
		if safety=0 {
			if master.skips>0 {
				if num=2 {
					col=c_blue
					if locked=1 {
						col=c_dkgrey
					}
					scale=.37
				}
			}
		}
	}
}
if input_check_released("action") {
if num=2 {
	if master.banishes>0 and locked=0 {
		obj_levelup.banishing=1
		locked=1
	} else {
		if master.banishes>0 {
		obj_levelup.banishing=0
		locked=0
		col=c_navy
		scale=.32
		if locked=1 {
			col=c_ltgrey
		}
		}
	}
}
}
//controller skip
if input_check_pressed("cancel") {
	if time>1.5 {
		if safety=0 {
			if master.skips>0 {
				if num=3 {
					col=c_blue
					if locked=1 {
						col=c_dkgrey
					}
					scale=.37
				}
			}
		}
	}
}
if input_check_released("cancel") {
	/// @description Insert description here
// You can write your code in this editor
if time>1.5 {
	if safety=0 {
		if master.skips>0 {

if instance_exists(obj_levelup) {
	if num=3 {
		if instance_exists(obj_choicebutton) {
	with (obj_choicebutton) {
		instance_destroy();
	}
	}
	if instance_exists(obj_randombutton) {
	with (obj_randombutton) {
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
		sound=audio_play_sound(skipsound1,0,0,1*master.uivol*master.mastervol,0,.99+random(2)/100)
		global.pause=0
	master.skips-=1;

	}

} else {
	//instance_destroy();
}

//with (obj_yesorno) {
//	instance_destroy()
//}

}
	}
}
}
}
}

time+=.03
sss=master.camscale
if image_xscale!=scale {
image_xscale+=((scale-image_xscale)/10)
image_yscale=image_xscale*3.8
}

if instance_exists(obj_levelup) {
	if num=1 {
	name="REROLL\n("+string(master.rerolls)+")"
		y=obj_levelup.y-110*sss

	
	}
	if num=2 {
	name="BANISH\n("+string(master.banishes)+")"
		y=obj_levelup.y+100*sss



	}
	if num=3 {
	name="SKIP\n("+string(master.skips)+")"
		y=obj_levelup.y+310*sss



	}
	if obj_levelup.choicetotal>3 {
		x=obj_levelup.x+830*sss
	} else {
		x=obj_levelup.x+830*sss
		
	}
} else {
	instance_destroy()
}

if load=1 {
col=c_navy
load=0;
}

if locked=1 {
			if col != c_dkgrey {
			col=c_ltgrey
			}
		}