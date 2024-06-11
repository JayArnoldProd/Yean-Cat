/// @description Insert description here
// You can write your code in this editor
with (obj_buyupgrade) {
	instance_destroy()
}

with (obj_refund) {
	instance_destroy()
}
audio_emitter_free(myEmitter)
if instance_exists(master) {
master.updatestats=1
if master.mainmenu=0 {
global.pause=0
}


}
