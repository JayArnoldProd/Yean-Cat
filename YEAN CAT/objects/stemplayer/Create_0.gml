/// @description Insert description here
// You can write your code in this editor
image_speed=0
frame=0
rateset=round(4+random(4))
rate=rateset
anicount=0
scale=1
image_xscale=scale*.5
image_yscale=scale*.5
vspeedset=random(3)-1.5
vspeed=vspeedset
varispeed=1
variant=-1
potent=1
itemidd=-1
if os_type=os_ios or os_type=os_android {
	instance_destroy()
}