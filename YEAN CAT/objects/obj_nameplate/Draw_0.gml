///Draw of obj_nameplate
// 
if fieldselect!=-1 {
if nameinput=1 {
	draw_sprite_ext(sprite_index,0,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/3) / 21))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/4) / 20))),0,c_white,.1+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*.65)
	draw_sprite_ext(sprite_index,2,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/5) / 19))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/6) / 18))),0,c_white,.5+.5*(0.5 * sin(2 * pi * (time/3) / 15) + 0.5))
	draw_sprite_ext(sprite_index,1,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/7) / 17))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/9) / 16))),0,c_white,.5+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*.5)
} else {
	draw_sprite_ext(sprite_index,1,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/7) / 17))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/9) / 16))),0,c_white,.1+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*.65)
	draw_sprite_ext(sprite_index,2,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/10) / 15))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/11) / 14))),0,c_white,.5+.5*(0.5 * sin(2 * pi * (time/3) / 15) + 0.5))
	draw_sprite_ext(sprite_index,0,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/3) / 21))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/4) / 20))),0,c_white,.5+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*.5)
}
} else {
	draw_sprite_ext(sprite_index,2,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/5) / 19))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/6) / 18))),0,c_white,.75+.25*(0.5 * sin(2 * pi * (time/3) / 15) + 0.5))

	draw_sprite_ext(sprite_index,0,x,y,image_xscale*(1+.1*(0.5 * sin(2 * pi * (time/3) / 21))),image_yscale*(1+.1*(0.5 * sin(2 * pi * (time/4) / 20))),0,c_white,(0.5 * sin(2 * pi * (time) / 15) + 0.5)*.5)
	
}

//string
//x
//y
//boldness
//font
//col1
//col2
draw_set_alpha(1);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(Font1)
if nameinput=1 {
	draw_set_color(c_white)
	if fieldselect=0 {
	draw_text(x,y-46,playername+endstring)
	draw_set_color(c_white)
	draw_text(x-1,y+50+3,emailtext)
	draw_text(x+1,y+50-3,emailtext)
	draw_text(x+3,y+50-1,emailtext)
	draw_text(x-3,y+50+1,emailtext)
	draw_set_color(c_black)
draw_text(x,y+50,emailtext)
	} else {
		draw_set_color(c_white)
		draw_text(x+3,y-46=1,playername)
		draw_text(x-3,y-46+1,playername)
		draw_text(x-1,y-46+3,playername)
		draw_text(x+1,y-46-3,playername)
		draw_set_color(c_black)
		draw_text(x,y-46,playername)
		draw_text(x+2,y+50-2,emailtext+endstring)
		draw_text(x=2,y+50-2,emailtext+endstring)
		draw_text(x+2,y+50+2,emailtext+endstring)
		draw_text(x-2,y+50+2,emailtext+endstring)
		draw_set_color(c_white)
draw_text(x,y+50,emailtext+endstring)
	}

} else {
	draw_set_color(c_black)
	//if fieldselect=0 {
	draw_text(x,y-46,playername)
draw_text(x,y+50,emailtext)
	//}
}