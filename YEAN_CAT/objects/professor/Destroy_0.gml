/// @description Insert description here
// You can write your code in this edito
audio_stop_sound(speak)
audio_emitter_free(s_emit);

if global.pause=1 or !instance_exists(master) {
	exit
}
if healthh<=0 {
	master.runkills[enemyid]+=1
	master.allkills[enemyid]+=1
if xp>0 {
var orb = instance_create_layer(x,y,"projectiles",xporb)
orb.xpvalue=xp
if instance_exists(yeancat) {
yeancat.respond=2
}
}
if dollar>0 {
	if random(1000)<master.luck*333 {
		var dol=instance_create_layer(x,y,"projectiles",dondadollar);
		dol.valuee=clamp(round(random(dollar))*master.wealth*master.lwealth,1,9999999)
		dol.itemidd=1
	}
}
}

