/// @description Insert description here
// You can write your code in this editor
draw_self()
if lock=1 {

draw_sprite_ext(imag,0,x,y,image_xscale*100/(max(sprite_get_width(imag),sprite_get_height(imag))),image_xscale*100/(max(sprite_get_width(imag),sprite_get_height(imag))),0,col,1);

if lev > 0 {
draw_set_font(Font5);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x-3,y+3,string(lev));
draw_text(x-3,y-3,string(lev));
draw_text(x+3,y-3,string(lev));
draw_text(x+3,y+3,string(lev));
draw_set_color(c_white);
draw_text(x,y,string(lev));
}

} else {
	if master.notice[idd,0]>=1 {
	draw_sprite_ext(imag,0,x,y,image_xscale*100/(max(sprite_get_width(imag),sprite_get_height(imag))),image_xscale*100/(max(sprite_get_width(imag),sprite_get_height(imag))),0,c_white,1);
	
	if master.notice[idd,0]=1 and instance_exists(obj_upgrademenu) {
				//lock
	draw_sprite_ext(spr_lock,0,x,y,image_xscale/5,image_yscale/5,0,lockcol,obj_upgrademenu.dfade);
	draw_sprite_ext(spr_lock,1,x+clamp(unlockani,0,1)*40*image_xscale,y,image_xscale/5*clamp(1-unlockani*2,-1,1),image_yscale/5,0,lockcol,obj_upgrademenu.dfade);
	draw_sprite_ext(spr_lock,2,x,y,image_xscale/5,image_yscale/5,0,lockcol,1-obj_upgrademenu.dfade);
	if master.notice[idd,0]=1 {
		draw_sprite_ext(spr_exclamation,floor(exani),x+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,image_xscale/4,image_yscale/4,0,c_white,1-(ltime/30))
	}
	if master.notice[idd,1]=1 {
		draw_sprite_ext(spr_exclamation,floor(exani),x+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,image_xscale/4,image_yscale/4,0,c_white,1-(ltime/30))
	}
	
	} else {

//lock
	draw_sprite_ext(spr_lock,0,x,y,image_xscale/5,image_yscale/5,0,lockcol,1-(ltime/30));
	draw_sprite_ext(spr_lock,1,x+clamp(unlockani,0,1)*40*image_xscale,y,image_xscale/5*clamp(1-unlockani*2,-1,1),image_yscale/5,0,lockcol,1-(ltime/30));
	if master.notice[idd,0]=1 {
		draw_sprite_ext(spr_exclamation,floor(exani),x+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,image_xscale/4,image_yscale/4,0,c_white,1-(ltime/30))
	}
	if master.notice[idd,1]=1 {
		draw_sprite_ext(spr_exclamation,floor(exani),x+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,image_xscale/4,image_yscale/4,0,c_white,1-(ltime/30))
	}
		
	}
	
	} else {
	//draw_sprite_ext(imag,0,x,y,image_xscale*100/(max(sprite_get_width(imag),sprite_get_height(imag))),image_xscale*100/(max(sprite_get_width(imag),sprite_get_height(imag))),0,c_black,1);
	draw_sprite_ext(spr_lock,2,x,y,image_xscale/5,image_yscale/5,0,c_dkgrey,1);
	}

}

//draw_set_color(c_black)
//draw_text(x-50,y-100,string(unlockani))
//draw_text(x,y-100,string(lock))
//draw_text(x,y-100,string(master.notice[idd,0]))
//draw_text(x+50,y-100,string(master.notice[idd,1]))