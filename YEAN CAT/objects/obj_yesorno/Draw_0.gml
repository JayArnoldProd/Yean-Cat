/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(Font5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.07,image_yscale*1.07,0,c_black,image_alpha*.75)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.03,image_yscale*1.03,0,c_black,image_alpha*.75)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,col,image_alpha)
draw_text(x+3,y-3,name);
draw_text(x-3,y+3,name);
draw_text(x-3,y-3,name);
draw_text(x+3,y+3,name);
draw_set_color(c_white)
draw_text(x,y,name);
	
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
if yorn=1 {
	draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)

draw_set_font(Font3);
draw_text_transformed(x+175+13+(0.5 * sin(2 * pi * time / 5))*7.5,y-577+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,obj_pickupq.name,(1.4-string_length(obj_pickupq.name)/35)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(obj_pickupq.name)/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0);
draw_text_transformed(x+175-13+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-577-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,obj_pickupq.name,(1.4-string_length(obj_pickupq.name)/35)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(obj_pickupq.name)/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0);
draw_text_transformed(x+175+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-577-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,obj_pickupq.name,(1.4-string_length(obj_pickupq.name)/35)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(obj_pickupq.name)/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0);
draw_text_transformed(x+175-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-577+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,obj_pickupq.name,(1.4-string_length(obj_pickupq.name)/35)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(obj_pickupq.name)/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0);
draw_set_color(c_white)
draw_text_transformed(x+175,y-577,obj_pickupq.name,(1.39-string_length(obj_pickupq.name)/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.4-string_length(obj_pickupq.name)/35)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0);

draw_set_color(c_black)
draw_set_font(Font2)
draw_text_transformed(x+175,y-201+2,obj_pickupq.desc,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0);
draw_text_transformed(x+175,y-201-2,obj_pickupq.desc,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0);
draw_text_transformed(x+175+2,y-201,obj_pickupq.desc,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0);
draw_text_transformed(x+175-2,y-201,obj_pickupq.desc,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0);
draw_set_color(c_white)
draw_text_transformed(x+175,y-201,obj_pickupq.desc,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0);
}

if yorn=1 {
if instance_exists(obj_pickupq) {
if master.weapons[obj_pickupq.variant,3]=0 and obj_pickupq.kind=1 {
draw_sprite_ext(spr_pickupq,1,x+165+25+15*(0.5 * sin(2 * pi * time / 5)),y-305+75+15*(0.5 * sin(2 * pi * time / 5)),1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_white,1)
draw_sprite_ext(spr_pickupq,2,x+165+25+15*(0.5 * sin(2 * pi * (time+90) / 5)),y-305+75+15*(0.5 * sin(2 * pi * (time+90) / 5)),1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_white,(0.5 * sin(2 * pi * time / 5) + 0.5)/2+.5)
}
if master.passives[obj_pickupq.variant,2]=0 and obj_pickupq.kind=2 {
draw_sprite_ext(spr_pickupq,2,x+165+25+15*(0.5 * sin(2 * pi * (time+180) / 5)),y-305+75+15*(0.5 * sin(2 * pi * (time+180) / 5)),1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_white,1)
draw_sprite_ext(spr_pickupq,1,x+165+25+15*(0.5 * sin(2 * pi * (time+270) / 5)),y-305+75+15*(0.5 * sin(2 * pi * (time+270) / 5)),1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,1+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_white,(0.5 * sin(2 * pi * time / 5) + 0.5)/2+.5)
}
}
}

