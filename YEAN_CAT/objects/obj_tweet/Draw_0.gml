/// @description Insert description here
// You can write your code in this editor
if direction < 90  or direction>270 {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.1,image_yscale*1.1,dirr,c_black,clamp(1-fade/100,0,1));
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,dirr,c_white,clamp(1-fade/100,0,1));
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*(-1.1),image_yscale*1.1,dirr-180,c_black,clamp(1-fade/100,0,1));
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*(-1),image_yscale,dirr-180,c_white,clamp(1-fade/100,0,1));
}
//draw_set_color(c_black);
//draw_set_alpha(1);
//draw_text(x,y+15,string(tar));
//draw_text(x,y-15,string(penetrate));