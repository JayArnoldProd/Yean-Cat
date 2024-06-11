/// @description Insert description here
// You can write your code in this editor

//1=effected by gravity,0=not effected,-1=reversed gravity,2=effected by gravity always
gravpull=1
gravstr=.75
vspeedset=0
myEmitter=audio_emitter_create()
pick=choose(1,2,3)
if pick=1 {
sound=snd_pisces1
}
if pick=2 {
sound=snd_pisces2
}
if pick=3 {
sound=snd_pisces3
}
soundd=audio_play_sound_on(myEmitter,sound,0,0,.8*master.sfxvol*master.mastervol,0,1)
decided=0
mouthopen=15
target=noone
bulletImage = spr_fish;
stepp=0
image_speed=0
image_xscale=1
image_yscale=image_xscale
sx=x
sy=y
dirr=0
grabbing=0
own=0
timePassed = 0; // Initialize a variable to keep track of time
ratee=1
orbitspeed=1
projectilespeed=5
projectilesize=1
criticalchance=0;
damage=1
duration=2
evap=0
hit=1;
dis=0
target=noone;
tar=0
fade=0;
fading=0;
time=50;
penetrate=0;
suck=5
ratemult=0
prevtarg=noone
facing=1
attacktimerset=ratee
attacktimer=attacktimerset*1000000
face=0
decaytimerset=duration
decaytimer=decaytimerset*1000000
//chakras
chak=1
orbitangle=0
range=2
rangee=2
oscrange=2
oscil=0
oscdir=choose(-1,1)
rot=0
c_chak=c_red
target=noone
directionn=0
dirc=0
bullet_height_fromground=10
_hspeed=0
_vspeed=0





