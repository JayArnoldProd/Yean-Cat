/// @description Insert description here
// You can write your code in this editor
if rev=0 {
if instance_exists(obj_pickupq) {
	if obj_pickupq.falling=-1 or obj_pickupq.falling=1 {
		exit
	}
}
} else {
	if instance_exists(obj_reviveq) {
	if obj_reviveq.falling=-1 or obj_reviveq.falling=1 {
		exit
	}
}
	
}
if rev=0 {
if yorn=1{
	if instance_exists(yeancat) {
	if instance_exists(yeancat.pick) {
		var targg = yeancat.pick
		targg.collect=1
	}
	}
	audio_play_sound(uibuttonsound5,0,0,1*master.uivol*master.mastervol,0,.99+random(2)/100)
}
if yorn=-1{
	if instance_exists(yeancat) {
	if instance_exists(yeancat.pick) {
		var targg = yeancat.pick
		targg.collect=-1
		with (targg) {
			instance_destroy();
		}
	}
	}
	audio_play_sound(skipsound1,0,0,1*master.uivol*master.mastervol,0,.99+random(2)/100)
}
master.checkwep=1

if instance_exists(obj_pickupq) {
with (obj_pickupq) {
	falling=-1
}
} else {
	instance_destroy();
}
} else {
	
}
//with (obj_yesorno) {
//	instance_destroy()
//}

