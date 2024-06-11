/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

if instance_exists(yeancat) {
	flying = yeancat.flying
}
//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what, 13 requirement(s) 14text color, 15object type, 16 rarity, 17variant, 18 good or bad, 19 in shop? 
if master.collection[itemidd,1]!=2 {
master.collection[itemidd,1]=2
master.collection[itemidd,7]=-2
}


//if master.collection[itemidd,5]!=2 {
//	master.collection[itemidd,5]=2
//}
master.collection[itemidd,2]+=1;
if master.collection[itemidd,3]>0 {
	if master.collection[itemidd,2]>=master.collection[itemidd,3] {
		if master.collection[master.collection[itemidd,12],0]=0 {
	master.collection[master.collection[itemidd,12],0]=1
	master.collection[master.collection[itemidd,12],19]=1
	master.collection[master.collection[itemidd,12],7]=-1
		}
	}
	
}

if !instance_exists(obj_pickupq) and collect=0 {
other.pick=self
if master.mainmenu=0 {
	global.pause=1

        audio_pause_sync_group(master.sg);
		audio_pause_all()
		
	}
var pq = instance_create_layer(room_width/2,0,"uii", obj_pickupq);
pq.variant=variant
pq.kind=2
collect=2

exit
}

if collect=-1 {
	instance_destroy();
}
if collect=1 {


if master.pascount<6 {
		if master.passives[variant,1]=1 {
			if master.passives[variant,3] < master.passives[variant,4] {
				master.passives[variant,3]+=1
			} else {
				if master.nocap=1 {
					if master.passives[variant,10]=1 {
					master.passives[variant,3]+=1
					} else {
						instance_destroy();
					}
				} else {
					instance_destroy();
				}
			}
	} else {
	for (var i=0 ; i<array_length(master.pass); i++) {
		if master.pass[i]=-1 {
			if master.notice[variant,0]<1 {
			master.notice[variant,0] = 1
			}
			master.passives[variant,1]=1
			master.passives[variant,2]=1
			master.passives[variant,3]+=1
			//master.passives[variant,7]=1
			master.pascount+=1
			master.pass[i]=variant
			break
		} else {
			if master.pass[i]=variant {
				if master.passives[variant,3] < master.passives[variant,4] {
					master.passives[variant,3]+=1
				} else {
					if master.nocap=1 {
						master.passives[variant,3]+=1
					}
				}
			
			}
		}
	}
	}
} else {
	if master.pascount = array_length(master.pass) {
		if master.passives[variant,1]=0 {
	//array_resize(master.pass,array_length(master.pass)+1);
	master.pass[array_length(master.pass)]=variant
	if master.notice[variant,0]<1 {
	master.notice[variant,0] = 1
	}
	master.passives[variant,1]=1
			master.passives[variant,2]=1
			if master.passives[variant,3] < master.passives[variant,4] {
			master.passives[variant,3]+=1
			}
	//master.passives[variant,7]=1
	master.pascount+=1
		} else {
			if master.passives[variant,3] < master.passives[variant,4] {
			master.passives[variant,3]+=1
			}
		}
	} else {
	for (var ii=0 ; ii<array_length(master.pass); ii++) {
		if master.pass[ii]=-1 {
			if master.notice[variant,0]<1 {
			master.notice[variant,0] = 1
			}
			master.passives[variant,1]=1
			master.passives[variant,2]=1
			if master.passives[variant,3] < master.passives[variant,4] {
			master.passives[variant,3]+=1
			}
				//master.passives[variant,7]=1
				master.pascount+=1
				master.pass[ii]=variant
			break
		}
	}
	}
}
instance_destroy();
}