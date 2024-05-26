/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(al)
draw_set_color(c_black);
//if stretched=0 {
//if xptime>=xplength{
//	stretchyy= stretchy
//}
//}
//top
draw_rectangle(0,0,room_width,y-379*master.camscale*stretchy,0)
//bottom
draw_rectangle(0,y+379*master.camscale*stretchy,room_width,room_height,0)
//left
draw_rectangle(0,y-379*master.camscale*stretchy,room_width/2-500*master.camscale,y+379*master.camscale*stretchy,0)
//right
draw_rectangle(room_width/2+500*master.camscale,y-379*master.camscale*stretchy,room_width,y+379*master.camscale*stretchy,0)
draw_set_alpha(1);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var spacee=0
if page=0 {
	spacee=0
} else {
	if instance_exists(restar) {
		spacee=370*(1-(clamp((room_height/2-restar.y)/700,0,1)))
	}
}
draw_sprite_ext(sprite_index,image_index,x,y,master.camscale*(2.2),master.camscale*(1.8)*stretchy,0,c_white,al*2);
draw_sprite_ext(spr_sumbow,0,-spacee+sprite_get_width(spr_sumbow)*master.camscale*2.06+room_width/2-891*master.camscale,y-2*sprite_get_height(spr_sumbow)*master.camscale+sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,-2.07*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumbow,0,-spacee+sprite_get_width(spr_sumbow)*master.camscale*2.06+room_width/2-891*master.camscale,y+sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,-2.07*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumbow,0,-spacee+sprite_get_width(spr_sumbow)*master.camscale*2.06+room_width/2-891*master.camscale,y-1*sprite_get_height(spr_sumbow)*master.camscale+sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,-2.07*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumbow,0,spacee+room_width/2+522*master.camscale,y-sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.05*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumbow,0,spacee+room_width/2+522*master.camscale,y+1*sprite_get_height(spr_sumbow)*master.camscale-sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.05*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumbow,0,spacee+room_width/2+522*master.camscale,y-1*sprite_get_height(spr_sumbow)*master.camscale-sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.05*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumstar,0,-spacee+room_width/2+522*master.camscale,y-2*sprite_get_height(spr_sumbow)*master.camscale+sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.07*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumstar,0,-spacee+room_width/2+522*master.camscale,y+sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.07*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumstar,0,-spacee+room_width/2+522*master.camscale,y-1*sprite_get_height(spr_sumbow)*master.camscale+sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.07*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumstar,0,spacee+room_width/2-891*master.camscale,y-sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.05*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumstar,0,spacee+room_width/2-891*master.camscale,y+1*sprite_get_height(spr_sumbow)*master.camscale-sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.05*master.camscale,master.camscale,0,c_white,bowstr);
draw_sprite_ext(spr_sumstar,0,spacee+room_width/2-891*master.camscale,y-1*sprite_get_height(spr_sumbow)*master.camscale-sprite_get_height(spr_sumbow)*(bowshift/100)*master.camscale,2.05*master.camscale,master.camscale,0,c_white,bowstr);



if master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3) > 0 {
var yy=master.camscale*(-130)
//points
if master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3) > 1 {
pointxt=string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINTS"
} else {
pointxt=string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINT"
}
//var yy=master.camscale*(-270)
} else {
//var yy=master.camscale*(-200)
pointxt=""
}
if page=0 {
var yy=master.camscale*(-103)-(restar.stretchy-1)*40*master.camscale

//level
draw_text_transformed_color(x-6,y+yy,"LEVEL "+string(master.characters[master.charselect,2]),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),.8*master.camscale*(1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,"LEVEL "+string(master.characters[master.charselect,2]),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,"LEVEL "+string(master.characters[master.charselect,2]),.8*master.camscale*(1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,"LEVEL "+string(master.characters[master.charselect,2]),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15),0,c_white,c_white,c_white,c_white,1)

yy=master.camscale*(-160)-(restar.stretchy-1)*30*master.camscale


draw_text_transformed_color(x-6,y+yy,string(master.characters[master.charselect,1]),master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),master.camscale*(1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,string(master.characters[master.charselect,1]),master.camscale*(1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),master.camscale*(1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,string(master.characters[master.charselect,1]),master.camscale*(1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,string(master.characters[master.charselect,1]),master.camscale*(1+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15),master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15),0,c_white,c_white,c_white,c_white,1)
} else {
	draw_text_transformed_color(room_width/2-10,room_height/2+5,"(COMING SOON)",2,2,0,c_black,c_black,c_black,c_black,1)
draw_text_transformed_color(room_width/2+5,room_height/2-10,"(COMING SOON)",2,2,0,c_black,c_black,c_black,c_black,1)
draw_text_transformed_color(room_width/2+10,room_height/2-5,"(COMING SOON)",2,2,0,c_black,c_black,c_black,c_black,1)
draw_text_transformed_color(room_width/2,room_height/2,"(COMING SOON)",2,2,0,c_white,c_white,c_white,c_white,1)
}

var xx=0
var yy=0
if instance_exists(obj_levelupsplash) {
	if obj_levelupsplash.lev <= 1 {
	xx=250*master.camscale
	} else {
	xx=300*master.camscale
	}
} else {
	if xptime<xplength {
	xx=0
	} else {
	xx=250*master.camscale
	}
}
//points
yy=190+(restar.stretchy-1)*101*master.camscale
if page=0 {
draw_text_transformed_color(x-6+xx,y+yy*stretchyy,pointxt,.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),.8*master.camscale*(1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+xx,y-6+yy*stretchyy,pointxt,.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6+xx,y+yy*stretchyy,pointxt,.8*master.camscale*(1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+xx,y+yy*stretchyy,pointxt,.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15),.8*master.camscale*(1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15),0,c_white,c_white,c_white,c_white,1)
}

if page=0 {
		spacee=0
} else {
	if instance_exists(restar) {
		spacee=750*(1-(clamp((room_height/2-restar.y)/500,0,1)))
	}
}

//x,y,width,height,thickness,amount,backcolor,mincol,maxcol,showback
{
draw_set_alpha(1-(clamp((room_height/2-restar.y)/500,0,1)))
if page=0 {
draw_healthbar_border(x,y,master.camscale*(1000+spacee),master.camscale*(795)*stretchy,master.camscale*(40),master.characters[master.charselect,3]/master.characters[master.charselect,4],c_black,c_blue,c_aqua,1);
} else {
draw_healthbar_border(x,y,master.camscale*(1000+spacee),master.camscale*(795)*(clamp(stretchy,1.25,1.5)),master.camscale*(40),master.characters[master.charselect,3]/master.characters[master.charselect,4],c_black,c_blue,c_aqua,1);
}
}

xx=0
yy=0
if xptime<xplength {
{
if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4],0,.25)/.25*100 < 100 {
yy=-master.camscale*(795)/2
xx=master.camscale*(1000+spacee)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4],0,.25)/.25*100)-50)/100
} else {
	if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.25,0,.25)/.25*100 < 100 {
yy=master.camscale*(795)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.25,0,.25)/.25*100)-50)/100
xx=master.camscale*(1000+spacee)/2
		
} else {
	if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.5,0,.25)/.25*100 < 100 {
yy=master.camscale*(795)/2
xx=-master.camscale*(1000+spacee)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.5,0,.25)/.25*100)-50)/100

} else {
	if clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.75,0,.25)/.25*100 < 100 {
yy=-master.camscale*(795)*((clamp(master.characters[master.charselect,3]/master.characters[master.charselect,4]-.75,0,.25)/.25*100)-50)/100
xx=-master.camscale*(1000+spacee)/2

}
}
}
}
}
if xxx!=xx {
	xxx=(xxx*5+xx)/6
}
if yyy!=yy {
	yyy=(yyy*5+yy)/6
}
} else {
	
		//stretchyy=1
	//}
	yy=190+(restar.stretchy-1)*101*master.camscale
if instance_exists(obj_levelupsplash) and page!=1 {
	xx=-250*master.camscale
} else {
	if pointxt="" or page=1 {
		xx=0
	} else {
	xx=-125*master.camscale
	}
	
}
if falling!=1 {
if xxx!=xx {
	xxx=(xxx*30+xx)/31
}
if yyy!=yy {
	yyy=(yyy*30+yy)/31
}
} else {
	if xxx!=xx {
	xxx=(xxx*5+xx)/6
}
if yyy!=yy {
	yyy=(yyy*5+yy)/6
}
}
}
if falling=-1 {
	yyy=190+(restar.stretchy-1)*101*master.camscale
}
if xptime<xplength {
draw_sprite_ext(spr_xpbox,0,x+xxx,y+yyy*stretchyy,1*(1+string_length(string(round(xpcount)))/4)*(1+sqrt(xpcount)/100),1*(1+sqrt(xpcount)/100),0,c_white,1)
}
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x+xxx,y+yyy,0)
}
//xp
draw_text_transformed_color(x-6+xxx,y+yyy*stretchyy,"+"+string(round(xpcount))+"XP",1.1*master.camscale*(.92+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14),1.1*master.camscale*(.92+1*(0.5 * sin(1 * pi * time / 10) + 0.5)/14)*(1+sqrt(xpcount)/100),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+xxx,y-6+yyy*stretchyy,"+"+string(round(xpcount))+"XP",1.1*master.camscale*(.92+1*(0.5 * sin(2 * pi * time / 10) + 0.5)/14),1.1*master.camscale*(.92+1*(0.5 * sin(2 * pi * time / 10) + 0.5)/14)*(1+sqrt(xpcount)/100),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+xxx+6,y+yyy*stretchyy,"+"+string(round(xpcount))+"XP",1.1*master.camscale*(.92+1*(0.5 * sin(1 * pi * time / 10) + 0.5)/14),1.1*master.camscale*(.92+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14)*(1+sqrt(xpcount)/100),0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+xxx,y+yyy*stretchyy,"+"+string(round(xpcount))+"XP",1.1*master.camscale*(.92+1*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15),1.1*master.camscale*(.92+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15)*(1+sqrt(xpcount)/100),0,c_white,c_white,c_white,c_white,1)



		