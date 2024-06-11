gravpull=1
gravstr=.75
vspeedset=0
worldd=[]
enemy_height_fromground=75
enemy_angle_onground=0
facing=0
pflying=0
rotatebody=0
rising=0
flashes=0
flash_obj=obj_nothing
legoffset=1
movingg=0
enemyaltitude=0
ground_yvalue_belowenemy=10
onground=1
canjump=1
jumptotal=1
jumpcount=jumptotal
_vspeed=0;
enemyaltitude=0
jumping=0
hdist=0
vdist=0
dcat=0
flying=0
//movetype 0=drift left 1=drift right 2=drift up 3=drift down; diagonals ,4=ld,5=ul,6=ur,7=rd, 8=random, 9=shot at player

movetype=0
//playerdrifthow much its movement is affected by player speed and direction 0 none, 1 fully (
playerdrift=1
//drift how much it moves by type
drift=1
//directional = 1 or freelymoving = 0
directional=0
//varydir 0=no vary, 1=15 degrees, 2=30degrees, 3=45 degrees
varydir=0
//follow player 0= no 100= drastically  effecteed by directional
followplayer=2
//passplayer
passplayer=1
//
draw=true
diii=0
xdi=0
yxi=0
//limit time on screen -1=no limit, 1=1 second
tl=-1
//quantity limit -1=no limit, 1 = 1 (on screen at a time)
ql=-1
//destroy on contact
doc=0
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




movetype=0
sizee=1
resistance=1
damage=1
spd=1
xp=1
grabbed=0
dir=0
frozen=0
crit=0
flashtimeset=100
flashtime=flashtimeset
dollar=0
walk=0
legangle=0
bodyangle=0
direction=180
image_speed=0
frame=0
rateset=round(4+random(4))
rate=rateset
anicount=0
scale=0
image_xscale=scale*.75
image_yscale=scale*.75
healthh=12
maxhealth=healthh
healthlast=healthh
dam=noone

oblivious=.3;
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
missed=0

col=c_white
damtime=5

flashsound=audio_play_sound(nothingsound,0,0);
speak=audio_play_sound(nothingsound,0,0);

magnetplayer=0
//SOUNDS
//spawn sound
//random sound
//proximity sound
//close to death
//hit sound
dead=0
alph=1
s_emit= audio_emitter_create();
audio_max_distance_to_be_heard = 2000;
audio_starts_to_drop_at = 0;
_hspeed=0
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit,x,y,0);
audio_emitter_falloff(s_emit,audio_starts_to_drop_at,audio_max_distance_to_be_heard, 1);

enemyid=19
sndmanid=enemyid+1
hitfreq=3
suchit=0
delayhit=0
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

snd1=nothingsound
//random
snd2=nothingsound
//proximity
snd3=nothingsound
//close to death
snd4=nothingsound

sd1=0
sd2=0
sd3=0
sd4=0

sd1e=round(random(1))
sd2e=round(random(1))
sd3e=round(random(1))
sd4e=round(random(1))

xdi=0
ydi=0