/// @description Insert description here
// You can write your code in this editor

al=(1-clamp((room_height/2-y)/1000,0,1))/2

if falling=1 {
if y<room_height/2 {
	y+=(global.room_speed_set/1000000*delta_time)*((room_height/2-y)/30+3)
} else {
	y=room_height/2
	falling=0
}
} else {
	if falling =-1 {
		if y>0 {
	y-=(global.room_speed_set/1000000*delta_time)*((y)/20+4)
} else {
	if instance_exists(obj_yesorno) {
	with (obj_yesorno) {
		instance_destroy();
	}
	}
	instance_destroy();
}
	}
}



anicount+=.03

if load=1 {
	if kind=1 {
	numb=variant
	name=master.weapons[variant,0]
	image=master.weapons[variant,11]
	desc=master.weapontext[variant,master.weapons[variant,4]]
	level=master.weapons[variant,4]
	}
	if kind=2 {
		//PASSIVES
	numb=variant
	name=master.passives[variant,0]
	image=master.passives[variant,5]
	if variant != array_length(master.passives)-1 {
		if variant != 14 and variant != 19 and variant !=15 and variant !=3 {
	desc=master.passivetext[variant]
		} else {
			desc=master.passivetext2[variant,master.passives[variant,3]];
		}
	} else {
		desc=master.eintext[master.passives[variant,3]];
	}
	level=master.passives[variant,3]
	}
	load=0
}

//WEAPONS 
//DEM1 = ID;
//0name, 
//1 type, 0=base, 1=evolution, 2=superevo, 3=fusion
//2obtained?, 
//3discovered?, 
//4level, 
//5max level, 
//6passive requirement1, -1 = none
//7passive requirement2, -1 = none 
//8weapon requirement1, -1 = none
//9weapon requirement 2 -1 = none,
//10require max passives? 0 or 1
//11image, 
//12description
//13unlocked? (found in randomizer)

//PASSIVES
//DEM1 = ID;
//0name, 
//1obtained?, 
//2discovered?, 
//3level, 
//4max level, 
//5image, 
//6description
//7unlocked? (found in randomizer)
