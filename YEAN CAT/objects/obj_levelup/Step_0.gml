/// @description Insert description here
// You can write your code in this editor
if muted=0 {
	lvlsnd=audio_play_sound(levelupsound,1,0)
	audio_sound_gain(lvlsnd,1*master.uivol*(master.sfxvol/2+.5),0);
	muted=1
}
time+=(global.room_speed_set/1000000*delta_time)*.05
if choicetotal=0 {
	global.pause=0
	master.dondadollars+=floor(round(1+master.level/10*master.wealth))
	with (obj_choicebutton) {
		instance_destroy()
	}
	global.pause=0
	instance_destroy()
}

//select with gamepad and w s down and up
if global.choiceselect>=0 {
	if input_check_pressed("up") {
	if global.choiceselect>1 {
		global.choiceselect-=1
	} else {
		global.choiceselect=global.choicemax
	}
	}
	if input_check_pressed("down") {
	if global.choiceselect<global.choicemax {
		global.choiceselect+=1
	} else {
		global.choiceselect=1
	}
	}
}

al=(1-clamp((room_height/2-y)/1000,0,1))/2
if falling=1 {
if y<room_height/2 {
	y+=(global.room_speed_set/1000000*delta_time)*((room_height/2-y)/10+3)
} else {
	y=room_height/2
	falling=0
}
} else {
	if falling =-1 {
		if y>0 {
	y-=(global.room_speed_set/1000000*delta_time)*((y)/5+4)
} else {
	if instance_exists(obj_choicebutton) {
	with (obj_choicebutton) {
		instance_destroy();
	}
	}
	if instance_exists(obj_randombutton) {
	with (obj_randombutton) {
		instance_destroy();
	}
	}
	if instance_exists(obj_rerollbutton) {
	with (obj_rerollbutton) {
		instance_destroy();
	}
	}
	instance_destroy();
}
	}
}

sss=master.camscale
if choicetotal>3 {
	image_xscale=1.8*sss
image_yscale=1.86*sss
} else {
	image_xscale=1.7*sss
image_yscale=1.5*sss
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
