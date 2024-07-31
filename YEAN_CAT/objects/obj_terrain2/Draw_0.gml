
if master.devmode=1 {
	if keyboard_check(vk_space) {
		exit
	}
}

draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(Font4)
var yyy=power(clamp(playeraltitude+player_height_fromground/2,0,999999),.85)+y
var hyyy=power(clamp(playeraltitude+player_height_fromground/2,0,999999),.7)+y+50
var cyyy=obj_backg.slideplanet*2+power(clamp(playeraltitude+player_height_fromground/2,0,999999),.65)+y-(1000-playeraltitude/10)
for (var i=0; i<6;i++) {
	var hillxx=2000*sign(-(playerpos*.05+hillx))*(abs((playerpos*.2+hillx)/2000)-floor(abs((playerpos*.2+hillx)/2000)))+x-2000-3000+2000*i
	var hillyy=hyyy
	var cloudxx=1000*sign(-(playerpos*.1+cloudx))*(abs((playerpos*.1+cloudx)/1000)-floor(abs((playerpos*.1+cloudx)/1000)))+x-1000-1500+1000*i
	var cloudyy=cyyy
	draw_sprite_ext(planets[planet,3],0,hillxx,hillyy,2,2,0,c_white,1);
	//draw_sprite_ext(planets[planet,4],1,cloudxx,cloudyy+lowercloud,2,2,0,c_white,1);
}
for (var ii=0; ii<6;ii++) {
	var hillxx=2000*sign(-(playerpos*.2+hillx))*(abs((playerpos*.2+hillx)/2000)-floor(abs((playerpos*.2+hillx)/2000)))+x-2000-3000+2000*ii
	var hillyy=hyyy
	var cloudxx=1000*sign(-(playerpos*.025+cloudx))*(abs((playerpos*.025+cloudx)/1000)-floor(abs((playerpos*.025+cloudx)/1000)))+x-1000-1500+1000*ii
	var cloudyy=cyyy
	//draw_sprite_ext(planets[planet,3],0,hillxx,hillyy,2,2,0,c_white,1);
	draw_sprite_ext(planets[planet,4],1,cloudxx,cloudyy+lowercloud/2-200,1,1,0,c_white,1);
}
