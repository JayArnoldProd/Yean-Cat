/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(Font4)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,col,image_alpha)
if instance_exists(restar) {
draw_set_alpha(sqrt(1-(clamp((room_height/2-restar.y)/500,0,1))))
}
draw_text(x,y,text);

if ex=1 {
	draw_sprite_ext(spr_exclamation,exani,x+(120+(0.5 * sin(2 * pi * (time+90) / 7.5))*10)*master.camscale,y+((1 * sin(2 * pi * (time+90) / 7.5)-.5)*10),.35,.35,0,c_white,image_alpha)
} 

if ex=2 {
	draw_sprite_ext(spr_exclamation,exani,x+(120+(0.5 * sin(2 * pi * (time+90) / 7.5))*10)*master.camscale,y+((1 * sin(2 * pi * (time+90) / 7.5)-.5)*10),.35,.35,0,c_white,image_alpha)
}