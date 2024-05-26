/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(sqrt(sqrt(clamp(warningsize/scaleto,0,1))))
draw_circle_color(x,y,sizee*(warningsize/scaleto)*(scaleto*sprite_get_width(sprite_index)/2),c_red,c_red,1)

draw_self()

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,sqrt(image_alpha));
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(Font1)

//draw_text(x+200,y-200,"warning: "+string(warning))
//draw_text(x+200,y-125,"Wsize: "+string(warningsize))
//draw_text(x+200,y-50,"alph: "+string(alph))
//draw_text(x+200,y+25,"fade: "+string(fade))
//draw_text(x+200,y+100,"scale: "+string(scale))



