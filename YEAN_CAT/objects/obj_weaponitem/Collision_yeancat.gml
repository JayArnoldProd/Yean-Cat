if global.pause=1 {
	exit
}

/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_pickupq) and collect=0 {
	if instance_exists(obj_yesorno) {
	with (obj_yesorno) {
		instance_destroy();
	}
	}
	if instance_exists(obj_pickupq) {
		with (obj_pickupq) {
			instance_destroy();
		}
	}
other.pick=self
if master.mainmenu=0 {
	global.pause=1

        audio_pause_sync_group(master.sg);
		audio_pause_all()
		
	}
var pq = instance_create_layer(room_width/2,0,"uii", obj_pickupq);
pq.variant=variant
pq.kind=1
collect=2
exit

}

if collect=-1 {
	instance_destroy();
}
if collect=1 {

if master.wepcount<master.maxweapons {
	if master.weapons[variant,2]=1 {
			if master.weapons[variant,4] < master.weapons[variant,5] {
				master.weapons[variant,4]+=1
			} else {
				if master.nocap=1 {
					master.weapons[variant,4]+=1
				} else {
					instance_destroy();
				}
			}
	} else {
	for (var i=0 ; i<array_length(master.weap); i++) {
		if master.weap[i]=-1 {
			
			master.weapons[variant,2]=1
			master.weapons[variant,3]=1
			//if master.weapons[variant,1]<1 {
			//	master.weapons[variant,13]=1
			//}
			master.weapons[variant,4]+=1
			master.wepcount+=1
			master.checkwep=1
			master.weap[i]=variant
			break
		} else {
			if master.weap[i]=variant {
				if master.weapons[variant,4] < master.weapons[variant,5] {
					master.weapons[variant,4]+=1
				} else {
					if master.nocap=1 {
						master.weapons[variant,4]+=1
					}
				}
			
			}
		}
	}
	}
} else {
	if master.wepcount = array_length(master.weap) {
		if master.weapons[variant,2]=0 {
	//array_resize(master.weap,array_length(master.weap)+1);
	master.weap[array_length(master.weap)]=variant
	if master.weapons[variant,4] < master.weapons[variant,5] {
	master.weapons[variant,4]+=1
	}
	master.weapons[variant,2]=1
			master.weapons[variant,3]=1
			master.wepcount+=1
			master.checkwep=1
		} else {
			if master.weapons[variant,4] < master.weapons[variant,5] {
				master.weapons[variant,4]+=1
			}
		}
	} else {
	for (var ii=0 ; ii<array_length(master.weap); ii++) {
		if master.weap[ii]=-1 {
			if master.weapons[variant,2]=0 {
			master.weapons[variant,2]=1
			master.weapons[variant,3]=1
			//if master.weapons[variant,1]<1 {
			//	master.weapons[variant,13]=1
			//}
			master.weapons[variant,4]+=1
			master.wepcount+=1
			master.checkwep=1
			master.weap[ii]=variant
			} else {
				if master.weapons[variant,4] < master.weapons[variant,5] {
				master.weapons[variant,4]+=1
			}
			}
			break
		}
	}
	}
}

instance_destroy();
}