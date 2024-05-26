/// @description Insert description here
// You can write your code in this editor

//1=effected by gravity,0=not effected,-1=reversed gravity,2=effected by gravity always
gravpull=1
gravstr=.75
vspeedset=0
worldd=[]
decided=0
bulletImage = spr_chakraorb;
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
ratee=1
orbitspeed=1
projectilespeed=1.5
projectilesize=1.25
criticalchance=0;
damage=1
duration=2
evap=0
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
//chakras
chak=1
orbitangle=0
range=2
rangee=0
oscrange=0
oscil=0
oscdir=1
rot=0
c_chak=c_red
target=noone
directionn=0
dirc=0
bullet_height_fromground=10
_hspeed=0
_vspeed=0

_vspeed=0
myEmitter=audio_emitter_create()
orbsnd=audio_play_sound(nothingsound,0,0)
sndid=snd_chakra1
sndply=0


