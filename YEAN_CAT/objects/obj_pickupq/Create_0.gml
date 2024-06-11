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
lvlsnd=audio_play_sound(passivesound1,1,0,.8*master.uivol*master.mastervol)
audio_sound_gain(lvlsnd,1*master.uivol,0);
al=0
falling=1;
image_xscale=1.6
image_yscale=1.6
load=1
variant=-1;
anicount=0
name=""
image=noone
desc=""
numb=-1
level=0
stopped=0
var yess = instance_create_layer(x,y,"uiitop",obj_yesorno)
yess.yorn=1
var nooo = instance_create_layer(x,y,"uiitop",obj_yesorno)
nooo.yorn=-1

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

