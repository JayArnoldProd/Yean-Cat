///Draw Event of obj_options

draw_set_alpha(alp);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.7);

draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-575+15*(0.5 * sin(2 * pi/2 * time / 5)),"OPTIONS",2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-575+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"OPTIONS",2+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(x-6,y-575,"OPTIONS",1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6-575,"OPTIONS",1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y-575,"OPTIONS",1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-575,"OPTIONS",1.9+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)


