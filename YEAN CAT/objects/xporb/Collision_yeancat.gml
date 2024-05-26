/// @description Insert description here
// You can write your code in this editor
master.xp+=xpvalue*master.graduate*master.flow
var yexp=xpvalue
with (yeancat) {
if xpnote=0 {
xpsound = audio_play_sound(xp1,0,0);
}
if xpnote=1 {
xpsound = audio_play_sound(xp2,0,0);
}
if xpnote=2 {
xpsound = audio_play_sound(xp3,0,0);
}
if xpnote=3 {
xpsound = audio_play_sound(xp4,0,0);
}
if xpnote=4 {
xpsound = audio_play_sound(xp5,0,0);
}
if xpnote=5 {
xpsound = audio_play_sound(xp6,0,0);
}
if xpnote=6 {
xpsound = audio_play_sound(xp7,0,0);
}
audio_sound_gain(xpsound,1*master.mastervol*master.sfxvol*clamp(.3+(.7*(yexp-1)/100),0,1),0);
xpnote+=1
}

{
	instance_destroy()
}