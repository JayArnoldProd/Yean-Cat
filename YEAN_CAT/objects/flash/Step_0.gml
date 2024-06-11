/// step of flash

if global.pause=1 {
	if !instance_exists(restar) {
	exit
	}
}


	image_index+=1


alphaa=1-image_index/9

if image_index>9 {
	instance_destroy()
}
if dir=1 {
	image_xscale=-2*siz*.75
}
if dir=0 {
	image_xscale=2*siz*.75
}

image_yscale=2*siz*.75
