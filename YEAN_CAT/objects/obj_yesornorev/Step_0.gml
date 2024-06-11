/// @description Insert description here
// You can write your code in this editor
if master.showad=2 {
	if global.pause=1 {
		exit
	}
	
	if master.reviving=1 {
			yeancat.healthh=yeancat.maxhealth*(1-(1-.5*master.einstein)/master.leinstein)
	master.revani=1;
	master.deaths+=1
	yeancat.deaths+=1
	yeancat.invincible=1
	instance_create_layer(yeancat.x,yeancat.y,"uii",obj_miraclespash);
	}
	master.reviving=0
	master.showad=0
fall=1

}

if fall=1 {
		if instance_exists(obj_reviveq) {
with (obj_reviveq) {
	falling=-1
	
}
} else {
	instance_destroy();
}
}


time+=.03
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale*2.7
}
if instance_exists(obj_reviveq) {
if yorn=2 {
	if os_type=os_ios or os_type=os_android {
	name="REVIVE\n(Watch Ad)"
	} else {
	name="REVIVE\n1 Remain"
	}
	x=obj_reviveq.x+200
	y=obj_reviveq.y+330
} 
if yorn=-1 {
	name="GIVE UP"
	x=obj_reviveq.x-200
	y=obj_reviveq.y+330
}
if yorn=1 {
	name="REVIVE\n("+string(master.revives-master.deaths)+" Remain)"
	x=obj_reviveq.x+200
	y=obj_reviveq.y+330
}
}

if load=1 {
	if yorn=1 or yorn=2 {
		col=c_aqua
	}
	if yorn=-1 {
		col=c_maroon
	}

load=0;
}