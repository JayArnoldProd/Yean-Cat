/// @description Insert description here
// You can write your code in this editor
image_speed=0
attackspeed=0
areaid=-1
deflected=0
deflectable=1
homing=0
direction=0
speed=0
_hspeed=0
_vspeed=0
_direction=0
scale=0
fade=0
//hit density 1=every frame, 4 =every 4 frames
hitdensity=9-4*(1+(1-abs(obj_terrain.systemposition-180)/180))
hitdensityset=hitdensity
warning=0
warningsize=0
sizee=1
dead=0
scaleto=1
//growspeed  1=instant 1000 slow
growspeed=200
rand=0
spee=10
damage=1
stayonboss=0
spawned=0
missed=0
grabbed=-1
frozen=0
col=c_white
doc=0
alph=0
if instance_exists(obj_boss) {
owner=instance_nearest(x,y,obj_boss)
}


