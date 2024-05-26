/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pausemenu) or instance_exists(obj_levelup) or instance_exists(obj_pickupq) or instance_exists(obj_reviveq) {
			if master.camscale>1 {
	master.camscale=(master.camscale*50+1)/51
} else {
	master.camscale=1
}
}

if lower>=700 {
	startmusic=0;
			if instance_exists(enemy) {
		with (enemy) {
			instance_destroy()
		}
	}
	if instance_exists(obj_weaponitem) {
		with (obj_weaponitem) {
			instance_destroy()
		}
	}
	if instance_exists(obj_passiveitem) {
		with (obj_passiveitem) {
			instance_destroy()
		}
	}
		if instance_exists(obj_item) {
			with (obj_item) {
				instance_destroy()
			}
		}

	

if !instance_exists(restar) {
	audio_stop_all();
	master.camscale=1;
	instance_create_layer(x,y,"uii",restar)
} else {
	if restar.falling !=-1 {
		if restar.falling =1 {
		if lower>1250 {
		lower=1250
	} else {
		lower=(lower*20+1250)/21
	}
		} else {
			if lower>1250 {
		lower=1250
	} else {
		lower=(lower*20+1250)/21
	}
		}
	} else {
		if lower>2000 {
		lower=2000
	} else {
		lower+=1
	}
	}
}
	
} else {
	if lower>1 {
		if instance_exists(enemy) {
		 {
			direction=point_direction(room_width/2,room_height/2,x,y)
			speed+=.3*(global.room_speed_set/1000000*delta_time)
		}
	}
	if instance_exists(obj_weaponitem) {
		with (obj_weaponitem) {
			direction=point_direction(room_width/2,room_height/2,x,y)
			speed+=.3*(global.room_speed_set/1000000*delta_time)
		}
	}
	if instance_exists(obj_passiveitem) {
		with (obj_passiveitem) {
			direction=point_direction(room_width/2,room_height/2,x,y)
			speed+=.3*(global.room_speed_set/1000000*delta_time)
		}
	}
		if instance_exists(obj_item) {
		with (obj_item) {
			direction=point_direction(room_width/2,room_height/2,x,y)
			speed+=.3*(global.room_speed_set/1000000*delta_time)
		}
		}
			if master.camscale>1 {
	master.camscale=(master.camscale*50+1)/51
} else {
	master.camscale=1
}
	}
}

// Ensure to update global.last_frame_time at the end of each frame
global.last_frame_time = current_time;
