/// @description Insert description here
// You can write your code in this editor
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
kind=0
al=0
falling=1;
image_xscale=2
image_yscale=2
load=1
variant=-1;
anicount=0
name=""
image=noone
desc=""
numb=-1
level=0
stopped=0
checkcount=1
qui=instance_create_layer(room_width/2-master.camscale*display_get_gui_width()/2*.9, room_height/2-master.camscale*display_get_gui_height()/2*.9, "uiitop", obj_quitbutton);
		
for (i=0; i<=3; i++) {
	if master.modes[i]=1 {
		var ch1=instance_create_layer(room_width, room_height/2+200, "uiitop", obj_checkboxpause);
		ch1.num=checkcount
		ch1.abcd=i
		checkcount+=1
	}
}

//spawn cluster of horizontal sliders
var options_pick = [
0,//mastervol
1,//musicvol
2,//sfxvol
3,//dialogvol
4,//uivol
5//uiscale
]
var offset_x = 0
var offset_y = -300
var slider_dir = 0 //horizontal
var lengthh = 500 //slider length
var spacingg = 90 //gap
var menu=1

scr_slider_cluster(options_pick, offset_x, offset_y, slider_dir, lengthh, spacingg, menu)



//weapon stats



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