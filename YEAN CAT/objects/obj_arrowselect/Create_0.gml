/// @description Insert description here
// You can write your code in this editor
image_speed=0
image_index=0
image_xscale=1.3
image_yscale=1.3
col=c_white
dir=0
enabled=0
countt=0
myEmitter=audio_emitter_create()
for (i=0; i<array_length(master.stages); i++) {
	if master.stages[i,7]=1 {
		countt+=1
	}
}
