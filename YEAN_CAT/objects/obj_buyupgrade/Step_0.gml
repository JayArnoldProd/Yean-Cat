/// @description Insert description here
// You can write your code in this editor
cost=(master.upgradetot+1)*100
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
time+=.01
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale
}
if instance_exists(obj_upgrademenu) {
	x=obj_upgrademenu.x+592
	y=yy-(1-obj_upgrademenu.slide)*500

if obj_upgrademenu.selected != -1 {
if master.notice[obj_upgrademenu.selected,1]>=2 {
	//if fade<obj_upgrademenu.dfade {
	//fade=obj_upgrademenu.dfade
	//}
	if fade<1 {
		fade+=.02
	} else {
		fade=1
	}
} else {
	if fade>0 {
		fade-=.02
	} else {
		fade=0
	}
}
}
}