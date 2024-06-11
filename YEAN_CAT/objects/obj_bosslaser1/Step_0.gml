/// @description Insert description here
// You can write your code in this editor

if global.pause=1 {
	speed=0
	exit
}
if instance_exists(owner) {
	
	if owner.dead=1 {
		scale=scale*.95-.001*(global.room_speed_set/1000000*delta_time)*attackspeed
		scaleto=scaleto*.975-.0005*(global.room_speed_set/1000000*delta_time)*attackspeed
		fade=1
		alph=alph*.95-.003*(global.room_speed_set/1000000*delta_time)*attackspeed
		warningsize=warningsize*.95-.001*(global.room_speed_set/1000000*delta_time)*attackspeed
	if alph<=0 {
		instance_destroy();
	}
	} else {
		if owner.attacktype!=5 {
		scale=scale*.95-.001*(global.room_speed_set/1000000*delta_time)*attackspeed
		scaleto=scaleto*.975-.0005*(global.room_speed_set/1000000*delta_time)*attackspeed
		fade=1
		alph=alph*.95-.003*(global.room_speed_set/1000000*delta_time)*attackspeed
		warningsize=warningsize*.95-.001*(global.room_speed_set/1000000*delta_time)*attackspeed
		if alph<=0 {
		instance_destroy();
	}
		}
	}
	
//types
if spawned=0 {
rand = 0
spee=10
sizee=4+(1+(1-abs(obj_terrain.systemposition-180)/180))*2
stayonboss=1
scaleto=1
	//higher is slower
	laseraimspeed=sqr((2.5-(1+(1-abs(obj_terrain.systemposition-180)/180)))*2)*3/7
//if laserid=0 {
	growspeed=50
//}




spawned=1
}
if instance_exists(yeancat) {
	targetdir=point_direction(x,y,yeancat.x,yeancat.y)
}




hitdensity-=1
if hitdensity=0 {
	hitdensity=hitdensityset
}


if warning=0 {
		if warningsize>0 {
			layer = layer_get_id("terrainlayer")
	warningsize=(warningsize*(growspeed*1.5)-.01)/(growspeed*1.5+1)-.003*attackspeed
} else {
	warningsize=0
}
if fade=1 {
	if alph>0 {
		if warningsize<.5 {
		alph-=.03*(global.room_speed_set/1000000*delta_time)*attackspeed
		} else {
			warningsize-=.04*(global.room_speed_set/1000000*delta_time)

			
			if warningsize<0 {
				warningsize=0
			}
		}
	} else {
		instance_destroy()
	}
} else {
	if alph<1 { 
	if scale<scaleto {
	scale=(scale*(growspeed/2)+scaleto)/(growspeed/2+1)+.002*(global.room_speed_set/1000000*delta_time)*attackspeed
} else {
	scale=scaleto
	alph=1
	fade=1
}
		alph+=.01*(global.room_speed_set/1000000*delta_time)*attackspeed
	} else {
			if scale<scaleto {
							if round(laseraim) != targetdir {
	laseraim+=(shortestAngularDirection(laseraim,targetdir)/laseraimspeed)*(4*abs(shortestAngularDistance(laseraim,targetdir))/180)
	if laseraim>360 {
		laseraim=0
	}
	if laseraim<0 {
		laseraim=360
	}
}
	scale=(scale*(growspeed)+scaleto)/(growspeed+1)+.003*(global.room_speed_set/1000000*delta_time)*attackspeed
} else {
	scale=scaleto
	fade=1
}
	}

}
} else {
	if round(laseraim) != targetdir {
	laseraim+=(shortestAngularDirection(laseraim,targetdir)/laseraimspeed)*(3*abs(shortestAngularDistance(laseraim,targetdir))/180)
	if laseraim>360 {
		laseraim=0
	}
	if laseraim<0 {
		laseraim=360
	}
}

	if warningsize<scaleto {
	warningsize=(warningsize*((growspeed)/1.5)+scaleto)/(growspeed/1.5+1)+.003*(global.room_speed_set/1000000*delta_time)*attackspeed
} else {
	warningsize=scaleto
	scale=0
	warning=0
}
}

if warning=1 {
image_xscale=sqrt(clamp(warningsize/scaleto,0,1))*sizee
image_yscale=sqrt(clamp(warningsize/scaleto,0,1))*sizee
} else {
	image_xscale=sqrt(clamp(scale/scaleto,0,1))*sizee
	image_yscale=sqrt(clamp(scale/scaleto,0,1))*sizee
}
image_angle=laseraim
image_index=laserid

if stayonboss=1 {
	if instance_exists(owner) {
//_hspeed=lengthdir_x(spee*point_distance(x,y,owner.x,owner.y)/100,point_direction(x,y,owner.x,owner.y))
//_vspeed=lengthdir_y(spee*point_distance(x,y,owner.x,owner.y)/100,point_direction(x,y,owner.x,owner.y))
	x=owner.x
	y=owner.y
	}
} else {
	_hspeed=0
	_vspeed=0
}


if missed>0 {
	image_alpha=clamp(alph,0,.5+(clamp(1-missed,0,1))*.5)
	
} else {
	image_alpha=alph

}
if round(x)=round(owner.x) and round(y)=round(owner.y) {
	//_hspeed=0
	//_vspeed=0
}

x+=_hspeed*(global.room_speed_set/1000000*delta_time)
y+=_vspeed*(global.room_speed_set/1000000*delta_time)
} else {
	instance_destroy()
}

