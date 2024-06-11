/// @description Insert description here
// You can write your code in this editor
if dir=0 {
	if visible {
	obj_levelselect.charselect-=1
	audio_play_sound_on(myEmitter,uibuttonsound4,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)
	}
} else {
	if visible {
	obj_levelselect.charselect+=1
	audio_play_sound_on(myEmitter,uibuttonsound4,0,0,.75*master.uivol*master.mastervol,0,.995+random(10)/1000)
	}
}