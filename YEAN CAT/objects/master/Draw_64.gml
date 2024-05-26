/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_jayarnoldlogo) {
	if obj_jayarnoldlogo.playing=1 {
		exit
	}
}

if mainmenu=1 and !instance_exists(obj_levelselect) {
gwidth = display_get_gui_width()
gheight = display_get_gui_height()

}
if mainmenu = 0 {
gwidth = display_get_gui_width()
gheight = display_get_gui_height()
if !instance_exists(obj_levelup) {
		if !instance_exists(obj_pausemenu) {
			draw_set_font(Font2);
			var killc = killcount
var alpp = 1
draw_set_alpha(1);
if instance_exists(obj_pickupq) or instance_exists(obj_reviveq) {
	draw_set_alpha(.1);
	alpp=.1
}
	if !instance_exists(obj_pickupq) {
	if !instance_exists(obj_reviveq) {
draw_set_font(Font3);
draw_set_color(c_black)
draw_set_valign(fa_top);
draw_set_halign(fa_right);

var centr=-(100-clamp(abs(lower-700)/2,0,100))
if !instance_exists(restar) {

draw_text_transformed((1920/2-290+3),-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))-3-195+300*dropgui),string(killc),scaleg*.4,scaleg*.4,0)
draw_text_transformed((1920/2-290+3),-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))+3-195+300*dropgui),string(killc),scaleg*.4,scaleg*.4,0)
draw_text_transformed((1920/2-290-3),-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))+3-195+300*dropgui),string(killc),scaleg*.4,scaleg*.4,0)
draw_text_transformed((1920/2-290-3),-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))-3-195+300*dropgui),string(killc),scaleg*.4,scaleg*.4,0)
draw_set_color(c_white)
draw_text_transformed((1920/2-290),-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))-195+300*dropgui),string(killc),scaleg*.4,scaleg*.4,0)
draw_sprite_ext(spr_killcount,0,(1920/2-280)+30+string_length(string(killc))*15,-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))-170+300*dropgui),scaleg*.75,scaleg*.75,0,c_white,alpp)
draw_sprite_ext(spr_killcount,1,(1920/2-280)+30+string_length(string(killc))*15,-slidegui*300*camscale+scaleg*(centr+(350-4/8*clamp(abs(lower-700),0,920))-170+300*dropgui),scaleg*.75,scaleg*.75,0,c_white,0+clamp(kps/1000,0,alpp))

} else {
	//-73*(restar.stretchy-1)
		if restar.page=0 {
			if restar.xptime<restar.xplength {
	draw_text_transformed((1920/2-290+3),-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-3-195+300*1.00,string(killc),.4,.4,0)
draw_text_transformed((1920/2-290+3),-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))+3-195+300*1.00,string(killc),.4,.4,0)
draw_text_transformed((1920/2-290-3),-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))+3-195+300*1.00,string(killc),.4,.4,0)
draw_text_transformed((1920/2-290-3),-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-3-195+300*1.00,string(killc),.4,.4,0)
draw_set_color(c_white)
draw_text_transformed((1920/2-290),-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-195+300*1.00,string(killc),.4,.4,0)
draw_sprite_ext(spr_killcount,0,(1920/2-280)+30+string_length(string(killc))*15,-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-170+300*1.00,.75,.75,0,c_white,alpp)
draw_sprite_ext(spr_killcount,1,(1920/2-280)+30+string_length(string(killc))*15,-slidegui*300*camscale+centr-(clamp((-restar.falling)+1,0,1))*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-170+300*2*(dropgui+(restar.stretchy-1))*(restar.stretchy-1),.75,.75,0,c_white,0+clamp(kps/1000,0,alpp))
			} else {
				draw_text_transformed((1920/2-290+3),-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-3-195+300*1.00,string(killc),.4,.4,0)
draw_text_transformed((1920/2-290+3),-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))+3-195+300*1.00,string(killc),.4,.4,0)
draw_text_transformed((1920/2-290-3),-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))+3-195+300*1.00,string(killc),.4,.4,0)
draw_text_transformed((1920/2-290-3),-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-3-195+300*1.00,string(killc),.4,.4,0)
draw_set_color(c_white)
draw_text_transformed((1920/2-290),-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-195+300*1.00,string(killc),.4,.4,0)
draw_sprite_ext(spr_killcount,0,(1920/2-280)+30+string_length(string(killc))*15,-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-170+300*1.00,.75,.75,0,c_white,alpp)
draw_sprite_ext(spr_killcount,1,(1920/2-280)+30+string_length(string(killc))*15,-slidegui*300*camscale-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*73*(restar.stretchy-1)+(350-4/8*clamp(abs(lower-700),0,920))-170+300*2*(dropgui+(restar.stretchy-1))*(restar.stretchy-1),.75,.75,0,c_white,0+clamp(kps/1000,0,alpp))

			}
		}
}
			if !instance_exists(restar) {
	
			

//draw_text(x,y-20,"vert: "+string(vert));
//draw_text(500,500,"camscale: "+string(camscale));





//	//healthbar
//	if instance_exists(yeancat) {
//			var nxxx= (1920/(2)-power(clamp(.25-abs(scaleg-.75),0,.25),.28)*123.6/(clamp(abs(scaleg-.75),.1,.25)*18.70)-sqr(1/scaleg)*16-(scaleg)*91*(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3))-(1/scaleg)*280)
//	var nxxxx= display_get_gui_width()-nxxx
//	draw_set_halign(fa_center)
//draw_set_alpha(1);
//	draw_set_font(Font1);
//	draw_healthbar(nxxx,scaleg*(8*(8-(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/7-200+200*dropgui),nxxxx,scaleg*(90*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-1-200+200*dropgui),yeancat.healthh/yeancat.maxhealth*100,c_black,c_red,make_color_hsv(color_get_hue(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_hue(c_lime)*(clamp((yeancat.maxhealth-10)/400,0,1)),color_get_saturation(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_saturation(c_lime)*clamp((yeancat.maxhealth-10)/400,0,1),color_get_value(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_value(c_lime)*(clamp((yeancat.maxhealth-10)/400,0,1))),0,1,1);
//draw_set_color(c_black)
//draw_set_valign(fa_top);
//draw_text_transformed((1920/2-280+3),scaleg*(7-3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1,scaleg*1,0)
//draw_text_transformed((1920/2-280+3),scaleg*(7+3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1,scaleg*1,0)
//draw_text_transformed((1920/2-280-3),scaleg*(7-3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1,scaleg*1,0)
//draw_text_transformed((1920/2-280-3),scaleg*(7+3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1,scaleg*1,0)
//draw_set_color(c_white)
//draw_text_transformed((1920/2-280),scaleg*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1,scaleg*1,0)
//}


	//slots
	//weapons
	if instance_exists(yeancat) {
	for (i=1; i<clamp(master.wepcount+1,clamp(maxweapons,6,999)+1,999); i++) {
		//+clamp(slidegui-.5,0,.5)*2*(3+scaleg*50)
		//*(1-clamp(slidegui-.5,0,.5)*2)+clamp(slidegui-.5,0,.5)*2*((scaleg*90)*(i)-20)
		draw_sprite_ext(spr_barslot,0,(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		
		if weap[i-1] > -1 {
		draw_sprite_ext(weapons[weap[i-1],11],0,(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*.85*100/(max(sprite_get_width(weapons[weap[i-1],11]),sprite_get_height(weapons[weap[i-1],11])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*.85*100/(max(sprite_get_width(weapons[weap[i-1],11]),sprite_get_height(weapons[weap[i-1],11])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		
		draw_set_font(Font2)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle);
		draw_set_alpha(1);
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-150)/6+50,60+floor((i-1)/6)*110,string(weapons[i,4]),5/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		draw_set_color(c_white);
		draw_text_transformed(((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5,scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui,string(weapons[weap[i-1],4]),scaleg*5/(4+string_length(string(weapons[weap[i-1],4])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*5/(4+string_length(string(weapons[weap[i-1],4]))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6),0)
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-160)/6+40,50+floor((i-1)/6)*110,string(weap[i-1]),6/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		}
		if i>maxweapons {
			draw_sprite_ext(spr_barslot,1,scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5,scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui,scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		}
		}
		//passives
	for (i=1; i<clamp(array_length(master.pass)+1,clamp(6,6,999)+1,999); i++) {
		draw_sprite_ext(spr_barslot,0,(gwidth-(scaleg*((i-1) % 6)*(gwidth*1/2-(scaleg)*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+(scaleg)*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5)),(scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui),scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		
		draw_sprite_ext(spr_barslot,0,gwidth-(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui,scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*.85*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		if pass[i-1] > -1 {
		draw_sprite_ext(passives[pass[i-1],5],0,gwidth-(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui,scaleg*.85*100/(max(sprite_get_width(passives[pass[i-1],5]),sprite_get_height(passives[pass[i-1],5])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*.85*100/(max(sprite_get_width(passives[pass[i-1],5]),sprite_get_height(passives[pass[i-1],5])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,0,c_white,1);
		draw_set_font(Font2)
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle);
		draw_set_alpha(1);
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-150)/6+50,60+floor((i-1)/6)*110,string(weapons[i,4]),5/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		draw_set_color(c_white);
		draw_text_transformed(gwidth-(scaleg*((i-1) % 6)*(gwidth/2-scaleg*50-90*(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/6+3+scaleg*50*(6-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/5),scaleg*(50+floor((i-1)/6)*90)*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-200+200*dropgui,string(passives[pass[i-1],3]),scaleg*5/(4+string_length(string(passives[pass[i-1],4])))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6,scaleg*5/(4+string_length(string(passives[pass[i-1],3]))*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6),0)
		//draw_text_transformed(((i-1) % 6)*(gwidth/2-160)/6+40,50+floor((i-1)/6)*110,string(weap[i-1]),6/(4+string_length(string(weapons[i,4]))),5/(4+string_length(string(weapons[i,4]))),0)
		}
		}
	}
	//healthbar
	if instance_exists(yeancat) {
			var nxxx= -power(clamp(2*(scaleg-.5),0,1),2.08)*29.7*4*clamp(.35-abs(scaleg-.75),0,.35)+(1920/(2)-power(clamp(.25-abs(scaleg-.75),0,.25),.28)*123.6/(clamp(abs(scaleg-.75),.1,.25)*18.70)-sqr(1/scaleg)*16-(scaleg)*91*(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3))-(1/scaleg)*280)
	var nxxxx= display_get_gui_width()-nxxx
	draw_set_halign(fa_center)
draw_set_alpha(1);
	draw_set_font(Font1);
	draw_healthbar(nxxx,scaleg*(8*(8-(clamp(sqrt((yeancat.maxhealth*3+70)/100),1,3)))/7-200+200*dropgui)*(1-slidegui),nxxxx,scaleg*(90*(7-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/6-1-200+200*dropgui)*(1/(slidegui+1)),yeancat.healthh/yeancat.maxhealth*100,c_black,c_red,make_color_hsv(color_get_hue(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_hue(c_lime)*(clamp((yeancat.maxhealth-10)/400,0,1)),color_get_saturation(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_saturation(c_lime)*clamp((yeancat.maxhealth-10)/400,0,1),color_get_value(c_green)*(1-clamp((yeancat.maxhealth-10)/400,0,1))+color_get_value(c_lime)*(clamp((yeancat.maxhealth-10)/400,0,1))),0,1,1);
draw_set_color(c_black)
draw_set_valign(fa_top);
draw_text_transformed((1920/2-280+3),scaleg*(7-3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui)*(1/(slidegui+1)),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1*(1/(slidegui+1)),scaleg*1*(1/(slidegui+1)),0)
draw_text_transformed((1920/2-280+3),scaleg*(7+3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui)*(1/(slidegui+1)),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1*(1/(slidegui+1)),scaleg*1*(1/(slidegui+1)),0)
draw_text_transformed((1920/2-280-3),scaleg*(7-3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui)*(1/(slidegui+1)),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1*(1/(slidegui+1)),scaleg*1*(1/(slidegui+1)),0)
draw_text_transformed((1920/2-280-3),scaleg*(7+3+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui)*(1/(slidegui+1)),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1*(1/(slidegui+1)),scaleg*1*(1/(slidegui+1)),0)
draw_set_color(c_white)
draw_text_transformed((1920/2-280),scaleg*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui)*(1/(slidegui+1)),string(round(yeancat.healthh))+"/"+string(round(yeancat.maxhealth)),scaleg*1*(1/(slidegui+1)),scaleg*1*(1/(slidegui+1)),0)

//draw_text_transformed(300+(1920/2-280),scaleg*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(lower),scaleg,scaleg,0)
//draw_text_transformed(-300+(1920/2-280),scaleg*(7+20*(3.5-(clamp(sqrt((yeancat.maxhealth*3+70)/100),0,3)))/2.5-200+200*dropgui),string(centr),scaleg,scaleg,0)

}
	

if !instance_exists(obj_levelup) and !instance_exists(obj_pickupq) {
draw_set_alpha(.4)
draw_set_color(c_black);
if global.pause=1 {
	draw_rectangle(0,0,room_width,room_height,0)
}
}
draw_set_alpha(1);


}



		}
			}
}
}
}
	draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(Font1);
	{
moby=0
if os_type=os_ios or os_type=os_android {
	moby=-30
}
	if mainmenu=0 {


if instance_exists(yeancat) {
//xpbar


	draw_healthbar(0,20*(1-scaleg)+moby+750+200-200*dropgui,gwidth,moby+800+200-200*dropgui,xpbuff/xpto*100,c_black,c_blue,c_aqua,0,1,1)
	draw_set_font(Font2);
	
	draw_set_valign(fa_middle);
	//left
	draw_set_color(c_blue)
	draw_set_alpha(1-(sqr(1-(xpbuff/xpto*clamp(xpcount,0,1)*power(clamp(abs(gwidth/2-clamp((gwidth-250+dollarslide*200)*(xpbuff/xpto),0,gwidth-250+dollarslide*200))/100,0,1),3)))))
	draw_text_transformed(clamp((gwidth-250+dollarslide*200)*(xpbuff/xpto),0,gwidth-250+dollarslide*200)*(xpbuff/xpto)+(1-xpbuff/xpto)*(gwidth*xpbuff/xpto),10*(1-scaleg)+moby+776+203-200*dropgui,string(round(xpbuff)),scaleg*(.2+xpcount/1.8)*1.1,scaleg*(.2+xpcount/1.8)*1.1,0)
	draw_set_color(make_color_hsv(color_get_hue(c_aqua)*(xpbuff/xpto)+color_get_hue(c_teal)*(1-xpbuff/xpto),color_get_saturation(c_aqua)*(xpbuff/xpto)+color_get_saturation(c_teal)*(1-xpbuff/xpto),color_get_value(c_aqua)*(xpbuff/xpto)+color_get_value(c_teal)*(1-xpbuff/xpto)))
	draw_text_transformed(clamp((gwidth-250+dollarslide*200)*(xpbuff/xpto),0,gwidth-250+dollarslide*200)*(xpbuff/xpto)+(1-xpbuff/xpto)*(gwidth*xpbuff/xpto),10*(1-scaleg)+moby+776+203-200*dropgui,string(round(xpbuff)),scaleg*(.2+xpcount/1.8)*1.05,scaleg*(.2+xpcount/1.8)*1.05,0)
	draw_set_color(c_white)
	draw_text_transformed(clamp((gwidth-250+dollarslide*200)*(xpbuff/xpto),0,gwidth-250+dollarslide*200)*(xpbuff/xpto)+(1-xpbuff/xpto)*(gwidth*xpbuff/xpto),10*(1-scaleg)+moby+776+203-200*dropgui,string(round(xpbuff)),scaleg*(.2+xpcount/1.8),scaleg*(.2+xpcount/1.8),0)
	//right
draw_set_alpha(1);
	draw_set_font(Font5);
	draw_set_valign(fa_middle);
	draw_set_color(c_black)
	draw_text_transformed_color(-200*(1-scaleg)+1920/2-765+5+scaleg*70*clamp(sqrt(levelheat/1000000)/10,0,1),80*(1-scaleg)+moby+750+200-200*dropgui+5-scaleg*40*clamp(sqrt(clamp(levelheat,0,9999999999)/1000000)/10,0,1),"LEVEL "+string(level),scaleg*lvlscal*1.01,scaleg*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);
	draw_text_transformed_color(-200*(1-scaleg)+1920/2-765-5+scaleg*70*clamp(sqrt(levelheat/1000000)/10,0,1),80*(1-scaleg)+moby+750+200-200*dropgui+5-scaleg*40*clamp(sqrt(clamp(levelheat,0,9999999999)/1000000)/10,0,1),"LEVEL "+string(level),scaleg*lvlscal*1.01,scaleg*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);
	draw_text_transformed_color(-200*(1-scaleg)+1920/2-765-5+scaleg*70*clamp(sqrt(levelheat/1000000)/10,0,1),80*(1-scaleg)+moby+750+200-200*dropgui-5-scaleg*40*clamp(sqrt(clamp(levelheat,0,9999999999)/1000000)/10,0,1),"LEVEL "+string(level),scaleg*lvlscal*1.01,scaleg*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);
	draw_text_transformed_color(-200*(1-scaleg)+1920/2-765+5+scaleg*70*clamp(sqrt(levelheat/1000000)/10,0,1),80*(1-scaleg)+moby+750+200-200*dropgui-5-scaleg*40*clamp(sqrt(clamp(levelheat,0,9999999999)/1000000)/10,0,1),"LEVEL "+string(level),scaleg*lvlscal*1.01,scaleg*lvlscal*1.01,0,lc1,lc2,lc3,lc4,lca);

	draw_text_transformed_color(-200*(1-scaleg)+1920/2-765+5+scaleg*70*clamp(sqrt(levelheat/1000000)/10,0,1),80*(1-scaleg)+moby+750+200-200*dropgui-5-scaleg*40*clamp(sqrt(clamp(levelheat,0,9999999999)/1000000)/10,0,1),"LEVEL "+string(level),scaleg*lvlscal*.99,scaleg*lvlscal*.99,0,make_color_hsv(255-color_get_hue(lc4),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc4)),make_color_hsv(255-color_get_hue(lc3),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc3)),make_color_hsv(255-color_get_hue(lc2),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc2)),make_color_hsv(255-color_get_hue(lc1),255*clamp((levelheat/1000000)/10,0,1),255-color_get_value(lc1)),1);


//SPEED
var speedvis = 1

if instance_exists(obj_levelup) or instance_exists(obj_pickupq) or instance_exists(obj_pausemenu) or instance_exists(restar) or global.pause=1 {
speedvis=0
} else {
speedvis=1
}

draw_set_alpha(speedvis);
	draw_set_font(Font5);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_black)
	draw_text_transformed_color((1920/2)-275-5,80*(1-scaleg)+moby+875-150*dropgui+5-scaleg*20*clamp(sqrt(clamp(speedheat,0,9999999999)/1000000)/10,0,1),string(round(aspeedshow+abs(obj_terrain.travelspeed*20)))+" MPH",scaleg*speedscal*1.01,scaleg*speedscal*1.01,0,sc1,sc2,sc3,sc4,sca);
	draw_text_transformed_color((1920/2)-275+5,80*(1-scaleg)+moby+875-150*dropgui+5-scaleg*20*clamp(sqrt(clamp(speedheat,0,9999999999)/1000000)/10,0,1),string(round(aspeedshow+abs(obj_terrain.travelspeed*20)))+" MPH",scaleg*speedscal*1.01,scaleg*speedscal*1.01,0,sc1,sc2,sc3,sc4,sca);
	draw_text_transformed_color((1920/2)-275-5,80*(1-scaleg)+moby+875-150*dropgui-5-scaleg*20*clamp(sqrt(clamp(speedheat,0,9999999999)/1000000)/10,0,1),string(round(aspeedshow+abs(obj_terrain.travelspeed*20)))+" MPH",scaleg*speedscal*1.01,scaleg*speedscal*1.01,0,sc1,sc2,sc3,sc4,sca);
	draw_text_transformed_color((1920/2)-275+5,80*(1-scaleg)+moby+875-150*dropgui-5-scaleg*20*clamp(sqrt(clamp(speedheat,0,9999999999)/1000000)/10,0,1),string(round(aspeedshow+abs(obj_terrain.travelspeed*20)))+" MPH",scaleg*speedscal*1.01,scaleg*speedscal*1.01,0,sc1,sc2,sc3,sc4,sca);

	draw_text_transformed_color((1920/2)-275,80*(1-scaleg)+moby+875-150*dropgui-5-scaleg*20*clamp(sqrt(clamp(speedheat,0,9999999999)/1000000)/10,0,1),string(round(aspeedshow+abs(obj_terrain.travelspeed*20)))+" MPH",scaleg*speedscal*.99,scaleg*speedscal*.99,0,make_color_hsv(255-color_get_hue(sc4),255*clamp((speedheat/1000000)/10,0,1),255-color_get_value(sc4)),make_color_hsv(255-color_get_hue(sc3),255*clamp((speedheat/1000000)/10,0,1),255-color_get_value(sc3)),make_color_hsv(255-color_get_hue(sc2),255*clamp((speedheat/1000000)/10,0,1),255-color_get_value(sc2)),make_color_hsv(255-color_get_hue(sc1),255*clamp((speedheat/1000000)/10,0,1),255-color_get_value(sc1)),1);
draw_set_valign(fa_top);


	
}
draw_set_font(Font1);
draw_set_alpha(1);
if hour<10 {
var stringhour = "0"+string(hour);
} else {
	var stringhour = string(hour);
}

if minute<10 {
var stringminute = "0"+string(minute);
} else {
	var stringminute = string(minute);
}

if second<10 {
var stringsecond = "0"+string(second);
} else {
	var stringsecond = string(second);
}

var centr=-(100-clamp(abs(lower-700)/3,0,100))
if !instance_exists(restar) {
draw_set_color(c_black)
draw_text_transformed(1920/2-278+3,30*(1-scaleg)+centr+moby+756+200-200*dropgui-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond,sqrt(scaleg),sqrt(scaleg),0)
draw_text_transformed(1920/2-278+3,30*(1-scaleg)+centr+moby+756+200-200*dropgui+3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond,sqrt(scaleg),sqrt(scaleg),0)
draw_text_transformed(1920/2-278-3,30*(1-scaleg)+centr+moby+756+200-200*dropgui-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond,sqrt(scaleg),sqrt(scaleg),0)
draw_text_transformed(1920/2-278-3,30*(1-scaleg)+centr+moby+756+200-200*dropgui-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond,sqrt(scaleg),sqrt(scaleg),0)
draw_set_color(c_white)
draw_text_transformed(1920/2-278,30*(1-scaleg)+centr+moby+756+200-200*dropgui-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond,sqrt(scaleg),sqrt(scaleg),0)
} else {
if restar.page=0 {
	if restar.xptime<restar.xplength {
	draw_text(1920/2-278+3,centr-(clamp((-restar.falling)+1,0,1))*81*(restar.stretchy-1)+moby+756+200-200*1.00-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_text(1920/2-278+3,centr-(clamp((-restar.falling)+1,0,1))*81*(restar.stretchy-1)+moby+756+200-200*1.00+3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_text(1920/2-278-3,centr-(clamp((-restar.falling)+1,0,1))*81*(restar.stretchy-1)+moby+756+200-200*1.00-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_text(1920/2-278-3,centr-(clamp((-restar.falling)+1,0,1))*81*(restar.stretchy-1)+moby+756+200-200*1.00-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_set_color(c_white)
draw_text(1920/2-278,centr-(clamp((-restar.falling)+1,0,1))*81*(restar.stretchy-1)+moby+756+200-200*1.00-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
	} else {
		
			draw_text(1920/2-278+3,-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*81*(restar.stretchy-1)+moby+756+200-200*1.00-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_text(1920/2-278+3,-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*81*(restar.stretchy-1)+moby+756+200-200*1.00+3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_text(1920/2-278-3,-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*81*(restar.stretchy-1)+moby+756+200-200*1.00-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_text(1920/2-278-3,-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*81*(restar.stretchy-1)+moby+756+200-200*1.00-3-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)
draw_set_color(c_white)
draw_text(1920/2-278,-(clamp((room_height/2-restar.y)/500,0,1))*500+centr-1*81*(restar.stretchy-1)+moby+756+200-200*1.00-clamp(lower*127/256,0,2000),stringhour+":"+stringminute+":"+stringsecond)

	}
}
}
	}
}
if dondadollars>0 {
	gwidth = display_get_gui_width()-dolcen

	var dollaram = string(floor(master.dondadollars))
	if frac(round(master.dondadollars*100)/100) != 0 {
	dollarcent = string(frac(round(master.dondadollars*100)/100))
	if string_length(dollarcent) = 3 {
		dollarcent=string_char_at(dollarcent,2)+string_char_at(dollarcent,3)+"0"
	} else {
		dollarcent=string_char_at(dollarcent,2)+string_char_at(dollarcent,3)+string_char_at(dollarcent,4)
	}
	if xcent<100 and centfade=0 {
	xcent+=2
	} else {
		if xcent>100 {
		xcent=100
		}
		if xcent>0{
		xcent-=.5*(1.2-xcent/100)
		centfade=xcent/100
		} else {
			xcent=0
			//centifade=0
		}
		if centfade=0 {
		centfade=-1
		}
	}
	} else {
		
		if xcent>0 {
			dollarcent=".00"
		xcent-=1
		centfade-=.01
		} else {
			xcent=0
			centfade=0
			dollarcent=""
		}
	}

	if instance_exists(obj_upgrademenu) {
		if obj_upgrademenu.onscreen!=0 {
		if upslide<1 {
			upslide+=.05 
		} else {
			upslide=1
		}
		} else {
			if upslide>0 {
			upslide-=.05 
		} else {
			upslide=0
		}
		}
	} else {
		if upslide>0 {
			upslide-=.05 
		} else {
			upslide=0
		}
	}
	draw_set_font(Font1);
	draw_sprite_ext(spr_dondadollar,0,dollarhide+gwidth-87*power(dollarfade,1/3),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-dollarslide*70,.3*power(dollarfade,1/4),.3*power(dollarfade,1/4),0,c_white,power(dollarfade,1/2));
	draw_set_font(Font1);
	draw_set_color(make_color_hsv(color_get_hue(c_lime)*(1-(1/(clamp(string_length(dollaram)+1,1,99999))))+color_get_hue(c_green)*(1/(clamp(string_length(dollaram)+1,1,99999))),color_get_saturation(c_lime)*(1-(1/(clamp(string_length(dollaram)+1,1,99999))))+color_get_saturation(c_green)*(1/(clamp(string_length(dollaram)+1,1,99999))),color_get_value(c_lime)*(1-(1/(clamp(string_length(dollaram)+1,1,99999))))+color_get_value(c_green)*(1/(clamp(string_length(dollaram)+1,1,99999)))));
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
draw_set_alpha(sqrt(dollarfade));
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1)+5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1)+5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1)-5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1)-5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
		draw_set_color(c_green);
draw_set_alpha(sqrt(dollarfade));
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+3+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-3+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)	
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+3+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)-3+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	
draw_set_alpha(sqrt(dollarfade));
	draw_set_color(c_black);
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)-2+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+2+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+2+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-2+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+2+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+2+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)-2+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-2+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
draw_set_alpha(power(dollarfade,1/4));	
	draw_set_color(c_white);
	draw_text_transformed(dollarhide+-(1-mainmenu+upslide)*(clamp(power(string_length(dollaram),.75)*7,0,130))*(dollarfade-.25)-30*sqrt(dollarfade)+gwidth-34-xcent*.9*(.3+dollarfade)+clamp(power(string_length(dollaram),.55)*26,0,150)*sqrt(dollarfade-.1),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-dollarslide*70,"$"+dollaram,clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	if xcent>0 {
	draw_set_font(Font1);
	draw_set_color(make_color_hsv(color_get_hue(c_orange)*(1-(1/(clamp(string_length(dollaram+dollarcent)+1,1,99999))))+color_get_hue(c_yellow)*(1/(clamp(string_length(dollaram+dollarcent)+1,1,99999))),color_get_saturation(c_orange)*(1-(1/(clamp(string_length(dollaram+dollarcent)+1,1,99999))))+color_get_saturation(c_yellow)*(1/(clamp(string_length(dollaram+dollarcent)+1,1,99999))),color_get_value(c_orange)*(1-(1/(clamp(string_length(dollaram+dollarcent)+1,1,99999))))+color_get_value(c_yellow)*(1/(clamp(string_length(dollaram+dollarcent)+1,1,99999)))));
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
draw_set_alpha(sqrt(dollarfade));
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77)+5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77)+5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77)-5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77)-5,40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
		draw_set_color(c_orange);
draw_set_alpha(sqrt(dollarfade));
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+3+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-3+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)	
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+3+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1-3+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	
draw_set_alpha(sqrt(dollarfade));
	draw_set_color(c_black);
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1-2+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+2+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+2+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-2+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+2+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+2+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1-2+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight-2+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	draw_set_alpha(power(dollarfade,1/4));	
	draw_set_color(c_white);
	draw_text_transformed(dollarhide+-25*power(dollarfade,1/3)+gwidth+75-150*(xcent/100)*1+clamp(power(string_length(dollaram+dollarcent),.9)*15,0,77),40*(1-scaleg)+20*(1-dollarfade)+moby+gheight+5-dollarslide*70,string(dollarcent),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),clamp(1.5-(string_length(dollaram)/14),.2+dollarfade/2.1,1.5)*power(dollarfade,1/3),0)
	

	}
}

if mainmenu=0 {
	//xpright
	if instance_exists(yeancat) {
		draw_set_font(Font2);
	draw_set_alpha(clamp(xpcount,0,1))
	draw_set_color(c_blue)
	draw_set_valign(fa_middle)
	draw_text_transformed(clamp(gwidth-250+dollarslide*200,0,gwidth-250+dollarslide*200),moby+776+203-200*dropgui,string(round(xpto)),(.2+xpcount/1.8)*1.1,(.2+xpcount/1.8)*1.1,0)
	draw_set_color(make_color_hsv(color_get_hue(c_aqua)*(xpbuff/xpto)+color_get_hue(c_teal)*(1-xpbuff/xpto),color_get_saturation(c_aqua)*(xpbuff/xpto)+color_get_saturation(c_teal)*(1-xpbuff/xpto),color_get_value(c_aqua)*(xpbuff/xpto)+color_get_value(c_teal)*(1-xpbuff/xpto)))
	draw_text_transformed(clamp(gwidth-250+dollarslide*200,0,gwidth-250+dollarslide*200),moby+776+203-200*dropgui,string(round(xpto)),(.2+xpcount/1.8)*1.05,(.2+xpcount/1.8)*1.05,0)
	draw_set_color(c_white)
	draw_text_transformed(clamp(gwidth-250+dollarslide*200,0,gwidth-250+dollarslide*200),moby+776+203-200*dropgui,string(round(xpto)),.2+xpcount/1.8,.2+xpcount/1.8,0)
}
}

if loading>0 {
	draw_set_alpha(clamp(loading,0,1))
	draw_set_color(c_black);
		draw_rectangle(0,0,room_width,room_height,0)
}
if instance_exists(obj_logo) {
var stx=display_get_gui_width()/2+obj_logo.x-room_width/2+225+clamp((28-string_length(chosensplash))/27,0,1)*130
var sty=display_get_gui_height()/2+obj_logo.y-room_height/2+260-.5*string_width_ext(chosensplash,-1,-1)*sin(degtorad(-(splashangle-13))/2);

if (master.devmode=1 and !keyboard_check(vk_space)) or master.devmode=0 {
for (i=1; i<string_length(chosensplash)+1;i++){
	var splashgrow= (1+.2* sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))*(1.15-.98*clamp(1-(8/(string_length(chosensplash))),0,1))
		var yoff=10 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i))-string_width(string_copy(chosensplash,0,i-1))*(1.14-.99*clamp(1-(6/(string_length(chosensplash))),0,1)) * sin(degtorad(splashangle));
	draw_set_color(c_white)
	draw_set_font(Font5)

	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_alpha(clamp((splashalpha)/(i*2),0,.5));
	draw_set_color(make_color_hsv(.5*255+.5*255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)),255,255));	
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(1.14-.99*clamp(1-(6/(string_length(chosensplash))),0,1)),sty+yoff,string_char_at(chosensplash,i),1.35*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.35*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed((4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed(-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	//draw_text_transformed(-(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i+string_length(chosensplash)/2)))+stx+string_width(string_copy(chosensplash,0,i))*(.95-.8*(1-(9/(5+string_length(chosensplash))))),(4 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)))+sty+yoff,string_char_at(chosensplash,i),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.25*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	draw_set_alpha(splashalpha/(i));
	draw_set_color(c_black);
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(1.14-.99*clamp(1-(6/(string_length(chosensplash))),0,1)),sty+yoff,string_char_at(chosensplash,i),1.2*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),1.2*splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)
	draw_set_color(make_color_hsv(.5*255+.5*255 * sin((2 * pi / (string_length(chosensplash))) * (splashtime*2+i)),255-splashalpha/(string_length(chosensplash))*200-55 * sin((2 * pi / (string_length(chosensplash))) * (splashtime+i)),255));	
	draw_text_transformed(stx+string_width_ext(string_copy(chosensplash,clamp(i-1,0,1),i-1),-1,-1)*(1.14-.99*clamp(1-(6/(string_length(chosensplash))),0,1)),sty+yoff,string_char_at(chosensplash,i),splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashgrow*clamp(splashalpha/(string_length(chosensplash)/2),0,1),splashangle)

}
}
}

draw_sprite_ext(spr_damageoverlay,0,gwidth/2,gheight/2,(2-damef)*damgro*(1+(1-fadedam)),(2-damef)*damgro*(1+(1-fadedam)),0,c_white,power(damef,1.5)*fadedam);

//debugging
draw_set_color(c_white)
draw_set_alpha(1)


	if master.devmode=1 and keyboard_check(ord("V")) {
			draw_set_color(c_white)
	draw_set_alpha(1)
	draw_set_font(Font4)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var xxxx=display_get_gui_width()/2
	var yyyy=display_get_gui_height()/2
	if keyboard_check(ord("G")) {
		if keyboard_check(ord("9")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay9)),1,1,0)
}
else if keyboard_check(ord("8")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay8)),1,1,0)
}
else if keyboard_check(ord("7")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay7)),1,1,0)
}
else if keyboard_check(ord("6")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay6)),1,1,0)
}
else if keyboard_check(ord("5")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay5)),1,1,0)
}
else if keyboard_check(ord("4")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay4)),1,1,0)
}
else if keyboard_check(ord("3")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay3)),1,1,0)
}
else if keyboard_check(ord("2")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay2)),1,1,0)
}
else if keyboard_check(ord("1")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay)),1,1,0)
}
else if keyboard_check(ord("0")) {
draw_text_transformed(xxxx,yyyy,string((bdistplay0)),1,1,0)
}
	} else {
	
if keyboard_check(ord("9")) {
draw_text_transformed(xxxx,yyyy,string((distplay9*10)),1,1,0)
}
else if keyboard_check(ord("8")) {
draw_text_transformed(xxxx,yyyy,string((distplay8*10)),1,1,0)
}
else if keyboard_check(ord("7")) {
draw_text_transformed(xxxx,yyyy,string((distplay7*10)),1,1,0)
}
else if keyboard_check(ord("6")) {
draw_text_transformed(xxxx,yyyy,string((distplay6*10)),1,1,0)
}
else if keyboard_check(ord("5")) {
draw_text_transformed(xxxx,yyyy,string((distplay5*10)),1,1,0)
}
else if keyboard_check(ord("4")) {
draw_text_transformed(xxxx,yyyy,string((distplay4*10)),1,1,0)
}
else if keyboard_check(ord("3")) {
draw_text_transformed(xxxx,yyyy,string((distplay3*10)),1,1,0)
}
else if keyboard_check(ord("2")) {
draw_text_transformed(xxxx,yyyy,string((distplay2*10)),1,1,0)
}
else if keyboard_check(ord("1")) {
draw_text_transformed(xxxx,yyyy,string((distplay*10)),1,1,0)
}
else if keyboard_check(ord("0")) {
draw_text_transformed(xxxx,yyyy,string((distplay0)),1,1,0)
}
}
}