/// @description Insert description here
// You can write your code in this editor
var upgg=0
for (var i=0; i<array_length(master.notice);  i++ ) {
	if master.notice[i,2]>0 {
		upgg=1
		break
	}
}
if upgg=1 {
if fade<.5 {
	fade+=.01
}
if slide<1 {
	slide+=.01
}
time+=.01
} else {
	slide=0
	fade=0
}
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale*.9
}
if instance_exists(obj_upgrademenu) {
	x=obj_upgrademenu.x
	y=yy+(1-slide)*500+68


}
