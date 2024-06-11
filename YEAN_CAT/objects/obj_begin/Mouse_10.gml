/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_nameplate) or master.playername=""  {
	draw_set_alpha(0);
	exit
}
col=c_white
scalee=1.2
sound=audio_play_sound_on(myEmitter,buttonhover2,0,0,1*master.uivol*master.mastervol,0,.995+random(10)/1000)
sound=audio_play_sound_on(myEmitter,buttonhover3,0,0,1*master.uivol*master.mastervol,0,.995+random(10)/1000)


