/// @description Insert description here
// You can write your code in this editor
if enabled=0 {
	enabled=1
	sound=audio_play_sound_on(myEmitter,toggleon1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
} else {
	enabled=0
	sound=audio_play_sound_on(myEmitter,toggleoff1,0,0,(.7+random(5)/100)*master.uivol*master.mastervol,0,.995+random(10)/1000)
}