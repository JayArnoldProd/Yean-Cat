
/// @description Insert description here
// You can write your code in this editor


if dead=0 {
if instance_exists(yeancat) {
	if random(100)<master.criticalchance*100 {
healthh-=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*(1*(1-resistance)*yeancat.def+ceil(1*(1-resistance))*(master.criticalamount))*master.damage*yeancat.oxydamage*yeancat.stemdamage;
	if yeancat.healthh<yeancat.maxhealth-1 {
	yeancat.healthh+=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*clamp(master.faith*(1*(1-resistance)*yeancat.def+ceil(1*(1-resistance))*(master.criticalamount))*master.damage*yeancat.oxydamage*yeancat.stemdamage,0,999999999);
	}
	crit=1
	} else {
		healthh-=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*1*((1-resistance)*yeancat.def+ceil(1*(1-resistance)))*yeancat.oxydamage*yeancat.stemdamage
	if yeancat.healthh<yeancat.maxhealth-1 {
	yeancat.healthh+=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(clamp(yeancat.healthh/yeancat.maxhealth,0,1)))))*clamp(master.faith*(1*(1-resistance)*yeancat.def+ceil(1*(1-resistance)))*yeancat.oxydamage*yeancat.stemdamage,0,99999999)
	}
	}
}
if resistance<1 {
col=c_red
with (other) {
instance_destroy()
}
} else {
col=c_silver
other.move_bounce_all(0);
}
}
