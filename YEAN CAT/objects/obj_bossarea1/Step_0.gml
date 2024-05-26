/// @description Insert description here
// You can write your code in this editor

if global.pause=1 {
	speed=0
	exit
}
image_alpha=sqrt(clamp(alph,0,1))
image_xscale=scale*sizee*1.05
image_yscale=scale*sizee*1.05
image_index=areaid
image_angle+=alph*8-4
sprite_index=spr_bossarea1
//types
if spawned=0 {
rand = 0
spee = 10
		if instance_exists(obj_boss) {
	owner=instance_nearest(x,y,obj_boss)
	}
	spee=10
	sizee=(1+(1-abs(obj_terrain.systemposition-180)/180))*7/8
	stayonboss=1

	scaleto=1
	growspeed=35
	
if areaid=0 {

}



spawned=1
}

if instance_exists(owner) {
	if owner.dead=1 {
		scale=scale*.95-.001
		scaleto=scaleto*.975-.0005*(global.room_speed_set/1000000*delta_time)*attackspeed
		fade=1
		alph=alph*.95-.001
		warningsize=warningsize*.95-.001*(global.room_speed_set/1000000*delta_time)*attackspeed
	if alph<=0 {
		instance_destroy();
	}
	} else {
		if owner.attacktype!=6 {
		scale=scale*.95-.001
		scaleto=scaleto*.975-.0005*(global.room_speed_set/1000000*delta_time)*attackspeed
		fade=1
		alph=alph*.95-.001
		warningsize=warningsize*.95-.001*(global.room_speed_set/1000000*delta_time)*attackspeed
		if alph<=0 {
		instance_destroy();
	}
		}
	}
if stayonboss=1 {
	x=owner.x
	y=owner.y
	//_hspeed=0
	//_vspeed=0
	} else {
	
}
} else {
	instance_destroy()
}

if warning=0 {
		if warningsize>0 {
			//layer = layer_get_id("terrainlayer")
	warningsize=(warningsize*(growspeed*1.5)-.03)/(growspeed*1.5+1)-.005*attackspeed
} else {
	warningsize=0
}
if fade=1 {
	if alph>0 {
		if warningsize<.75 {
		alph-=.02*(global.room_speed_set/1000000*delta_time)
		} else {
			warningsize-=.05*(global.room_speed_set/1000000*delta_time)
			
			if warningsize<0 {
				warningsize=0
			}
		}
		
	} else {
		//instance_destroy()
	}
} else {
	if alph<1 { 
	if scale<scaleto {
	scale=(scale*(growspeed/1.5)+scaleto)/(growspeed/1.5+1)+.003*(global.room_speed_set/1000000*delta_time)*attackspeed
} else {
	scale=scaleto
	alph=1
	fade=1
}
		alph+=.02*(global.room_speed_set/1000000*delta_time)*attackspeed
	} else {
			if scale<scaleto {
				//1.5
	scale=(scale*(growspeed/1)+scaleto)/(growspeed/1+1)+.003*(global.room_speed_set/1000000*delta_time)*attackspeed
} else {
	scale=scaleto
	fade=1
}
	}

}
} else {

	if warningsize<scaleto {
	warningsize=(warningsize*((growspeed)*1)+scaleto)/(growspeed*1+1)+.005*(global.room_speed_set/1000000*delta_time)*attackspeed
} else {
	warningsize=scaleto
	scale=0
	warning=0
}
}
hitdensity-=1
if hitdensity=0 {
	hitdensity=hitdensityset
}

if homing!=0 {
	if deflected=0 {
direction=point_direction(x,y,owner.x,owner.y-owner.tallness)
speed=10*(1-clamp(point_distance(x,y,owner.x,owner.y-owner.tallness)/homing,0,1))*(homing/100)
	}
}
if missed>0 {
	col=make_color_hsv(color_get_hue(c_gray)*missed+color_get_hue(c_white)*(1-missed),color_get_saturation(c_gray)*missed+color_get_saturation(c_white)*(1-missed),color_get_value(c_gray)*missed+color_get_value(c_white)*(1-missed));
	missed-=.01
	if missed=0 {
		col=c_ltgray
	}
	if grabbed=0 {
	//x-=missed*master.speedd/2
	}
} else {
	if col=c_ltgray {
		col=c_white
		missed=0
	}
}


x+=_hspeed*(global.room_speed_set/1000000*delta_time)
y+=_vspeed*(global.room_speed_set/1000000*delta_time)

