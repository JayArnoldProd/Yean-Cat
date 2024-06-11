/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_jayarnoldlogo) {
	if obj_jayarnoldlogo.playing=1 {
		exit
	}
}

if instance_exists(obj_levelup) or instance_exists(obj_pickupq) or instance_exists(obj_reviveq) or instance_exists(obj_pausemenu) {
	
	var xxx=camera_get_view_x(cam)
	var yyy=camera_get_view_y(cam)
	

draw_set_font(Font2);
//draw_text(x,y-20,"vert: "+string(vert));
//draw_text(x,y+20,"horz: "+string(horz));
var gwidth = display_get_gui_width()
var gheight = display_get_gui_height()


if mainmenu = 0 {
	
	//slots
	//weapons
	if instance_exists(yeancat) {
	for (i=1; i<clamp(master.wepcount+1,clamp(maxweapons,6,999)+1,999); i++) {
		
		draw_sprite_ext(spr_barslot,0,xxx+sss*(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*sss*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		if weap[i-1] > -1 {
		draw_sprite_ext(weapons[weap[i-1],11],0,xxx+sss*(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*sss*.85*100/(max(sprite_get_width(weapons[weap[i-1],11]),sprite_get_height(weapons[weap[i-1],11])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*.85*100/(max(sprite_get_width(weapons[weap[i-1],11]),sprite_get_height(weapons[weap[i-1],11])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		draw_set_font(Font2)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle);
		draw_set_alpha(1);
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-150)/6+50,60+floor((i-1)/6)*110,string(weapons[i,4]),5/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		draw_set_color(c_white);
		draw_text_transformed(xxx+sss*(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),string(weapons[weap[i-1],4]),scaleg*sss*5/(4+string_length(string(weapons[weap[i-1],4])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*5/(4+string_length(string(weapons[weap[i-1],4]))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6),0)
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-160)/6+40,50+floor((i-1)/6)*110,string(weap[i-1]),6/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		}
		if i>maxweapons {
			draw_sprite_ext(spr_barslot,1,xxx+sss*(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*sss*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		}
		}
		//passives
	for (i=1; i<clamp(array_length(master.pass)+1,clamp(6,6,999)+1,999); i++) {
		
		draw_sprite_ext(spr_barslot,0,xxx+sss*(gwidth-(scaleg*((i-1) % 6)*(gwidth*1/2-(scaleg)*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+(scaleg)*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5)),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*sss*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		if pass[i-1] > -1 {
		draw_sprite_ext(passives[pass[i-1],5],0,xxx+sss*(gwidth-(scaleg*((i-1) % 6)*(gwidth/2-(scaleg)*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+(scaleg)*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5)),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*sss*.85*100/(max(sprite_get_width(passives[pass[i-1],5]),sprite_get_height(passives[pass[i-1],5])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*.85*100/(max(sprite_get_width(passives[pass[i-1],5]),sprite_get_height(passives[pass[i-1],5])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		draw_set_font(Font2)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle);
		draw_set_alpha(1);
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-150)/6+50,60+floor((i-1)/6)*110,string(weapons[i,4]),5/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		draw_set_color(c_white);
		draw_text_transformed(xxx+sss*(gwidth-(scaleg*((i-1) % 6)*(gwidth/2-(scaleg)*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+(scaleg)*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5)),yyy+sss*(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),string(passives[pass[i-1],3]),scaleg*sss*5/(4+string_length(string(passives[pass[i-1],4])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*sss*5/(4+string_length(string(passives[pass[i-1],3]))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6),0)
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-160)/6+40,50+floor((i-1)/6)*110,string(weap[i-1]),6/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		}
		}
	}
	

//healthbar
if instance_exists(yeancat) {
	draw_set_font(Font1);
			var nxxx= xxx+sss*(-power(clamp(2*(scaleg-.5),0,1),2.08)*29.7*4*clamp(.35-abs(scaleg-.75),0,.35)+(1920/(2)-power(clamp(.25-abs(scaleg-.75),0,.25),.28)*123.6/(clamp(abs(scaleg-.75),.1,.25)*18.70)-sqr(1/scaleg)*16-(scaleg)*91*(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3))-(1/scaleg)*280))
	var nxxxx= room_width-nxxx
	draw_healthbar(nxxx,yyy+scaleg*sss*(8*(8-(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/7-200+200*dropgui),nxxxx,yyy+(scaleg)*sss*(90*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-1-200+200*dropgui),yeancat.healthh/yeancat.maxhealth*100,c_black,c_red,make_color_hsv(color_get_hue(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_hue(c_lime)*(clamp((yeancat.maxhealth-10)/400,0,1)),color_get_saturation(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_saturation(c_lime)*clamp((yeancat.maxhealth-10)/400,0,1),color_get_value(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_value(c_lime)*(clamp((yeancat.maxhealth-10)/400,0,1))),0,1,1);
draw_set_color(c_black)
draw_set_valign(fa_top);
draw_text_transformed(xxx+sss*(1920/2-280+3),yyy+scaleg*sss*(7-3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*sss,scaleg*sss,0)
draw_text_transformed(xxx+sss*(1920/2-280+3),yyy+scaleg*sss*(7+3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*sss,scaleg*sss,0)
draw_text_transformed(xxx+sss*(1920/2-280-3),yyy+scaleg*sss*(7-3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*sss,scaleg*sss,0)
draw_text_transformed(xxx+sss*(1920/2-280-3),yyy+scaleg*sss*(7+3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*sss,scaleg*sss,0)
draw_set_color(c_white)
draw_text_transformed(xxx+sss*(1920/2-280),yyy+scaleg*sss*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*sss,scaleg*sss,0)
//debug
//draw_text_transformed(xxx-300+sss*(1920/2-280),yyy+scaleg*sss*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(debugvar),scaleg*sss,scaleg*sss,0)
//draw_text_transformed(xxx+300+sss*(1920/2-280),yyy+scaleg*sss*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(debugvar2),scaleg*sss,scaleg*sss,0)

}

var killc = killcount
var centr=-(100-clamp(abs(lower-700)/2,0,100))
draw_set_alpha(1);
draw_set_font(Font3);
draw_set_color(c_black)
draw_set_valign(fa_top);
draw_set_halign(fa_right);
draw_text_transformed(xxx+sss*(1920/2-280+3)/scaleg,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(-3-205+300*dropgui)),string(killc),scaleg*1/sss,scaleg*1/sss,0)
draw_text_transformed(xxx+sss*(1920/2-280+3)/scaleg,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(+3-205+300*dropgui)),string(killc),scaleg*1/sss,scaleg*1/sss,0)
draw_text_transformed(xxx+sss*(1920/2-280-3)/scaleg,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(+3-205+300*dropgui)),string(killc),scaleg*1/sss,scaleg*1/sss,0)
draw_text_transformed(xxx+sss*(1920/2-280-3)/scaleg,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(-3-205+300*dropgui)),string(killc),scaleg*1/sss,scaleg*1/sss,0)
draw_set_color(c_white)
draw_text_transformed(xxx+sss*(1920/2-280)/scaleg,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(-205+300*dropgui)),string(killc),scaleg*1/sss,scaleg*1/sss,0)
draw_sprite_ext(spr_killcount,0,xxx+sss*(1920/2-280)/scaleg+30+string_length(string(killc))*15,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(-170+300*dropgui)),scaleg*.75*sss,scaleg*.75*sss,0,c_white,1)
draw_sprite_ext(spr_killcount,1,xxx+sss*(1920/2-280)/scaleg+30+string_length(string(killc))*15,yyy+scaleg*(centr+(280-.4*abs(lower-700))+sss*(-170+300*dropgui)),scaleg*.75*sss,scaleg*.75*sss,0,c_white,0+clamp(kps/1000,0,1))


////xpbar
//if instance_exists(yeancat) {
//	draw_healthbar(xxx+0,yyy+sss*(750+200-200*dropgui),xxx+sss*(gwidth),yyy+sss*(800+200-200*dropgui),xpbuff/xpto*100,c_black,c_blue,c_aqua,0,1,1)
//	draw_set_font(Font2);
	
//	draw_set_valign(fa_middle);
//	//left
//	draw_set_color(c_blue)
//	draw_set_alpha(1-(sqr(1-(xpbuff/xpto*clamp(xpcount,0,1)*power(clamp(abs(gwidth/2-clamp((gwidth-250)*(xpbuff/xpto),0,gwidth-250))/100,0,1),3)))))
//	draw_text_transformed(xxx+sss*clamp((gwidth-250)*(xpbuff/xpto),0,gwidth-250)*(xpbuff/xpto)+(1-xpbuff/xpto)*(gwidth*xpbuff/xpto),yyy+sss*(776+200-200*dropgui),string(round(xpbuff)),sss*(.2+xpcount/1.8)*1.1,sss*(.2+xpcount/1.8)*1.1,0)
//	draw_set_color(make_color_hsv(color_get_hue(c_aqua)*(xpbuff/xpto)+color_get_hue(c_teal)*(1-xpbuff/xpto),color_get_saturation(c_aqua)*(xpbuff/xpto)+color_get_saturation(c_teal)*(1-xpbuff/xpto),color_get_value(c_aqua)*(xpbuff/xpto)+color_get_value(c_teal)*(1-xpbuff/xpto)))
//	draw_text_transformed(xxx+sss*clamp((gwidth-250)*(xpbuff/xpto),0,gwidth-250)*(xpbuff/xpto)+(1-xpbuff/xpto)*(gwidth*xpbuff/xpto),yyy+sss*(776+200-200*dropgui),string(round(xpbuff)),sss*(.2+xpcount/1.8)*1.05,sss*(.2+xpcount/1.8)*1.05,0)
//	draw_set_color(c_white)
//	draw_text_transformed(xxx+sss*clamp((gwidth-250)*(xpbuff/xpto),0,gwidth-250)*(xpbuff/xpto)+(1-xpbuff/xpto)*(gwidth*xpbuff/xpto),yyy+sss*(776+200-200*dropgui),string(round(xpbuff)),sss*(.2+xpcount/1.8),sss*(.2+xpcount/1.8),0)
//	//right
//	draw_set_alpha(clamp(xpcount,0,1))
//	draw_set_color(c_blue)
//	draw_text_transformed(xxx+sss*clamp(gwidth-250,0,gwidth-250),yyy+sss*(776+200-200*dropgui),string(round(xpto)),sss*(.2+xpcount/1.8)*1.1,sss*(.2+xpcount/1.8)*1.1,0)
//	draw_set_color(make_color_hsv(color_get_hue(c_aqua)*(xpbuff/xpto)+color_get_hue(c_teal)*(1-xpbuff/xpto),color_get_saturation(c_aqua)*(xpbuff/xpto)+color_get_saturation(c_teal)*(1-xpbuff/xpto),color_get_value(c_aqua)*(xpbuff/xpto)+color_get_value(c_teal)*(1-xpbuff/xpto)))
//	draw_text_transformed(xxx+sss*clamp(gwidth-250,0,gwidth-250),yyy+sss*(776+200-200*dropgui),string(round(xpto)),sss*(.2+xpcount/1.8)*1.05,sss*(.2+xpcount/1.8)*1.05,0)
//	draw_set_color(c_white)
//	draw_text_transformed(xxx+sss*clamp(gwidth-250,0,gwidth-250),yyy+sss*(776+200-200*dropgui),string(round(xpto)),sss*(.2+xpcount/1.8),sss*(.2+xpcount/1.8),0)
//	draw_set_alpha(1);
//	draw_set_font(Font5);
//	draw_set_valign(fa_middle);
//	draw_set_color(c_black)
//	draw_text_transformed_color(xxx+sss*(1920/2-765+5+70*clamp(sqrt(levelheat/1000000)/10,0,1)),yyy+sss*(750+200-200*dropgui+5-40*clamp(sqrt(levelheat/1000000)/10,0,1)),"LEVEL "+string(level),sss*lvlscal*1.01,sss*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);
//	draw_text_transformed_color(xxx+sss*(1920/2-765-5+70*clamp(sqrt(levelheat/1000000)/10,0,1)),yyy+sss*(750+200-200*dropgui+5-40*clamp(sqrt(levelheat/1000000)/10,0,1)),"LEVEL "+string(level),sss*lvlscal*1.01,sss*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);
//	draw_text_transformed_color(xxx+sss*(1920/2-765-5+70*clamp(sqrt(levelheat/1000000)/10,0,1)),yyy+sss*(750+200-200*dropgui-5-40*clamp(sqrt(levelheat/1000000)/10,0,1)),"LEVEL "+string(level),sss*lvlscal*1.01,sss*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);
//	draw_text_transformed_color(xxx+sss*(1920/2-765+5+70*clamp(sqrt(levelheat/1000000)/10,0,1)),yyy+sss*(750+200-200*dropgui-5-40*clamp(sqrt(levelheat/1000000)/10,0,1)),"LEVEL "+string(level),sss*lvlscal*1.01,sss*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);

//	draw_text_transformed_color(xxx+sss*(1920/2-765+5+70*clamp(sqrt(levelheat/1000000)/10,0,1)),yyy+sss*(750+200-200*dropgui-5-40*clamp(sqrt(levelheat/1000000)/10,0,1)),"LEVEL "+string(level),sss*lvlscal*.99,sss*lvlscal*.99,0,make_color_hsv(255-color_get_hue(lc4),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc4)),make_color_hsv(255-color_get_hue(lc3),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc3)),make_color_hsv(255-color_get_hue(lc2),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc2)),make_color_hsv(255-color_get_hue(lc1),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc1)),1);
//draw_set_valign(fa_top);
	
//}
//draw_set_font(Font1);

//if hour<10 {
//var stringhour = "0"+string(hour);
//} else {
//	var stringhour = string(hour);
//}

//if minute<10 {
//var stringminute = "0"+string(minute);
//} else {
//	var stringminute = string(minute);
//}

//if second<10 {
//var stringsecond = "0"+string(second);
//} else {
//	var stringsecond = string(second);
//}

//draw_set_color(c_black)
//draw_text(xxx+sss*(1920/2-278+3),yyy+sss*(756+200-200*dropgui-3-clamp(lower*.75,0,350)),stringhour+":"+stringminute+":"+stringsecond)
//draw_text(xxx+sss*(1920/2-278+3),yyy+sss*(756+200-200*dropgui+3-clamp(lower*.75,0,350)),stringhour+":"+stringminute+":"+stringsecond)
//draw_text(xxx+sss*(1920/2-278-3),yyy+sss*(756+200-200*dropgui-3-clamp(lower*.75,0,350)),stringhour+":"+stringminute+":"+stringsecond)
//draw_text(xxx+sss*(91920/2-278-3),yyy+sss*(756+200-200*dropgui-3-clamp(lower*.75,0,350)),stringhour+":"+stringminute+":"+stringsecond)
//draw_set_color(c_white)
//draw_text(xxx+sss*(1920/2-278),yyy+sss*(756+200-200*dropgui-clamp(lower*.75,0,350)),stringhour+":"+stringminute+":"+stringsecond)


//if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) {
//draw_set_alpha(.4)
//draw_set_color(c_black);
//if global.pause=1 {
//	draw_rectangle(xxx+0,yyy+0,sss*room_width,sss*room_height,0)
//}
//}
//draw_set_alpha(1);


//}


//if loading>0 {
//	draw_set_alpha(clamp(loading,0,1))
//	draw_set_color(c_black);
//		draw_rectangle(xxx+0,yyy+0,sss*(2000),sss*(1500),0)
//}

//draw_set_alpha(1);
//	draw_set_color(c_white);
//	draw_set_font(Font3);
//	draw_text(joystickx,joysticky,string(joystickon))
//joystick

//draw_set_font(Font1);
}
} else {
if joystickon=1 and global.pause=0 {

	draw_sprite_ext(spr_joystick,0,joystickx,joysticky,joysticksize*camscale,joysticksize*camscale,0,c_white,.75);
	draw_sprite_ext(spr_joystick,0,joystickx+lengthdir_x(master.joydist,master.joyangle)*camscale*joysticksize,joysticky+lengthdir_y(master.joydist,master.joyangle)*camscale*joysticksize,joysticksize*camscale/2,joysticksize*camscale/2,0,c_white,1);
	
}
}
if instance_exists(obj_terrain) {
if arrowright=1 {
		draw_sprite_ext(spr_arrowindicator,0,room_width/2+820*camscale,room_height/2,.33+(0.5 * sin(2 * pi * osc / 5) + 0.8)/5*1,.33+(0.5 * sin(2 * pi * osc / 5) + 0.8)/5*1,0,c_white,.35-clamp(obj_terrain.playeraltitude/40000,0,1)*.35)
	}
	if arrowleft=1 {
		draw_sprite_ext(spr_arrowindicator,0,room_width/2-820*camscale,room_height/2,-.33-(0.5 * sin(2 * pi * osc / 5) + 0.8)/5*1,.33+(0.5 * sin(2 * pi * osc / 5) + 0.8)/5*1,0,c_white,.35-clamp(obj_terrain.playeraltitude/40000,0,1)*.35)
	}
}



draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);








