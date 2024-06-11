/// @description Insert description here
// You can write your code in this editor



if global.pause=1 {
	if !instance_exists(restar) {
	instance_destroy()
	exit
	}
} else {
	if sounded=0 {
		if dir=0 {
			soundd=audio_play_sound_on(myEmitter,snd_light1,0,0,clamp(.3+damage/100,0,1)*master.sfxvol*master.mastervol,0,1)
		}
		if dir=1 {
			soundd=audio_play_sound_on(myEmitter,snd_light2,0,0,clamp(.3+damage/100,0,1)*master.sfxvol*master.mastervol,0,1)
		}
		if dir=2 {
			soundd=audio_play_sound_on(myEmitter,snd_light3,0,0,clamp(.3+damage/100,0,1)*master.sfxvol*master.mastervol,0,1)
		}
		if dir=3 {
			soundd=audio_play_sound_on(myEmitter,snd_light4,0,0,clamp(.3+damage/100,0,1)*master.sfxvol*master.mastervol,0,1)
		}
		if audio_is_playing(soundd) {
		audio_sound_pitch(soundd,master.keypitch*(1+(master.speedd-10)/300)*(1-master.lower/1000)*global.room_speed_set/60)
		}
		sounded=1
	}
			if instance_exists(yeancat) {
x=yeancat.x 
y=yeancat.y
if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x+lengthdir_x(400*image_xscale,image_angle),y+lengthdir_y(400*image_xscale,image_angle),0);
}
	} else {
		instance_destroy()
	}
	
}
image_angle=90*dir
time+=1

if acc>.5 {
	acc-=.01
}
decaytimer-=acc*delta_time*global.room_speed_set/60
if decaytimer<=0 {
	instance_destroy()
}

image_alpha=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*2
image_xscale=(.5-abs(decaytimer/(decaytimerset*1000000)-.5))*3.5*range*master.range
image_yscale=image_xscale