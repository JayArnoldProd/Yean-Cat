/// @description Insert description here
// You can write your code in this editor
s_emit=audio_emitter_create()
	if audio_emitter_exists(s_emit) {
	audio_emitter_position(s_emit,x,y,0);
	var gun = choose(0,1,2)

if gun = 0 {
	gunsnd=audio_play_sound_on(s_emit,gun1,0,0);
}
if gun = 1 {
	gunsnd=audio_play_sound_on(s_emit,gun2,0,0);
}
if gun = 2 {
	gunsnd=audio_play_sound_on(s_emit,gun3,0,0);
}
audio_sound_gain(gunsnd,1*master.mastervol*master.sfxvol,0);
	}
//1=effected by gravity,0=not effected,-1=reversed gravity,2=effected by gravity always
gravpull=1
gravstr=.75
vspeedset=0
worldd=[]

bulletImage = spr_nerfbullet;
stepp=0
image_speed=0
image_xscale=.5*master.projectilesize
image_yscale=image_xscale
sx=x
sy=y
dirr=0
grabbing=0
own=0
timePassed = 0; // Initialize a variable to keep track of time
ratee=4
range=1
projectilespeed=1.5
projectilesize=.75
criticalchance=0;
damage=1
duration=4;
hit=1;
target=noone;
tar=0
fade=0;
fading=0;
time=50;
penetrate=0;
suck=5
ratemult=0
prevtarg=noone
attacktimerset=ratee
attacktimer=attacktimerset*1000000
face=0
decaytimerset=duration
decaytimer=decaytimerset*1000000

target=noone
directionn=0
dirc=0
bullet_height_fromground=10
_hspeed=0
_vspeed=0

_vspeed=0



