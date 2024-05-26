/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_tracer1,image_index,x,y,image_xscale,image_yscale*(clamp(1-sqr(clamp(warningsize/scaleto,0,1)),0,1)),image_angle,c_white,sqrt(clamp(warningsize/scaleto,0,1)))
draw_self()
draw_sprite_ext(spr_laser1,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,sqrt(clamp(image_alpha,0,1)))



//draw_set_color(c_white)
//draw_set_alpha(1)
//draw_set_font(Font1)


//draw_text(x+200,y-200,"warning: "+string(warning))
//draw_text(x+200,y-125,"Wsize: "+string(warningsize))
//draw_text(x+200,y-50,"alph: "+string(alph))
//draw_text(x+200,y+25,"fade: "+string(fade))
//draw_text(x+200,y+100,"scale: "+string(scale))





