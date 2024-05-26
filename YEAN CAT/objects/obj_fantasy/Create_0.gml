/// @description Insert description here
// You can write your code in this editor
face=1
rotbot=0
pointang=0
soundd=audio_play_sound(nothingsound,0,0)
myEmitter=audio_emitter_create()
audio_emitter_position(myEmitter,x,y,0)
soundd=audio_play_sound_on(myEmitter,snd_fantasy1,1,0,1*master.sfxvol*master.mastervol,0,1)
walph=0
s1=nothingsound
s2=nothingsound
s3=nothingsound
c_wep=c_white
c_att=c_dkgray
//-1=behind 1=infront
dept=-1
//position
//1=forward, -1 = back
holdpos=-1
//always behind?
awbh=1
hal=0
far=35
cycleffect=0
time=0
penetrate=0
ratee=1
ratemult=0
amount=1
facing=1
projectilespeed=1
projectilesize=.75
orbitangle=0
range=1.25
oscrange=.1
oscil=0
oscdir=1
criticalchance=0;
damage=5
durationset=3
duration=3;
levellast=1;
level=1
iiii=0
attraction=0;
glow=0

image_xscale=1/(sprite_get_height(sprite_index)/300)
image_yscale=image_xscale
//seconds
attacktimerset=ratee
attacktimer=attacktimerset*1000000

area=obj_808boom
boost=0
wid=-1