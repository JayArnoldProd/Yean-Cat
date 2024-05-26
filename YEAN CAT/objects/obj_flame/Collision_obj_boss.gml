/// @description Insert description here
// You can write your code in this editor
if own !=4 {
if global.pause=1 {
	exit
}

if fading=1 {
	exit
}

if tar=-1 {
	exit
}
if other.dead=0 {



if other.resistance<1 {
other.col=c_red

} else {
other.col=c_silver
move_bounce_all(0);
hit=0
}
if hit>0 {
if prevtarg!=other {
	if instance_exists(yeancat) {
		var ddd=master.lyricism*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage
		if random(100)<master.criticalchance*100 {
		other.crit=1
		
		other.healthh-=ddd*(1-other.resistance)*master.criticalamount
		if yeancat.healthh<yeancat.maxhealth-1 {
		yeancat.healthh+=clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-other.resistance)*master.criticalamount,0,99999999);
		}
		} else {
			other.healthh-=ddd*(1-other.resistance)
			if yeancat.healthh<yeancat.maxhealth-1 {
			yeancat.healthh+=clamp(master.faith*(clamp(master.dondasblessing,1,1+999*round(1-(yeancat.healthh/yeancat.maxhealth))))*damage*(1-other.resistance),0,99999999);
			}
		}
		}

	}
	
	hit-=1
	if hit<1 {
		evap=1
	}
	prevtarg=other
}
}
}