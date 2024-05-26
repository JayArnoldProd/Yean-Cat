/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,col,image_alpha)
if instance_exists(obj_nameplate) or master.playername="" {
	draw_set_alpha(0);
	exit
}
if master.devmode=1 {
	if keyboard_check(vk_space) {
		exit
	}
}
xx=x
draw_set_alpha(1);
yy=y
if hover>0 or os_type=os_macosx or os_type=os_windows {
draw_sprite_ext(spr_start, 2,x,y,1*scale,1*scale,0,col,1);
//    surface_set_target(_surf22);
offset=0
	draw_sprite_ext(spr_start, 1,x,y,1*scale,1*scale,0,make_color_hsv(0,0,hover),1);

	

//if sf=1 {
	if updatee=1 {
		if !surface_exists(_surf2) {
			_surf2 = surface_create(_sw, _sh);
		}
	if sprite_exists(sprite_index) {
    sprite_delete(sprite_index);
	}
    surface_set_target(_surf2);
    draw_clear_alpha(c_black, 0);
    draw_sprite_tiled(spr_rainbowback, 0, _sw/2-rainbowh, _sh/2-rainbowv)


    sprite_index = sprite_create_from_surface(_surf2, 0, 0, _sw, _sh, false, false, _sw/2, _sh/2);
    draw_clear_alpha(c_black, 0);
    //draw_sprite(spr_blackbox, 0, _xo, _yo);
	offset=0
	draw_sprite(spr_start, 0, _sw/2,_sh/2);
   
	_spr2 = sprite_create_from_surface(_surf2, 0, 0, _sw, _sh, false, false, _sw/2, _sh/2);
    surface_reset_target();
	surface_free(_surf2);
    sprite_set_alpha_from_sprite(sprite_index, _spr2);
    if sprite_exists(_spr2) {
	sprite_delete(_spr2);
	}
}
if sprite_exists(sprite_index) {
	draw_sprite_ext(sprite_index, 0, x, y,1*scale,1*scale,0,c_white,1);
}
	
//}

//sprite_delete(sprite_index);
//var _surf22 = surface_create(_sw, _sh);
xx=x
yy=y

offset=0
draw_sprite_ext(spr_start, 1, x,y,1*scale,1*scale,0,make_color_hsv(0,0,clamp(255-hover,0,255)),1);

draw_sprite_ext(spr_start, 1, x,y,1*scale,1*scale,0,make_color_hsv((colcol+timee+offset*14) % 256 ,(255 / 2) * (1 + sin((timee / 100+offset*pi/8) * 2 * pi))/2+127,.5*(255 / 2) * (1 - cos((timee / 100+(7-offset)*pi/8) * pi)) + 255 / 2),hover/255);
}

draw_sprite_ext(spr_start, 3,x,y,1*scale,1*scale,0,c_white,(255-hover)/255);

if ex=1 {
	draw_sprite_ext(spr_exclamation,exani,x+240+(0.5 * sin(2 * pi * (time+90) / 7.5))*10,y+(0.5 * sin(2 * pi * (time+90) / 7.5))*10,.5*scale,.5*scale,0,c_white,1)
} 

if ex=2 {
	draw_sprite_ext(spr_exclamation,exani,x+240+(0.5 * sin(2 * pi * (time+90) / 7.5))*10,y+(0.5 * sin(2 * pi * (time+90) / 7.5))*10,.5*scale,.5*scale,0,c_white,1)
}