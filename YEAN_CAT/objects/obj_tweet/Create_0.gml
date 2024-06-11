/// @description Insert description here
// You can write your code in this editor
//0=player 1=p2, 2=p3, 3=p4, 4=enemy
wait=0

gravpull=0
gravstr=0
vspeedset=0
worldd=[]
_hspeed=0
_vspeed=0;
//1=effected by gravity,0=not effected,-1=reversed gravity,2=effected by gravity always
gravpull=0
gravstr=0
vspeedset=0
bullet_height_fromground=10
own=0
timePassed = 0; // Initialize a variable to keep track of time
ratee=1
range=1
projectilespeed=0
projectilesize=0
criticalchance=0;
damage=4
duration=4;
hit=1;
target=noone;
tar=0
fade=0;
fading=0;
time=0;
penetrate=0;
suck=5
ratemult=0
myEmitter=audio_emitter_create()
audio_emitter_position(myEmitter,x,y,0)
pitch=.99+random(20)/1000
soundd=audio_play_sound_on(myEmitter,snd_tweet1,0,0,(.6+random(10)/100)*master.sfxvol*master.mastervol,0,pitch)
soundpart=0
attacktimerset=ratee
attacktimer=attacktimerset*1000000

decaytimerset=duration
decaytimer=decaytimerset*1000000

image_xscale=0
image_yscale=0
face=1 
target=noone
directionn=0
dirc=0


if target !=noone {
	direction=point_direction(x,y,target.x-target.spd*((point_distance(x,y,target.x,target.y)/60)*(master.speedd+5)/10),target.y)
} else {
	direction=random(360);
}



if direction<180 {
	if direction>90 {
		spin=-1
	} else {
		spin=1
	}
} else {
	if direction<270 {
		spin=1
	} else {
		spin=-1
	}
}

if direction<90 or direction>270 {
	if direction<90 {
	dirr=0
	} else {
		dirr=360
	}
} else {
	dirr=180
}


