/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

if other.dead=0 {




//if hit>0 {
//if prevtarg!=other {
	if instance_exists(yeancat) {
		if other.resistance<1 {
		other.col=c_red
		var ddd=glow*master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*master.damage/fps_real
		if random(100)<master.criticalchance*100 {
		other.crit=1
		
		other.healthh-=ddd*(1-other.resistance)*master.criticalamount
		if yeancat.healthh<yeancat.maxhealth-1 {
		yeancat.healthh+=glow*clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*master.damage*(1-other.resistance)*master.criticalamount/fps_real,0,99999999);
		}
		} else {
			other.healthh-=ddd*(1-other.resistance)
			if yeancat.healthh<yeancat.maxhealth-1 {
			yeancat.healthh+=glow*clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*master.damage*(1-other.resistance)/fps_real,0,99999999);
			}
		}
		} else {
other.col=c_silver

}

	}
}
	//hit-=1
	//if hit<1 {
	//	instance_destroy()
	//}
	//prevtarg=other
//}
//}