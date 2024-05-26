/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}
if alph>0 {
	alph=alph*24/25-.01
} else {
	instance_destroy();
}
image_alpha=alph
image_angle=random(360)
image_xscale+=.01
image_yscale+=.01


