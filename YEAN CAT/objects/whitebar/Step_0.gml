/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

x-=8*(master.speedd+20)/30
if x< room_width/2-1800/2*master.camscale {
	if master.record=0 {
	if typee=1 {
		master.vocalvol=0;
	}
	if typee=2 {
		master.melodyvol=0;
	}
	if typee=3 {
		master.drumvol=0;
	}
	if typee=4 {
		master.bassvol=0;
	}
	}
	instance_destroy()
}
image_xscale=1*(master.camscale)
image_yscale=1.55*(master.camscale)

if master.stemplay=0 {
	instance_destroy();
}
