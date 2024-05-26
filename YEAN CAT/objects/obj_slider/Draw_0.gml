/// Draw Event of obj_slider

if dir=0 { //drawing horizontal slider
draw_sprite_ext(sprite_index,0,x-lengthh/2,y,lengthh/500,1,0,c_white,1);
draw_sprite_part_ext(spr_sliderrainbow,0,15,rainpos,480*(valuee/1),10,x-lengthh/2+10,y-5,lengthh/500,1,c_white,1)
draw_sprite_ext(spr_sliderbutton,0,(x-lengthh/2+15)*((1-valuee)/1)+(x+lengthh/2-15)*(valuee/1),y,1,1,0,c_white,1);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(Font2);
draw_text_transformed(x-3,y-45-3,textt,.9,.9,0)
draw_text_transformed(x-3,y-45+3,textt,.9,.9,0)
draw_text_transformed(x+3,y-45-3,textt,.9,.9,0)
draw_text_transformed(x+3,y-45+3,textt,.9,.9,0)
draw_set_color(c_white)
draw_text_transformed(x,y-45,textt,.9,.9,0)
} else { //drawing vertical slider
	//i still need this
}