/// @description Insert description here
// You can write your code in this editor



if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	exit
	}
	}  else {
		visible=true
	if decided=0 {
		decaytimerset=duration
decaytimer=decaytimerset*1000000	
if instance_exists(enemy) {
			target=instance_nearest(x,y,enemy)
		}
		if instance_exists(obj_boss) {
			target=instance_nearest(x,y,obj_boss)
		}
		if instance_exists(target) {
			dis=distance_to_object(target)
			direction=point_direction(x,y,target.x,target.y)
			speed=projectilespeed
		} else {
			instance_destroy()
		}
		decided=1
	}

		if oscdir=1 {
	if oscil<oscrange {
		oscil+=ratee*.02
	} else {
		oscdir=-1
	}
} else {
	if oscil>-oscrange {
		oscil-=ratee*.02
	} else {
		oscdir=1
	}
}
direction+=oscil
image_angle=direction

if image_angle<90 or image_angle >270 {
	facing=1
} else {
	facing=-1
}
if instance_exists(yeancat) {
	if decaytimer>0 {
	decaytimer-=delta_time*global.room_speed_set/60
	} else {
		evap=1
	}
	if evap=1 {
		if image_xscale>0 {
			image_xscale-=.01
			image_yscale=image_xscale
			image_alpha-=.01
		} else {
			instance_destroy()
		}
	}
//projectilespeed=1
//projectilesize=1
//orbitangle=0
//range=1
//oscrange=.1




} else {
	instance_destroy()
}




	}
	
	
//image_angle=direction*(1/(1+abs(_vspeed/10)))+point_direction(xprevious,yprevious,x,y)*(1-(1/(1+abs(_vspeed/10))))
time+=1

if evap=0 {
image_xscale=projectilesize
image_yscale=image_xscale
}
if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x,y,0)
}
if audio_is_playing(soundd) {
		audio_sound_pitch(soundd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
		}