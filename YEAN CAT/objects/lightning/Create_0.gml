/// @description Insert description here
// You can write your code in this editor
target=noone
//1=effected by gravity,0=not effected,-1=reversed gravity,2=effected by gravity always
gravpull=1
gravstr=.75
xx=0
yy=0
chainn=0
chaining=0
vspeedset=0
worldd=[]
dd=1
decided=0
bulletImage = sprlongchain;
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
orbitspeed=2
projectilespeed=1
projectilesize=1
criticalchance=0;
damage=10
duration=4

acc=1.5
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
attacktimerset=0
attacktimer=0
face=0
decaytimerset=0
decaytimer=0
image_xscale=0
image_yscale=0
//chakras
chak=1
orbitangle=0
visible=true
range=500
rangee=500
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

soundd=audio_play_sound(nothingsound,0,0)
myEmitter=audio_emitter_create()
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
	var pick = choose(1,2,3)
	if pick=1 {
		snd=snd_shock1
	}
	if pick=2 {
		snd=snd_shock2
	}
	if pick=3 {
		snd=snd_shock3
	}
	soundd=audio_play_sound_on(myEmitter,snd,0,0,1*master.sfxvol*master.mastervol)



