/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alp);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if page=1 {
	var blr = (0.5 * sin(2 * pi * (time) / 5) + 0.5)
	var mvr = (1 * sin(2 * pi * (time) / 6) - 0.5)*5
	var svr= .95+(0.5 * sin(2 * pi * (time) / 7) + 0.5)/10
draw_sprite_ext(sprite_index,0,x+mvr,y-mvr,image_xscale*2*svr,image_yscale*2*svr,0,c_white,1-blr);
draw_sprite_ext(sprite_index,1,x-mvr,y+mvr,image_xscale*2*svr,image_yscale*2*svr,0,c_white,blr);
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.85);
}
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-575+15*(0.5 * sin(2 * pi/2 * time / 5)),menutitle_text,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-575+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),menutitle_text,2+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(x-6,y-575,menutitle_text,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6-575,menutitle_text,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y-575,menutitle_text,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-575,menutitle_text,1.9+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)


