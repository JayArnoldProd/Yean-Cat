/// @description Insert description here
// You can write your code in this editor
face=1
rotbot=0
pointang=0
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
hal=0
far=35
cycleffect=0
penetrate=0
ratee=5
ratemult=0
amount=1
range=1
projectilespeed=6
projectilesize=.6
criticalchance=0;
damage=3
durationset=3
duration=3;
levellast=1;
level=1
iiii=0
attraction=0;
pickuppotency=0; //wisdom
mercy=0; //half damage
ignoresresistance=0;
freewill=0; //player controlled
faith=0; //heal damage dealt
love=0; //max health
heartbreak=0; //retalitory damage
wealth=1; //1=normal 2= twice as frequent
dondasblessing=0; //damage buff when half health
graduate=1; //xp mult
luck=1; //bound2fortune

image_xscale=1/(sprite_get_height(sprite_index)/300)/2
image_yscale=image_xscale

//seconds
attacktimerset=ratee
attacktimer=attacktimerset*1000000

projectile=obj_fish
boost=0
wid=-1