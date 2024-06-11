/// @description Insert description here
// You can write your code in this editor
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

if num=2 {
	if master.banishes>0 and locked=0 {
		obj_levelup.banishing=1
		locked=1
	} else {
		if master.banishes>0 {
		obj_levelup.banishing=0
		locked=0
		}
	}
}

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

safety=0