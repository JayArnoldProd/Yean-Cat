/// @description Insert description here
// You can write your code in this 
music=audio_play_sound(nothingsound,0,0);
moose=0
music_emitter = audio_emitter_create();
fadeinmusic=0

dead=0
bossid=0
grav=0
position= 0
movespeed=10
orbitdir=0
orbitgrow=1
orbitr=400
orbitlength=orbitr
orbitosc=100
orbitspeed=1
intensity=1
namee = ""
healthh = 500
resistance = 0
damage = 1
attackspeed =1
setlection=0

//move type 
movetype =0
//0=stand still
//1=turn and charge at player every 'attackspeed' seconds
//2=teleport to a random quadrant
//3=orbit player
//4=mirror player
//5=jump towards player
//6=burrow underground
//7=move to random position
//8=back away from player
//9=vanish
//10=slowly move toward player
//11=spin in place
//12=gravitate player
//13=chaos
//
moveset=[4,1,8,3,7,2,10,8,3,3]
timebetweenset=[2,3,4,3,2,1,2,3,4,3]
enemyset=[-1,-1,-1,50,-1,-1,-1,-1,0,-1]
enemycountset=[0,0,0,3,0,0,0,0,5,0]
laserset=[-1,-1,-1,0,-1,-1,0,-1,-1,0]
areaset=[-1,-1,-1,-1,-1,-1,0,-1,-1,-1]
damageset=[2,1,1,2,3,1,4,2,1,3]
attackspeedset=[4,2,6,3,4,4,2,8,4,3]

projectileset=[0,-1,1,-1,-1,2,-1,3,-1,-1]
attackset=[2,1,2,5,3,2,6,2,3,5]

//attack type 
//0= none
//1=  damage while touching
//2= fire a projectile every 'attackspeed' seconds
//3= spawn an enemy every 'attackspeed' seconds
//4= area
//5= fire a lazer every 'attackspeed' seconds with a warning indicator
//6=area with warning indicator
attacktimer=1000000
enemycount=enemycountset[0]
enemyobj=enemyset[0]
laserobj=laserset[0]
areaobj=areaset[0]
damage=damageset[0]
projectile_obj=projectileset[0]
attacktype =attackset[0]
timerset=1000000*timebetweenset[0]
timercount=1000000*timebetweenset[0]
dirmov=0
oxy=0
rotatebody=0
anicount=0
time=0
flying=0
positionplace=0
tallness=0
jumptrigger=0
movingg=0
boss_height_fromground=0
bosspos=0
boss_angle_onground=0
bossaltitude=0
rising=0
facing=1
trailalph=1
//bosstype 0=character 1=boss
bosstype=0
lookid=0




bodyangle=0
enemyid=1
sizee=1
frozen=0
resistance=0
crit=0
missed=0
spd=1
xp=1
dollar=0
grabbed=-1
image_speed=0
frame=0
rateset=4
rate=rateset
anicount=0
alphafade=0
scale=.65+(1-abs(obj_terrain.systemposition-180)/180)/2
image_xscale=scale
image_yscale=scale
healthh=500
maxhealth=500
healthlast=healthh
dam=noone
col=c_white
damtime=5

dead=0
alph=1
s_emit= audio_emitter_create();
audio_max_distance_to_be_heard = 2000;
audio_starts_to_drop_at = 0;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit,x,y,0);
audio_emitter_falloff(s_emit,audio_starts_to_drop_at,audio_max_distance_to_be_heard, 1);
sndmanid=30
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
xx=x
yy=y
oblivious=0;
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
_vspeed=0
_hspeed=0
damaged=0
redcount[0]=0
redcount[1]=0
redcount[2]=0
redcount[3]=0
redcount[4]=0
redcount[5]=0
redcount[6]=0
redcount[7]=0
redcount[8]=0
redcount[9]=0
redcount[10]=0
redcount[11]=0
redcount[12]=0
redcount[13]=0
redcount[14]=0
redcount[15]=0
redcount[16]=0
redcount[17]=0
redcount[18]=0
redcount[19]=0
redcount[20]=0
redcount[21]=0
redcount[22]=0
redcount[23]=0
redcount[24]=0
redcount[25]=0
redcount[26]=0
redcount[27]=0
redcount[28]=0
redcount[29]=0
redcount[30]=0
redcount[31]=0
redcount[32]=0
redcount[33]=0
redcount[34]=0
redcount[35]=0
redcount[36]=0
redcount[37]=0
redcount[38]=0
redcount[39]=0
redcount[40]=0
redcount[41]=0
redcount[42]=0
redcount[43]=0
redcount[44]=0
redcount[45]=0
redcount[46]=0
redcount[47]=0
redcount[48]=0
redcount[49]=0
redcount[50]=0
redcount[51]=0

c_cat=c_white