/// @description Insert description here
// You can write your code in this editor
variant=-1
itemidd=5
image_xscale=.15
image_yscale=.15
close=0
movetype=9
//playerdrifthow much its movement is affected by player speed and direction 0 none, 1 fully
playerdrift=.1
//drift how much it moves by type
drift=1
//directional = 1 or freelymoving = 0
directional=1
//varydir 0=no vary, 1=15 degrees, 2=30degrees, 3=45 degrees
varydir=.5
//follow player 0= no 100= drastically  effecteed by directional
followplayer=2
//followlength
followlength=0
//passplayer
passplayer=1

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

enemyid=1
sizee=1
frozen=0
resistance=0
crit=0
missed=0
damage=2
spd=5
xp=1
dollar=0
grabbed=0
image_speed=0
frame=0
rateset=4
rate=rateset
anicount=0
scale=0
healthh=8
maxhealth=8
healthlast=healthh
dam=noone
col=c_white
damtime=5
varispeed=1
xdi=0
ydi=0

hurtsnd=audio_play_sound(nothingsound,0,0);
oblivious=1;
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

varispeed=1