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
		
		if audio_emitter_exists(myEmitter) {
			audio_emitter_position(myEmitter,x,y,0)
		}
		
		if sndply=0 {
			if chak=1 {
			sndid=snd_choir1
			image_index=0
		}
		if chak=2 {
			sndid=snd_choir2
			image_index=1
		}
		if chak=3 {
			sndid=snd_choir3
			image_index=2
		}
		if chak=4 {
			sndid=snd_choir4
			image_index=3
		}
			orbsnd=audio_play_sound_on(myEmitter,sndid,0,0,1*master.sfxvol*master.mastervol,0,1)
			sndply=1
		}
		if audio_is_playing(orbsnd) {
		audio_sound_pitch(orbsnd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
		}
	if decided=0 {
		decaytimerset=duration
decaytimer=decaytimerset*150	
		if instance_exists(obj_gospelchoir) {
			rot+=randrot*projectilespeed
		}
		orbitangle=chak*360/4+rot
		if chak=1 {
			c_chak=c_red
		}
		if chak=2 {
			c_chak=c_orange
		}
		if chak=3 {
			c_chak=c_yellow
		}
		if chak=4 {
			c_chak=c_green
		}
		if chak=5 {
			c_chak=c_aqua
		}
		if chak=6 {
			c_chak=c_purple
		}
		if chak=7 {
			c_chak=make_color_hsv(212, 129, 255);
		}
	}
if instance_exists(yeancat) {
	if decaytimer>0 {
	decaytimer-=1*(global.room_speed_set/1000000*delta_time)
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
if oscdir=1 {
	if oscil<oscrange {
		oscil+=ratee*.001
	} else {
		oscdir=-1
	}
} else {
	if oscil>-oscrange {
		oscil-=ratee*.001
	} else {
		oscdir=1
	}
}

orbitangle+=(orbitspeed/2)
	if rangee<range {
		rangee+=.01*projectilespeed
	}
x=yeancat.x+lengthdir_x(300*(rangee*(1+oscil))*master.range,orbitangle)
y=yeancat.y+lengthdir_y(300*(rangee*(1+oscil))*master.range,orbitangle)
} else {
	instance_destroy()
}




	}
	
	
//image_angle=direction*(1/(1+abs(_vspeed/10)))+point_direction(xprevious,yprevious,x,y)*(1-(1/(1+abs(_vspeed/10))))
time+=1

image_xscale=projectilesize
image_yscale=image_xscale