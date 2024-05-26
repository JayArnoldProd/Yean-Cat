/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(al)
draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1);
draw_sprite_ext(sprite_index,0,x,y+50,1.25,1.55,0,c_white,sqrt(al))
if image != noone {
	draw_sprite_ext(image,0,x,y+15,400/(max(sprite_get_width(image),sprite_get_height(image)))+(0.5 * sin(2 * pi * anicount / 5) + 0.5)/9,400/(max(sprite_get_width(image),sprite_get_height(image)))+(0.5 * sin(2 * pi * anicount / 5) + 0.5)/9,0,c_white,1)
}


