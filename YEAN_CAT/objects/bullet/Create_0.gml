/// @description Insert description here
// You can write your code in this editor
if instance_exists(yeancat) {
image_angle=yeancat.gunrot
direction=yeancat.gunrot-(yeancat.facing/2-.5)*180
vspeedset=12
speed=vspeedset*master.projectilespeed
}
bulletImage = spr_bullet;
stepp=0
image_speed=0
image_xscale=1*master.projectilesize
image_yscale=image_xscale
sx=x
sy=y
_vspeed=0
_hspeed=0
damage=1
projectilespeed=1