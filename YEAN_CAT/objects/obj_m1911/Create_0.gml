/// @description Insert description here
// You can write your code in this editor
face=1
rotbot=0
pointang=0
walph=0
recoil=1
recoilshift=0
dept=1
far=15
angle=0
aimspeed=1
facing=1
target=noone
s_emit= audio_emitter_create();
s1=gun1
s2=gun2
s3=gun3
//1= front 0=middle,-1=back
holdpos=1
c_wep=c_white
c_att=c_dkgray
//attackatype
//attack type 0=no attack, 1=projectile, 2=spawned attack, 3=area effect, 
attacktype=1
//attack origin -1=player,0=weapon, 1=weapontip, 2=outside screen randomly, outside screen 3=right,4=left,5=up,6=down,
attackorigin=1
//attack aim 
tipy=0
tipx=120//offset if origin=1
//0=no aim, 
//1=aim at nearest enemy, 
//2=aim at furthest enemy, 
//3=aim at strongest enemy,
//4=aim at weakest enemy,
//5=aim at mouse or direction of joystick, 
//6=aim at enemy closest to center
//7=aim at enemy furthest from center
//8=aim at supporting characters
//9=aimrandom
//10=aimcycle
//11=aimcircle
attackaim=1
startdir=0 //starting direction
aimrot=1 //counter clockwise or clockwize
aimamplitude=60 //how many degrees of freedom
//aiming range (distance)
aimrange=500
//constant aiming?
//0=no, 1=yes, 2=while not attacking, 3=some%of the time
aimconst=1
//if 3 then % of the attack cycle
aimcycperc=100
//flip image over vertical
fiov=1
//aimspeed 0=none 360=360 degrees per second
aimspeedd=50
//rotateimage?
rotimage=1




cycleffect=0
penetrate=0
ratee=1.5
ratemult=0
amount=1
range=1
projectilespeed=1
projectilesize=.9
criticalchance=0;
damage=1
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
gunsnd=audio_play_sound(nothingsound,0,0,.6*master.sfxvol*master.mastervol);
//seconds
attacktimerset=ratee
attacktimer=attacktimerset*1000000

projectile=bullet
boost=0
wid=-1

if attackaim=10 {
	if rotimage=1 {
	image_angle=startdir
	}
}