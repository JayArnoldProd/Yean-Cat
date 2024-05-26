/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

x-=8*(master.speedd+20)/30
if x< room_width/2-1800/2*master.camscale {
	instance_destroy()
}

image_xscale=1*(master.camscale+2)/3
image_yscale=1.55*(master.camscale+2)/3
if master.stemplay=0 {
	instance_destroy();
}