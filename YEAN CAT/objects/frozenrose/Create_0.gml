/// @description Insert description here
// You can write your code in this editor
//movetype 0=drift left 1=drift right 2=drift up 3=drift down; diagonals ,4=ld,5=ul,6=ur,7=rd, 8=random, 9=shot at player
movetype=0
//playerdrifthow much its movement is affected by player speed and direction 0 none, 1 fully
playerdrift=0
//drift how much it moves by type
drift=1
//directional = 1 or freelymoving = 0
directional=0
//varydir 0=no vary, 1=15 degrees, 2=30degrees, 3=45 degrees
varydir=0
//follow player 0= no 100= drastically  effecteed by directional
followplayer=0
//passplayer
passplayer=0
//MAGNETPLAYER
magnetplayer=1.5
//
diii=0
xdi=0
yxi=0
//limit time on screen -1=no limit, 1=1 second
tl=-1
//quantity limit -1=no limit, 1 = 1 (on screen at a time)
ql=-1
//destroy on contact
doc=1
//collide with player
cwp=0
//if cwp=1 weight 0=moves out of way of player, 1=moves player away, 10=moves player away 10 times as far
weight=0
//stop on player 0=no 1=yes
sop=0
//attack type 0=no attack, 1=damage on contact, 2=area periodically (quantity affected) 3= fire projectile (quantity affected) 4=lazer (quantity affected) 5=periodically on contact 10=deal health on contact
aty=1
//attack aim -affects aty2,3,4: 0=no 1=direction facing 2=aimed at player 2=random 3=cycling
aaim=0
//if aaim=1,2,3, aiming speed how fast aiming changes direction
aimspeed=0
//if aaim=2 for aty3&4, does projectile or lazer follow player and how much? 0=no homing 100=max homing
homing=0
//spawned attack object aty=2,3,4
attackobj=obj_nothing
//quantity of attacks aty=2,3,4 
quan=1;
//how many times each attack hits before it dissapears
aquan=1;
//attackrate -1=na, for aty=2,3,4,5
atrate=-1
//critical chance 0-1
critchance=0
critmult=1
//freeze 0=no 1=1 second 2=2 second...
freeze=0
//fire 0 = no 1=1x damage every 1 sec for 1 sec, 4=x2 damage every .5 second for 2 sec, 16= x4 damage every 1/4 second for 4 sec
fire=0
firedam=sqrt(fire)
firerate=1/sqrt(fire)*1000000
//1=1x damage for 1 sec, 2=2 sec...
poison=0
//weaken 0=no 1=-50%all stats for , 2=-66%,3=-75%,9=-90% for root(weaken)*2+1 sec
weaken=0
weakmult=1-(weaken/(weaken+1))
//slow0=no 1=-50%speed  , 2=-66%,3=-75%,9=-90% for root(slow)*2+1 sec
slow=0
//weapon equipped?
weapequip=noone
//moneydrain 0=no 1=1dollar/damage dealt, 2dollar/damage dealt maximum what the player earned this run.
moneydrain=0;

//grabbable 0=yes, -1= not grabbable
grabbed=0
bodyangle=0
enemyid=15
sizee=1
frozen=0
resistance=0
crit=0
missed=0
damage=1
spd=1
xp=1
dollar=0
grabbed=0
image_speed=0
frame=0
rateset=4
rate=rateset
anicount=0
scale=0
image_xscale=scale*.75
image_yscale=scale*.75
healthh=8
maxhealth=8
ydi=0
healthlast=healthh
dam=noone
col=c_white
damtime=5
_vspeed=0
_hspeed=0
dead=0
alph=1
s_emit= audio_emitter_create();
audio_max_distance_to_be_heard = 2000;
audio_starts_to_drop_at = 0;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit,x,y,0);
audio_emitter_falloff(s_emit,audio_starts_to_drop_at,audio_max_distance_to_be_heard, 1);
sndmanid=enemyid+1
suchit=0
//spawn
//random
//closetodeath
//proximity
//successfulhit
//death
snd=[
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound]
]
speak=audio_play_sound(nothingsound,0,0);
draw=true
hurtsnd=audio_play_sound(nothingsound,0,0);

hurtsnd2=audio_play_sound(nothingsound,0,0);

oblivious=.5;
strafemax=(random(3)-1.5)
if strafemax>-.1 and strafemax<.1 {
	strafemax*=7.5
}
yrand=(random(3)-1.5)
strafemult=(random(5)+5)/75
strafetime=1
strafeosc=random(2)-1
time=0+360*strafeosc
randomtime=(.075+random(14)/200)
strafe=strafemax*(0.5 * sin(2 * pi * strafetime / 5))*strafemult

varispeed=.8+random(.4)