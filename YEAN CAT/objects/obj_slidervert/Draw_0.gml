/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,x,y-lengthh/2,(lengthh)/500,widthh/10,270,c_white,1);
draw_sprite_part_ext(spr_sliderrainbowvert,0,rainpos,widthh,widthh,500*(valuee/1),x-widthh/2,y-lengthh/2+7,1,lengthh/500,c_white,1)
draw_sprite_part_ext(spr_sliderrainbowvert,0,sprite_get_width(spr_sliderrainbowvert)-rainpos-widthh,0,widthh,500*(1-valuee/1),x-widthh/2,y+lengthh/2-7-lengthh*(1-valuee/1),1,lengthh/500,c_white,1)
//draw_set_color(c_black)
draw_set_alpha(1)
//draw_set_halign(fa_center)
//draw_set_valign(fa_middle)
//draw_text_transformed(x-50,y,string(valuee),2,2,0)
//draw_set_color(c_white)
//draw_text_transformed(x-50,y,string(valuee),1.9,1.9,0)
draw_sprite_ext(spr_sliderbutton,0,x,(y-lengthh/2+15)*((1-valuee)/1)+(y+lengthh/2-15)*(valuee/1),4,1.5,0,c_white,1);
