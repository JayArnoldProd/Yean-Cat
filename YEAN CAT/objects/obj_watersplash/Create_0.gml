/// @description Insert description here
// You can write your code in this editor



bulletImage = spr_watersplash;
stepp=0
image_speed=0
image_xscale=0
image_yscale=image_xscale
sx=x
sy=y
dirr=0
grabbing=0
own=0
timePassed = 0; // Initialize a variable to keep track of time
ratee=4
range=1
soundd=audio_play_sound(nothingsound,0,0)

projectilespeed=1
projectilesize=.5
criticalchance=0;
damage=1
duration=3;
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
acc=2
target=noone
directionn=0
dirc=0
bullet_height_fromground=10
_hspeed=0
_vspeed=0
sound=audio_play_sound(nothingsound,0,0)
_vspeed=0
gan=((.5+clamp(damage/500,0,.5)-random(10)/100))
myEmitter=audio_emitter_create()
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
if round(random(2))=2 {
	var pick = choose(1,2,3,4)
	if pick=1 {
		snd=snd_holywater1
	}
	if pick=2 {
		snd=snd_holywater2
	}
	if pick=3 {
		snd=snd_holywater3
	}
	if pick=4 {
		snd=snd_holywater4
	}
	soundd=audio_play_sound_on(myEmitter,snd,0,0,gan)
}

