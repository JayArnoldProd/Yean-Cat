
xx=x
draw_set_alpha(1);
yy=y
if os_type != os_ios and os_type != os_android  {
//    surface_set_target(_surf2);
offset=0
	draw_sprite_ext(spr_logoletters, 1, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+0) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);
	offset=1
	draw_sprite_ext(spr_logoletters, 3, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+pi/8) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);
	
	offset=2
	draw_sprite_ext(spr_logoletters, 5, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+2*pi/8) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);
	
	offset=3
	draw_sprite_ext(spr_logoletters, 7, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+3*pi/8) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);
	
	offset=5
	draw_sprite_ext(spr_logoletters, 9, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+4*pi/8) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);
	
	offset=6
	draw_sprite_ext(spr_logoletters, 11, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+5*pi/8) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);
	
	offset=7
	draw_sprite_ext(spr_logoletters, 13, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+6*pi/8) + 0.5)*75,1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),1.09+.1*0.45 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv(0,0,0.5 * (1 + sin(-timee/8+offset*pi/4)) * 255),1);


	

//if sf=1 {
	if updatee=1 {
		if !surface_exists(_surf) {
			_surf = surface_create(_sw, _sh);
		}
	if sprite_exists(sprite_index) {
    sprite_delete(sprite_index);
	}
    surface_set_target(_surf);
    draw_clear_alpha(c_black, 0);
    draw_sprite_tiled(spr_rainbowback, 0, _sw/2-rainbowh, _sh/2-rainbowv)


    sprite_index = sprite_create_from_surface(_surf, 0, 0, _sw, _sh, false, false, _sw/2, _sh/2);
    draw_clear_alpha(c_black, 0);
    //draw_sprite(spr_blackbox, 0, _xo, _yo);
	offset=0
	draw_sprite(spr_logoletters, 0, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+0) + 0.5)*75);
    offset=1
	draw_sprite(spr_logoletters, 2, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+pi/8) + 0.5)*75);
    offset=2
	draw_sprite(spr_logoletters, 4, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+2*pi/8) + 0.5)*75);
    offset=3
	draw_sprite(spr_logoletters, 6, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+3*pi/8) + 0.5)*75);
    offset=5
	draw_sprite(spr_logoletters, 8, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+4*pi/8) + 0.5)*75);
    offset=6
	draw_sprite(spr_logoletters, 10, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+5*pi/8) + 0.5)*75);
    offset=7
	draw_sprite(spr_logoletters, 12, _sw/2-600+offset*180, _sh/2+(0.5 * sin(2 * pi * (time) / 30+6*pi/8) + 0.5)*75);
    
	_spr = sprite_create_from_surface(_surf, 0, 0, _sw, _sh, false, false, _sw/2, _sh/2);
    surface_reset_target();
	surface_free(_surf);
    sprite_set_alpha_from_sprite(sprite_index, _spr);
    if sprite_exists(_spr) {
	sprite_delete(_spr);
	}
}
if sprite_exists(sprite_index) {
	draw_sprite(sprite_index, 0, x, y);
}
	
//}




//sprite_delete(sprite_index);
//var _surf2 = surface_create(_sw, _sh);
xx=x
yy=y
//    surface_set_target(_surf2);
offset=0
	draw_sprite_ext(spr_logoletters, 1, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+0) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
    offset=1
	
	draw_sprite_ext(spr_logoletters, 3, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+pi/8) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
    offset=2
	
	draw_sprite_ext(spr_logoletters, 5, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+2*pi/8) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
    offset=3
	
	draw_sprite_ext(spr_logoletters, 7, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+3*pi/8) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
    offset=5
	
	draw_sprite_ext(spr_logoletters, 9, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+4*pi/8) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
    offset=6
	
	draw_sprite_ext(spr_logoletters, 11, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+5*pi/8) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
    offset=7
	
	draw_sprite_ext(spr_logoletters, 13, -600+offset*180+xx, yy+(0.5 * sin(2 * pi * (time) / 30+6*pi/8) + 0.5)*75,1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),1+.1*0.4 * (1 + sin(timee/4+offset*pi/8)),0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),1);
	
	//sprite_index = sprite_create_from_surface(_surf2, 0, 0, _sw, _sh, false, false, _sw/2, _sh/2);
	//surface_reset_target();
    //surface_free(_surf2);
	//draw_sprite(sprite_index, 0, x, y);
//	if sf=1 {
//if !surface_exists(_surf) {
//	sf=0
//}
//	}
//draw_set_alpha(1);
//draw_set_font(Font5);
//draw_set_color(c_white) ;
//draw_text(x,y-150,string(time))
} else {
	if instance_exists(obj_logo) {
		draw_set_font(Font7)
var stx=x-550
var sty=y+45+.5*string_width_ext(chosensplash,-1,-1)*sin(degtorad((splashangle/2)));

for (var i=1; i<string_length(chosensplash)+1;i++){
	var splashgrow= (1.42+.28* sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))*(2.14-.99*clamp(1-(8/(string_length(chosensplash))),0,1))
		var yoff=10 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i))-string_width(string_copy(chosensplash,0,i-1))*(2.14-.99*clamp(1-(8/(string_length(chosensplash))),0,1)) * sin(degtorad(splashangle));
	draw_set_color(c_white)
	draw_set_font(Font5)

	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(make_color_hsv(0,0,255-splashalpha/(string_length(chosensplash))*255/2-255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i))/2));	
	
	draw_set_alpha(clamp((splashalpha)/(i*2),0,.5));
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(3.9-.99*clamp(1-(8/(string_length(chosensplash))),0,1)),sty+yoff,string_char_at(chosensplash,i),1.3*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.35*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle/2)
	//draw_text_transformed((4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed(-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed(-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	draw_set_alpha(splashalpha/(i));
	draw_set_color(make_color_hsv(.5*255+.5*255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)),255,255));	
	
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(3.9-.99*clamp(1-(8/(string_length(chosensplash))),0,1)),sty+yoff,string_char_at(chosensplash,i),1.15*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.2*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle/2)
	draw_set_color(make_color_hsv(.5*255+.5*255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime*2+i)),255-splashalpha/(string_length(chosensplash))*200-55 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)),255));	
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(3.9-.99*clamp(1-(8/(string_length(chosensplash))),0,1)),sty+yoff,string_char_at(chosensplash,i),splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle/2)

}
}
}
