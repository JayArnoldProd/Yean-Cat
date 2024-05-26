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
		
	if decided=0 {
		decaytimerset=duration
decaytimer=decaytimerset*1000000
if instance_exists(yeancat) {
	if yeancat.onground=1 {
		direction=random(180)
	} else {
		direction=random(360)
	}
}

		decided=1
	}
	imageran=random(50)-20
	walph=clamp(clamp(.25+damage/20,0,.75)*(1+imageran/200),0,1);
speed=projectilespeed
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
imageran=random(100)-50

image_angle=((direction+90+imageran))/10

if random(100) <2 {
facing=-facing
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
	imageran=random(30)-15
image_xscale=projectilesize+imageran/200
imageran=random(30)-15
image_yscale=image_xscale*(1+imageran/200)
}

if audio_emitter_exists(myEmitter) {
			audio_emitter_position(myEmitter,x,y,0)
		}
if audio_is_playing(soundd) {
	audio_sound_gain(soundd,(.5+(damage)/100)*master.sfxvol*master.mastervol,0)
		audio_sound_pitch(soundd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
		}