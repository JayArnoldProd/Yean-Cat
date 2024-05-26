/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_levelselect) {
x=-30+obj_levelselect.x+((num)/(countt+1)-.5)*1200
y=room_height/2+300
} else {
	instance_destroy()
}
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}

image_index=enabled

if abcd=0 {
	text="Looking For\nTrouble"
		master.lookingfortrouble=enabled
}
if abcd=1 {
	text="No Cap"
		master.nocap=enabled
}
if abcd=2 {
	text="Endurance"
		master.endurance=enabled

}
if abcd=3 {
	text="Can't Give\nMe Nothing"
		master.cantgivemenothing=enabled
}

