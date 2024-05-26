/// @description Insert description here
// You can write your code in this editor

if vspeed<0 {
	if scale<.75*master.camscale {
	scale+=.05*master.camscale
} else {
	scale=.75*master.camscale
}
	if alph<1 {
	alph+=.05
	} else {
		alph=1
	}
	vspeed+=.05
} else {
	vspeed=0
	if alph>0 {
		alph-=.01
		if scale<50*master.camscale {
			if play=0 {
			audio_play_sound(snd_revive2,0,0,.8*master.sfxvol*master.mastervol)
			play=1
			}
	scale+=.5*master.camscale
	}
	
} else {
	instance_destroy();
}
}
image_xscale=scale
image_yscale=scale