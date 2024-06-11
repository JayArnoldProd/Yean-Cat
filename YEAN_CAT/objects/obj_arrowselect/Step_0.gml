/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_levelselect) {
x=-15+obj_levelselect.x+((dir)/(1)-.5)*450
y=room_height/2-460

image_index=dir
audio_emitter_position(myEmitter,x,y,0)

if dir=0 {
	if obj_levelselect.stage<2 {
		visible=false
	} else {
	if obj_levelselect.stage>1
	visible=true
	}
} else {
	if obj_levelselect.stage>countt-1 {
		visible=false
	} else {
	if obj_levelselect.stage<countt
	visible=true
	}
}
}