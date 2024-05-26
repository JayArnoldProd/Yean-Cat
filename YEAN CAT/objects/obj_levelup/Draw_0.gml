/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(al)
draw_set_color(c_black);

	draw_rectangle(0,0,room_width,room_height,0)

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,sqrt(al))
//draw_set_color(c_white)
//draw_text(x-800,y-50,string(choice1))
//draw_text(x-800,y,string(choice2))
//draw_text(x-800,y+50,string(choice3))
//draw_text(x-800,y+100,string(choice4))
//draw_text(x-800,y+150,string(wwcount+ppcount))
//draw_text(x-800,y+200,string(master.choicecount))
//draw_text(x-800,y+250,string(choicetotal))
//draw_text(x-800,y+300,"CAP"+string(allcap))
//draw_text(x-800,y+350,"W"+string(master.wepcount))
//draw_text(x-800,y+350,"P"+string(master.pascount))
//draw_text(x-800,y+400,"ps"+string(array_length(master.pass)))
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_font(Font5);
bannertextt = "LEVEL UP"

if banishing=1 {
	bannertextt = "BANISH"
}
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5))*sss,-2+y-400*sss-clamp(choicetotal-3,0,1)*85*sss+15*(0.5 * sin(2 * pi/2 * time / 5)*sss),bannertextt,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5))*sss,5+y-400*sss-clamp(choicetotal-3,0,1)*85*sss+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)*sss),bannertextt,2+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(x-6,y-400*sss-clamp(choicetotal-3,0,1)*85*sss,bannertextt,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14*sss,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6-400*sss-clamp(choicetotal-3,0,1)*85*sss,bannertextt,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14*sss,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y-400*sss-clamp(choicetotal-3,0,1)*85*sss,bannertextt,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14*sss,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-400*sss-clamp(choicetotal-3,0,1)*85*sss,bannertextt,1.9+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15*sss,0,c_white,c_white,c_white,c_white,1)