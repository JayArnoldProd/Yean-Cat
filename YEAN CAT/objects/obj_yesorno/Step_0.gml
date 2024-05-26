/// @description Insert description here
// You can write your code in this editor
time+=.03
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale*2.4
}

if yorn=1 {
	name="YES"
	x=obj_pickupq.x-175
	y=obj_pickupq.y+350
} 
if yorn=-1 {
	name="NO"
	x=obj_pickupq.x+175
	y=obj_pickupq.y+350
}


if load=1 {
	if yorn=1 {
		col=c_green
	}
	if yorn=-1 {
		col=c_maroon
	}

load=0;
}