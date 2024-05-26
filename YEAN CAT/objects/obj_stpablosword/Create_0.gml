/// @description Insert description here
// You can write your code in this editor
target=noone
face=1
myEmitter=audio_emitter_create()
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
tx=yeancat.x
ty=yeancat.y
rotbot=0
pointang=0
gunsnd=audio_play_sound(nothingsound,0,0)
s_emit=audio_emitter_create()
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
atk=0
atkosc=0
atksnd=audio_play_sound(nothingsound,0,0)
sound1=snd_swordswing1
sound2=snd_swordswing2
sound3=snd_swordswing3
sound4=snd_swordswing4
swing=0

far=35
cycleffect=0
penetrate=0
ratee=10
ratemult=0
amount=1
facing=1
projectilespeed=2
projectilesize=1
orbitangle=0
angle=0
range=.15
oscrange=.65
oscil=0
oscdir=1
criticalchance=0;
damage=20
durationset=3
duration=3;
levellast=1;
level=1
iiii=0
attraction=0;


image_xscale=1/(sprite_get_height(sprite_index)/300)
image_yscale=image_xscale
//seconds
attacktimerset=ratee
attacktimer=attacktimerset*1000000

area=obj_808boom
boost=0
wid=-1