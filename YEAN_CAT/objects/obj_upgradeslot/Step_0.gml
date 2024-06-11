/// @description Insert description here
// You can write your code in this editor
cost=100*power(10,master.maxweapset-2)
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
time+=.01
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale
}

	x=obj_unlockmenu.x
	y=obj_unlockmenu.y
