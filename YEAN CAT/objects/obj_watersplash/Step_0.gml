/// @description Insert description here
// You can write your code in this editor



if global.pause=1 {
	if !instance_exists(restar) {
	instance_destroy()
	exit
	}
} else {
			if instance_exists(yeancat) {

	} else {
		instance_destroy()
	}
	
}

time+=1

if acc>1 {
	acc-=.015
}
decaytimer-=acc*1.25*delta_time*global.room_speed_set/60
if decaytimer<=0 and !audio_is_playing(soundd) {
	instance_destroy()
}

image_alpha=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*2
image_xscale=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*2*range/1500
image_yscale=image_xscale
audio_sound_pitch(soundd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
audio_sound_gain(soundd,sqrt(clamp((.5-abs(decaytimer/(decaytimerset*1000000)-.5))*gan+.01,.01,1))*master.sfxvol*master.mastervol,0)