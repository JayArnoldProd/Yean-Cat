/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(al)
draw_set_color(c_black);
	draw_rectangle(0+(obj_camera.target_x-room_width/2),0+(obj_camera.target_y-room_height/2),room_width+(obj_camera.target_x-room_width/2),room_height+(obj_camera.target_y-room_height/2),0)
draw_set_alpha(1);

draw_sprite_ext(sprite_index,0,x,y+50,1.15,1.5,0,c_white,1);
if image != noone {
	draw_sprite_ext(image,0,x,y-5,400/(max(sprite_get_width(image),sprite_get_height(image)))+(0.5 * sin(2 * pi * anicount / 5) + 0.5)/9,400/(max(sprite_get_width(image),sprite_get_height(image)))+(0.5 * sin(2 * pi * anicount / 5) + 0.5)/9,0,c_white,1)
}


