/// @description Insert description here
// You can write your code in this editor
if (master.rerolls<1 and num=1) {
	exit
}
if (master.banishes<1 and num=2) {
	exit
}
if (master.skips<1 and num=3) {
	exit
}


 {
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(Font5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.07,image_yscale*1.07,0,c_black,image_alpha*.75)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.03,image_yscale*1.03,0,c_black,image_alpha*.75)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,col,image_alpha)
draw_text_transformed(x+3,y-3,name,.6*sss,.6*sss,0);
draw_text_transformed(x-3,y+3,name,.6*sss,.6*sss,0);
draw_text_transformed(x-3,y-3,name,.6*sss,.6*sss,0);
draw_text_transformed(x+3,y+3,name,.6*sss,.6*sss,0);
draw_set_color(c_white)
draw_text_transformed(x,y,name,.6*sss,.6*sss,0);
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
//14banished?
//15can spawn

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
//8banished
//9can spawn?

//wepcount=0
//pascount=0
//choicecount=3
//draw_set_color(c_white) 
//draw_text(x-700,y,string(num));
show_button=0
button_look=0
var scal = .5
//ps5
if global.control_type=2 {
	show_button=1
	button_look=0
}
//xbox
if global.control_type=3 {
	show_button=1
	button_look=1
}
//switch
if global.control_type=4 {
	show_button=1
	button_look=2
}
if show_button=1 {
if num=1 {
draw_sprite_ext(spr_topbutton,button_look,x-85,y+30,scal,scal,0,c_white,1)
}
if num=2 {
draw_sprite_ext(spr_leftbutton,button_look,x-85,y+30,scal,scal,0,c_white,1)
}
if num=3 {
draw_sprite_ext(spr_rightbutton,button_look,x-85,y+30,scal,scal,0,c_white,1)
}
}
