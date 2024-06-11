/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,(1/(sprite_get_height(sprite_index)/300))/2+(0.5 * sin(2 * pi * osc / 8) + 0.5)/5*1.3,(1/(sprite_get_height(sprite_index)/300))/2+(0.5 * sin(2 * pi * osc / 5) + 0.8)/5*1.3,0,c_white,1)
draw_sprite_ext(sprite_index,image_index,x,y,(1/(sprite_get_height(sprite_index)/300))/2+(0.5 * sin(2 * pi * osc / 7) + 0.5)/5*1.2,(1/(sprite_get_height(sprite_index)/300))/2+(0.5 * sin(2 * pi * osc / 5) + 0.7)/5*1.2,0,c_red,.9)
draw_sprite_ext(sprite_index,image_index,x,y,(1/(sprite_get_height(sprite_index)/300))/2+(0.5 * sin(2 * pi * osc / 6) + 0.5)/5*1.075,(1/(sprite_get_height(sprite_index)/300))/2+(0.5 * sin(2 * pi * osc / 5) + 0.6)/5*1.075,0,c_black,.9)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)