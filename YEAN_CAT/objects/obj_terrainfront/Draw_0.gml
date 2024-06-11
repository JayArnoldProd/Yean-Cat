/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(Font4)
//var hyyy=power(playeraltitude,.75)*.75+y+50
var cyyy=obj_backg.slideplanet*2+power(clamp(playeraltitude+player_height_fromground/2,0,999999),.7)*.7+y-(1500-playeraltitude/12)
for (var i=0; i<6;i++) {
	//var hillxx=1000*sign(-(playerpos*.75+hillx))*(abs((playerpos*.75+hillx)/1000)-floor(abs((playerpos*.75+hillx)/1000)))-1000+x-1500+1000*i
	//var hillyy=hyyy
	var cloudxx=1500*sign(-(playerpos*.1+cloudx))*(abs((playerpos*.1+cloudx)/1500)-floor(abs((playerpos*.1+cloudx)/1500)))+x-1500-1500+1500*i
	//var cloudyy=cyyy
	//draw_sprite_ext(spr_hills,0,hillxx,hillyy,1,1,0,c_white,1);
	draw_sprite_ext(obj_backg.planets[obj_backg.planet,25],0,cloudxx,cyyy+lowercloud*2,-1.5,1.5,0,c_white,1);
}


