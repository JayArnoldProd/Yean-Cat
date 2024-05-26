/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(al)
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1);

draw_sprite_ext(sprite_index,0,x,y,2.2,1.8,0,c_white,sqrt(al));
