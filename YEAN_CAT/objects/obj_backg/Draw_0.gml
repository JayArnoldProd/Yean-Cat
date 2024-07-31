var depth_effect = depth * global.threedee * 0.01;
var x_offset = global.macro5;
var y_offset = global.macro6;

var matrix = matrix_build(x + x_offset, y + y_offset, depth_effect, 0, 0, 0, 1, 1, 1);
matrix_set(matrix_world, matrix);

if master.devmode=1 {
	if keyboard_check(vk_space) {
		draw_set_color(c_green)
draw_rectangle(0,0,room_width,room_height,0)
		exit
	}
} else {
	draw_set_color(backgroundcolor)
draw_rectangle(0+(obj_camera.target_x-room_width/2),0+(obj_camera.target_y-room_height/2),room_width+(obj_camera.target_x-room_width/2),room_height+(obj_camera.target_y-room_height/2),0)
}

if !is_nan(lalph) and !is_nan(alph) {
draw_sprite_ext(spr_skygrade,0,obj_camera.target_x,5*obj_camera.target_y+(room_height/8)*global.camera_zoom+playeraltitude/50,4*global.camera_zoom,4*planets[planet,11],0,planets[planet,10],planets[planet,12]*(1-playeraltitude/40000));
 draw_sprite_tiled_ext(back, 1, _sw/2-rainbowh, _sh/2-rainbowv,global.camera_zoom*back1scale,global.camera_zoom*back1scale,c_white,sqrt(lalph))
 draw_sprite_tiled_ext(back2, 1, _sw2/2-rainbowh2, _sh2/2-rainbowv2,global.camera_zoom*back2scale,global.camera_zoom*back2scale,c_white,sqr(lalph))
draw_sprite_tiled_ext(back2, 0, _sw2/2-rainbowh2, _sh2/2-rainbowv2,global.camera_zoom*back2scale,global.camera_zoom*back2scale,c_white,alph)
 draw_sprite_tiled_ext(back, 0, _sw/2-rainbowh, _sh/2-rainbowv,global.camera_zoom*back1scale,global.camera_zoom*back1scale,c_white,sqrt(alph))
}

//planets 0location, 1size, 2gravity, 3background, 4clouds, 5skycolor1, 6skycolor2, 7tileid,8distance,9planetimage

if is_undefined(planrot) {
	planrot=0
}
	var planxx=obj_camera.target_x+global.camera_zoom*(room_width/3)*d2plan/7
	var planyy=obj_camera.target_y*1.5-150-sqr((playeraltitude+8000)/12000)*28+clamp((1 - abs(playeraltitude - 18500) / 24500),0,.9)*500-clamp((playeraltitude-40000)/3500,0,10000)
	//var ranx= ()*(abs(lengthdir_x(1,planrot))) + ()*(abs(lengthdir_y(1,planrot)))
	//var rany= ()*(abs(lengthdir_y(1,planrot))) + ()*(abs(lengthdir_x(1,planrot)))
	var ranx=(planets[planet,1]/10)*clamp(1*(1*((8.2/((1.5*sqr(slideplanet/800)+.5)*power(1+clamp(((playeraltitude*.7))/40000,0,1)*((((playeraltitude*.7)+1000)/10000)/(((playeraltitude*.7)+1000)/10000+.01)),3))-(4.1-4/(sqr(1+(playeraltitude*.7)/10000))))*(abs(lengthdir_x(1,planrot))))+((4.1-(4-4/(sqr(1+(playeraltitude*.7)/10000))))*(abs(lengthdir_y(1,clamp(planrot,0,360)))))*(clamp(1-1/(sqr(1+(playeraltitude*.7)/10000))+slideplanet/800,0,1))*1),(8/(sqr(1+(playeraltitude*.7)/40000)))*clamp((playeraltitude*.7)/20000,0,1),99)
	var rany=(planets[planet,1]/10)*clamp(1*(1*((8.2/((1.5*sqr(slideplanet/800)+.5)*power(1+clamp(((playeraltitude*.7))/40000,0,1)*((((playeraltitude*.7)+1000)/10000)/(((playeraltitude*.7)+1000)/10000+.01)),3))-(4.1-4/(sqr(1+(playeraltitude*.7)/10000))))*(abs(lengthdir_y(1,planrot))))+((4.1-(4-4/(sqr(1+(playeraltitude*.7)/10000))))*(abs(lengthdir_x(1,clamp(planrot,0,360)))))*(clamp(1-1/(sqr(1+(playeraltitude*.7)/10000))+slideplanet/800,0,1))*1),(8/(sqr(1+(playeraltitude*.7)/40000)))*clamp((playeraltitude*.7)/20000,0,1),99)
	draw_sprite_ext(planets[planet,9],0,planxx,planyy*1-slideplanet*.55,ranx*global.camera_zoom*.4*(7.5-abs(d2plan))/7.5,rany*global.camera_zoom*.4*(7.5-abs(d2plan))/7.5,planrot,c_white,clamp(slideplanet/200+(1-1/(1+clamp(playeraltitude-500,0,9999999)/10000)),0,1));

//draw_sprite_ext(back,1,x,y,2*master.camscale,2*master.camscale,0,c_white,lalph)
//draw_sprite_ext(back,0,x,y,2*master.camscale,2*master.camscale,0,c_white,alph)
matrix_set(matrix_world, matrix_build_identity());