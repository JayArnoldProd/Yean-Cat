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
		if instance_exists(obj_chains) {
			rot=obj_chains.rott+directionn
		}
		orbitangle=rot
		decided=1
	}
if instance_exists(yeancat) {

//projectilespeed=1
//projectilesize=1
//orbitangle=0
//range=1
//oscrange=.1

	facing=yeancat.facing
orbitangle-=(orbitspeed/2)
	if rangee<range {
		rangee+=.02*ratee
	}
x=yeancat.x
y=yeancat.y
} else {
	instance_destroy()
}




	}
	
	if acc>.75 {
	acc-=.005
}


	
image_angle=orbitangle
time+=1
var rat = (.5-abs(decaytimer/(decaytimerset*1000000)-.5))
image_xscale=rat*rangee
image_yscale=image_xscale
if audio_is_playing(soundd) {
audio_sound_pitch(soundd,clamp(rat*2,0,1))
audio_sound_gain(soundd,rat*master.sfxvol*master.mastervol,0)
}
if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x+lengthdir_x(image_xscale*530,image_angle),y+lengthdir_y(image_xscale*530,image_angle),0)
}
decaytimer-=acc*delta_time*global.room_speed_set/60
if decaytimer<=0 {
	decaytimer=0
	instance_destroy()
}
