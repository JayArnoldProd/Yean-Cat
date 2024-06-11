/// @description Insert description here
// You can write your code in this editor
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
var rot=0
//for (var iii=0; iii<array_length(terrain); iii++) {
	
//	if iii<array_length(terrain)-1 and iii>0 {
//	rot=point_direction(0,terrain[iii-1]*terrainheight,spacing*2,terrain[iii+1]*terrainheight)
//	} else {
//		if iii=0 {
//			rot=point_direction(0,terrain[iii]*terrainheight,spacing,terrain[iii+1]*terrainheight)
//		} else {
//			rot=point_direction(0,terrain[iii-1]*terrainheight,spacing,terrain[iii]*terrainheight)
		
//		}

//	}
//	var flip=1
//	var xx=spacing*sign(-playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing)))-spacing+x-room_width/2+room_width*(iii/partcount)
//	var yy=yyy+terrain[iii]*terrainheight
	
	
//	var yoff = gscale*abs(tan(degtorad(rot)))
//	if (rot<90 and rot>0) or (rot>180 and rot<270) {
//		draw_sprite_ext(spr_dirtangle,1,xx,yy+225*gscale,flip*2.1*gscale,2*yoff,0,c_white,1)
		
//	} else {
//		if (rot>90 and rot<180) or (rot>270 and rot<360) {
//			draw_sprite_ext(spr_dirtangle,0,xx,yy+225*gscale,flip*2.1*gscale,2*yoff,0,c_white,1)
	
//		}
//	}
//	var cflip = (iii+xoffset) mod 8 + 1
//	var cslide=0
//	if cflip=1 {
//		flip=1*f1
//		cslide=0
//	} else if cflip=2 {
//		flip=1*f2
//		cslide=0
//	} else if cflip=3 {
//		flip=-1*f3
//		cslide=1
//	} else if cflip=4 {
//		flip=-1*f4
//		cslide=-1
//	} else if cflip=5 {
//		flip=-1*f5
//		cslide=1
//	} else if cflip=6 {
//		flip=-1*f6
//		cslide=-1
//	} else if cflip=7 {
//		flip=1*f7
//		cslide=0
//	} else if cflip=8 {
//		flip=-1*f8
//		cslide=0
//	}

//	for (var tt=0; tt<ceil(terrainheight*(-terrain[clamp(iii,0,array_length(terrain)-1)]+maxfun)/(1000*gscale))+1; tt+=1) {
//	if (iii+xoffset) % 2=0 {
//	draw_sprite_ext(spr_dirt,(cslide+4+tt*2) mod 4,xx,yy+225*gscale+yoff*500+1000*tt*gscale,flip*2.1*gscale,2.1*gscale,0,c_white,1)
//	} else {
//	draw_sprite_ext(spr_dirt,(1+cslide+4+tt*2) mod 4,xx,yy+225*gscale+yoff*500+1000*tt*gscale,flip*2.1*gscale,2.1*gscale,0,c_white,1)
//	}
//	}
//	draw_sprite_ext(spr_grass,planets[planet,13],xx,yy,gscale*1.05,gscale*2,rot,c_white,1)
//	draw_set_color(c_white)
//	draw_set_alpha(1);
//	//draw_text(xx,yy-200,string(1));
////draw_text(spacing*sign(-playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing)))-spacing+x-room_width/2+room_width*(i/partcount),y+terrain[i]*terrainheight-100,"i: "+string(i));
////draw_text(spacing*sign(-playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing)))-spacing+x-room_width/2+room_width*(i/partcount),y+terrain[i]*terrainheight,"v: "+string(terrain[i]*terrainheight));
////draw_text(spacing*sign(-playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing)))-spacing+x-room_width/2+room_width*(i/partcount),y+terrain[i]*terrainheight+100,"h: "+string(sign(-playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing)))));
//}
if instance_exists(yeancat) {
	//draw_sprite_ext(spr_darkgradient,0,x,yyy+350,3.85*master.camscale,master.camscale*(2-clamp(yeancat.y+100-room_height/2,0,900)/600),0,c_white,(1-1/(1+clamp(yeancat.y-room_height/4-500,0,2000)/200)))

	//draw_text(yeancat.x,yeancat.y-500,"onground: "+string(yeancat.onground));
	//draw_text(yeancat.x,yeancat.y-400,"jumpheight: "+string(yeancat.jumpheight));
	//draw_text(yeancat.x,yeancat.y-300,"jumping: "+string(yeancat.jumping));
	//draw_text(yeancat.x,yeancat.y-200,"facing: "+string(yeancat.facing));
	//draw_text(yeancat.x,yeancat.y-600,"canjump: "+string(yeancat.canjump));

}

