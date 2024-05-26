/// @description Insert description here
// You can write your code in this editor
	shownmessage=master.shownmessage

if shownmessage=0 and master.tutorial<2  and vid=0 {
	sprite_index=spr_empty
	if !(video_get_status() == video_status_playing) {
		audio_pause_all()
	video_open("WintersColdShrunk.mp4")
	
	video_enable_loop(false)
	if master.tutorial<3 {	
		video_resume()
	} else {
		video_pause()
		video_close();
	}
	vid=1
	}
}
accel+=.00012*power(clamp(scale/2,1,999),4)
scale+=accel
if scale>.002 and played=0 {
	if playing=0 and scale<1 {
	tagg=audio_play_sound(producertag,1,0);
	audio_sound_gain(tagg,1*master.sfxvol*master.mastervol,0);
	}
	played=1
}
if image_alpha <1 {
	image_alpha+=.004
}
if scale>20 {
	image_alpha-=.002
}
image_xscale=scale
image_yscale=scale


var posperc2= video_get_position()/video_get_duration()

if (video_get_status() == video_status_playing) {
	playing=1
	var posperc= video_get_position()/video_get_duration()
	//start
	if posperc>.98 and posperc<.985{
	with (obj_start) {
		if !instance_exists(obj_levelselect) {
	var lev = instance_create_layer(room_width, room_height/2, "uii", obj_levelselect);
col=c_black
master.updatetext=1
master.updatestats=1
alarm[0]=10
}
if instance_exists(yeancat) {
	yeancat.healthh=yeancat.maxhealth
}
	}
}
//begin
if posperc>.99 and posperc<.995{
	with (obj_begin) {
		if master.characters[master.charselect,0]=1 {
col=c_white
alarm[0]=10
obj_levelselect.alarm[0]=10
yeancat.positionplace=1

master.spawnthings=1
with (master) {
for (i=0; i<array_length(weapons); i++) {
	diswep[i]=weapons[i,3]
	lockwep[i]=weapons[i,13]
	}
	for (i=0; i<array_length(items); i++) {
	disite[i]=items[i,3]
	}
	for (i=0; i<array_length(passives); i++) {
	dispas[i]=clamp(notice[i,0],0,1)
	lockpas[i]=clamp(notice[i,1],0,1)
	//passives[i,7]=lockpas[i]
	}
}
}
	}
}
	
if (input_check_pressed("pause")) and scale>200 {
	startmusic=1
	
		video_pause()
		video_close();
		if !audio_is_playing(master.music) {
			audio_resume_all();
			//audio_stop_sound(tagg)
			
		}
			instance_destroy()
    
	
}
} else {
	if posperc2>.01 {
	if playing=1 {
		with (master) {
				//tutorial=2
				startmusic=1
				audio_stop_sound(music)
			music=audio_play_sound(wcnyanblend,1,0)
			loop=1
			}
		if !audio_is_playing(master.music) {
			tutorial=2
			//audio_stop_sound(tagg)
			playing=0
			video_pause()
			video_close();
			audio_resume_all();
			instance_destroy()
		}
	
	
	if scale>200 {
		playing=0
		video_pause()
		video_close()
	instance_destroy()
}
	} else {
		if master.tutorial=0 {
		master.tutorial=1
		}
	}
}
	
}