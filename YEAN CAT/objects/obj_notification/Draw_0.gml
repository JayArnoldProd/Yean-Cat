/// @description Insert description here
// You can write your code in this editor
var smaller=1.25
if desc=desc2 or typee=3 or typee=5 {
	if typee!=0 {
	smaller=1.25
	}
}
if typee=0 {
	smaller=1.25
}

//bottom desc and test
var largertext=max(string_length(chosensplash)*1.1,.66*string_length(desc))
draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(1)
draw_sprite_ext(spr_notification2,0,x,y+slide*master.camscale-(100),smaller*master.camscale*stretchin*(.3+.8*clamp(largertext/((65)),0,.77)),master.camscale,0,c_white,(splashalpha/largertext))
draw_set_color(make_color_hsv(0,0,255-255*((splashalpha/(largertext*.5)))));
draw_text_transformed(x+4,y-4+slide*master.camscale-50,desc,master.bdistplay6*master.camscale*stretchin,master.bdistplay6*master.camscale,bottomfade);
draw_text_transformed(x+4,y+4+slide*master.camscale-50,desc,master.bdistplay6*master.camscale*stretchin,master.bdistplay6*master.camscale,bottomfade);
draw_text_transformed(x-4,y-4+slide*master.camscale-50,desc,master.bdistplay6*master.camscale*stretchin,master.bdistplay6*master.camscale,bottomfade);
draw_text_transformed(x-4,y+4+slide*master.camscale-50,desc,master.bdistplay6*master.camscale*stretchin,master.bdistplay6*master.camscale,bottomfade);
draw_set_color(make_color_hsv(0,0,255*((splashalpha/(largertext*.5)))));
draw_text_transformed(x,y+slide*master.camscale-50,desc,master.bdistplay6*master.camscale*stretchin,master.bdistplay6*master.camscale,bottomfade);
//rainbow
//sprite_set_offset(spr_notificationrainbow,sprite_get_width(spr_notificationrainbow)/2,sprite_get_height(spr_notificationrainbow)/2)
var bowshiftt=smaller*(.3+.8*clamp(largertext/((65)),0,.77))*master.camscale*(stretchin)*sprite_get_width(spr_notificationrainbow)/2
draw_sprite_part_ext(spr_notificationrainbow,0,0,rainpos,sprite_get_width(spr_notificationrainbow),sprite_get_height(spr_notificationrainbow)/2,x-bowshiftt-smaller*(.3+.8*clamp(largertext/((65)),0,.77))*master.camscale*(stretchin)*2,y-master.camscale*sprite_get_height(spr_notificationrainbow)/2,smaller*stretchin*master.camscale*(.3+.8*clamp(largertext/((65)),0,.77)),master.camscale,c_white,1)
//top gradient
sprite_set_offset(spr_notification,sprite_get_width(spr_notificationrainbow)/2,sprite_get_height(spr_notificationrainbow)/2)
draw_sprite_ext(spr_notification,0,x,y,master.camscale*stretchin*(.3+.8*clamp(largertext/((65)),0,.77))*smaller,master.camscale,0,c_white,1-(splashalpha/largertext)/2)

//top border and name
draw_sprite_ext(spr_notification,1,x,y,master.camscale*stretchin*(.3+.8*clamp(largertext/((65)),0,.77))*smaller,master.camscale,0,c_white,1)

//image
if desc=desc2 or typee=3 or typee=5 {
	if typee!=0 {
draw_sprite_ext(image,imageind,x-smaller*550*(.3+.8*clamp(largertext/((65)),0,.77))*master.camscale*(stretchin),y-master.bdistplay7,master.camscale*stretchin*(300/sprite_get_height(image))*.3,master.camscale*(300/sprite_get_height(image))*.3,0,c_white,1)
draw_sprite_ext(image,imageind,x+smaller*550*(.3+.8*clamp(largertext/((65)),0,.77))*master.camscale*(stretchin),y-master.bdistplay7,master.camscale*stretchin*(300/sprite_get_height(image))*.3,master.camscale*(300/sprite_get_height(image))*.3,0,c_white,1)
	}
}

//character
if typee=0 {
draw_sprite_ext(image,imageind,x-smaller*550*(.3+.8*clamp(largertext/((65)),0,.77))*master.camscale*(stretchin),y-master.bdistplay7,master.camscale*stretchin*(300/sprite_get_height(image))*.3,master.camscale*(300/sprite_get_height(image))*.3,0,c_white,1)
draw_sprite_ext(image,imageind,x+smaller*550*(.3+.8*clamp(largertext/((65)),0,.77))*master.camscale*(stretchin),y-master.bdistplay7,master.camscale*stretchin*(300/sprite_get_height(image))*.3,master.camscale*(300/sprite_get_height(image))*.3,0,c_white,1)
}


if fancy=1 {
		draw_set_font(Font7)
var stx=x-(((-5)))*stretchin-(clamp(string_length(chosensplash)+1,(8),((22.5)))*((15)))*(stretchin)
var sty=y+.12*string_width_ext(chosensplash,-1,-1)*sin(degtorad((splashangle/2)))-50*master.camscale;

for (var i=1; i<string_length(chosensplash)+1;i++){
	var splashgrow= (((1))+.1* sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))*(1-.5*clamp(1-(8/(string_length(chosensplash))),0,1))
		var yoff=2 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i*2))-string_width(string_copy(chosensplash,0,i-1))*(1.14-.14*clamp(1-(8/(string_length(chosensplash))),0,1)) * sin(degtorad(splashangle));
	draw_set_color(c_white)
	draw_set_font(Font5)

	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_color(make_color_hsv(0,0,255-255*((splashalpha/string_length(chosensplash)))));	
	
	draw_set_alpha(1);
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(((1.16))-((.6))*clamp(1-(((4))/(string_length(chosensplash)+(.15))),0,1))*stretchin*((1.1)),sty+yoff,string_char_at(chosensplash,i),1.3*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.35*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle/2)
	//draw_text_transformed((4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed(-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed(-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	draw_set_alpha(splashalpha/(i));
	draw_set_color(make_color_hsv(.5*255+.5*255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)),255,255));	
	
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(((1.16))-((.6))*clamp(1-(((4))/(string_length(chosensplash)+(.15))),0,1))*stretchin*((1.1)),sty+yoff,string_char_at(chosensplash,i),1.15*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.2*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle/2)
	draw_set_color(make_color_hsv(.5*255+.5*255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime*2+i)),255-splashalpha/(string_length(chosensplash))*200-55 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)),255));	
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(((1.16))-((.6))*clamp(1-(((4))/(string_length(chosensplash)+(.15))),0,1))*stretchin*((1.1)),sty+yoff,string_char_at(chosensplash,i),splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle/2)

}
} else {
}
//bottom desc
//draw_sprite_ext()
//bottom desc
//draw_sprite_ext()