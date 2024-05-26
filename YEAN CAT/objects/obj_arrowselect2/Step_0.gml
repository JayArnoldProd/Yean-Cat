/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_levelselect) {
x=-15+obj_levelselect.x+((dir)/(1)-.5)*480
y=room_height/2+20+5

image_index=dir
audio_emitter_position(myEmitter,x,y,0)

if dir=0 {
	if obj_levelselect.charselect<1 {
		visible=false
	} else {
	if obj_levelselect.charselect>0
	visible=true
	}
} else {
	if obj_levelselect.charselect>=countt-1 {
		visible=false
	} else {
	if obj_levelselect.charselect<countt-1
	visible=true
	}
}
}