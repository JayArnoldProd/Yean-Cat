/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	exit
}

if other.dead=0 {

	if chaining>0 {
		var tweet=instance_create_depth(other.x,other.y,depth+1,lightning)
	var mul=.66
	tweet.damage=damage/2
	tweet.projectilespeed=projectilespeed
	tweet.projectilesize=projectilesize
	tweet.range=range
	tweet.rangee=range
	tweet.orbitspeed=orbitspeed
	tweet.criticalchance=criticalchance
	tweet.duration=duration
	tweet.chaining=chaining-1
	tweet.chainn=chainn+1
	chaining=0
	tweet.decaytimerset=duration
tweet.decaytimer=(duration)*1000000
	tweet.ratee=4/ratee
	tweet.penetrate=penetrate
	}




//if hit>0 {
//if prevtarg!=other {
	if instance_exists(yeancat) {
		if other.resistance<1 {
		other.col=c_red
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