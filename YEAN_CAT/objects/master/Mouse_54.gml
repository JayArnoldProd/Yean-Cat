/// @description Insert description here
// You can write your code in this editor
if mainmenu=0 {
		if os_type=os_ios or os_type=os_android {
			if !instance_exists(restar) {
if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) and !instance_exists(obj_upgrademenu) {
	
if global.pause=0 {
	if !instance_exists(obj_pausemenu) {
	instance_create_layer(room_width/2,0,"uii",obj_pausemenu)
	}
	global.pause=1
} else {
	global.pause=0
}

    if global.pause {
       if audio_sync_group_is_playing(sg) {
	   audio_pause_sync_group(sg);
	   }
		audio_pause_all();
    } else {
        if !audio_sync_group_is_playing(sg) {
		audio_resume_sync_group(sg);
		}
		audio_resume_all();
    }
} else {
	
}
	}
		}
}