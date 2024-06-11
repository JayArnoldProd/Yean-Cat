/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_self();





draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//unlocked //name, //level,//xp,//xpto,//Lyricism (Damage), //Rhythm (AT rate), //Flow (Movement), //Swag (Money Value), variation (evolution?,
if master.characters[master.charselect,0]=1 {
	
	
	draw_set_color(c_black)
	draw_set_font(FontLyricism)
	draw_text_transformed(x-410,y+30-62,"LYRICISM",.7,.7,0)
	draw_set_font(Font5)
	draw_set_color(c_orange)
	draw_set_alpha(.25+.75*sqr(1-1/master.characters[master.charselect,5]))
	draw_text_transformed(x-410,y+30+85-62,string(master.characters[master.charselect,5]),.7+.2*(0.5 * sin(2 * pi*2 * time/2 *(clamp(1+master.characters[master.charselect,5]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,5]/50),.7+.2*(0.5 * sin(2 * pi*2 * time/3 *(clamp(1+master.characters[master.charselect,5]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,5]/50),0)
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_text_transformed(x-410,y+30+85-62,string(master.characters[master.charselect,5]),.8,.8,0)
	draw_text_transformed(x-410,y+30+85-62,string(master.characters[master.charselect,5]),.7,.7,0)
	draw_set_font(Font1)
	draw_text_transformed(x-410,y+30+85-1,string(round(master.lyricism*100))+"% Damage",.65,.65,0)
	
	draw_set_color(c_black)
	draw_set_font(FontRhythm)
	draw_text_transformed(x-410,y-210-62,"RHYTHM",.7,.7,0)
	draw_set_font(Font5)
	draw_set_color(c_blue)
	draw_set_alpha(.25+.75*sqr(1-1/master.characters[master.charselect,6]))
	draw_text_transformed(x-410,y-210+85-62,string(master.characters[master.charselect,6]),.7+.2*(0.5 * sin(2 * pi*2 * time/2 *(clamp(1+master.characters[master.charselect,6]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,6]/50),.7+.2*(0.5 * sin(2 * pi*2 * time/3 *(clamp(1+master.characters[master.charselect,6]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,6]/50),0)
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_text_transformed(x-410,y-210+85-62,string(master.characters[master.charselect,6]),.8,.8,0)
	draw_text_transformed(x-410,y-210+85-62,string(master.characters[master.charselect,6]),.7,.7,0)
	draw_set_font(Font1)
	draw_text_transformed(x-410,y-210+85-1,string(round(master.rhythm*100))+"% Attack Rate",.65,.65,0)
	
	draw_set_color(c_black)
	draw_set_font(FontWish)
	draw_text_transformed(x+410,y-210-62,"FLOW",.7,.7,0)
	draw_set_font(Font5)
	draw_set_color(c_red)
	draw_set_alpha(.25+.75*sqr(1-1/master.characters[master.charselect,7]))
	draw_text_transformed(x+410,y-210+85-62,string(master.characters[master.charselect,7]),.7+.2*(0.5 * sin(2 * pi*2 * time/2 *(clamp(1+master.characters[master.charselect,7]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,7]/50),.7+.2*(0.5 * sin(2 * pi*2 * time/3 *(clamp(1+master.characters[master.charselect,7]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,7]/50),0)
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_text_transformed(x+410,y-210+85-62,string(master.characters[master.charselect,7]),.8,.8,0)
	draw_text_transformed(x+410,y-210+85-62,string(master.characters[master.charselect,7]),.7,.7,0)
	draw_set_font(Font1)
	draw_text_transformed(x+410,y-210+85-1,string(round(master.flow*100))+"% XP Value",.65,.65,0)
	
	draw_set_color(c_black)
	draw_set_font(FontSwag)
	draw_text_transformed(x+410,y+30-62,"SWAG",.7,.7,0)
	draw_set_font(Font5)
	draw_set_color(c_green)
	draw_set_alpha(.25+.75*sqr(1-1/master.characters[master.charselect,8]))
	draw_text_transformed(x+410,y+30+85-62,string(master.characters[master.charselect,8]),.7+.2*(0.5 * sin(2 * pi*2 * time/2 *(clamp(1+master.characters[master.charselect,8]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,8]/50),.7+.2*(0.5 * sin(2 * pi*2 * time/3 *(clamp(1+master.characters[master.charselect,8]/50,0,4)) / 10) + 0.5)*(1+master.characters[master.charselect,8]/50),0)
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_text_transformed(x+410,y+30+85-62,string(master.characters[master.charselect,8]),.8,.8,0)
	draw_text_transformed(x+410,y+30+85-62,string(master.characters[master.charselect,8]),.7,.7,0)
	draw_set_font(Font1)
	draw_text_transformed(x+410,y+30+85-1,string(round(master.swag*100))+"% Money Value",.65,.65,0)


//x,y,width,height,thickness,amount,backcolor,mincol,maxcol,showback
draw_healthbar_border(x,y-104,500,500,20,master.characters[master.charselect,3]/master.characters[master.charselect,4],c_black,c_blue,c_aqua,1);
	
	
	
}


draw_set_color(c_white)
draw_set_font(Font5)
//draw_text(x,y-190,"Character:\n"+chartext);
//draw_text(x,y-10,"Music:\n"+leveltext);
//draw_text(x,y+30,leveldesc);
var yy=-295
if master.characters[master.charselect,0]=1 {
yy=-295

if instance_exists(obj_arrowselect2) {
draw_text_transformed_color(x-6,y+yy,"LEVEL "+string(master.characters[master.charselect,2]),obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,"LEVEL "+string(master.characters[master.charselect,2]),obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,"LEVEL "+string(master.characters[master.charselect,2]),obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,"LEVEL "+string(master.characters[master.charselect,2]),obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2.5+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
}
if master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3) > 0 {
yy=-250
//points
if instance_exists(obj_arrowselect2) {
	if master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3) > 1 {
draw_text_transformed_color(x-6,y+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINTS",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINTS",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINTS",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINTS",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
} else {
	draw_text_transformed_color(x-6,y+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINT",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINT",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINT",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,string(master.characters[master.charselect,2]-(master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3))+" POINT",obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/3+1*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
}
}

}

}
yy=-10
if instance_exists(obj_arrowselect2) {
if master.characters[master.charselect,0]=1 {
draw_text_transformed_color(x+15*(0.5 * sin(2 * pi*2 * time / 10)),yy+y+15*(0.5 * sin(2 * pi/2 * time / 10)),chartext,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,0,cc1,cc2,cc3,cc4,.8)
draw_text_transformed_color(x+15*(0.5 * sin(2 * pi * (time+90) / 5)),yy+y+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),chartext,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/15,0,cc5,cc6,cc7,cc8,.8)
draw_text_transformed_color(x-6,y+yy,chartext,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,chartext,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,chartext,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,chartext,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
} else {
yy=-40
	draw_text_transformed_color(x+15*(0.5 * sin(2 * pi*2 * time / 10)),yy+y+15*(0.5 * sin(2 * pi/2 * time / 10)),"LOCKED",obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,0,cc1,cc2,cc3,cc4,.8)
draw_text_transformed_color(x+15*(0.5 * sin(2 * pi * (time+90) / 5)),yy+y+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"LOCKED",obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/15,0,cc5,cc6,cc7,cc8,.8)
draw_text_transformed_color(x-6,y+yy,"LOCKED",obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,"LOCKED",obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,"LOCKED",obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,"LOCKED",obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect2.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)

	
}

yy=-495

draw_text_transformed_color(x-6,y+yy,"Music:",obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,"Music:",obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,"Music:",obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,"Music:",obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect.image_xscale/1+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
yy=-420
draw_text_transformed_color(x+15*(0.5 * sin(2 * pi*2 * time / 10)),yy+y+15*(0.5 * sin(2 * pi/2 * time / 10)),leveltext,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/15,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,0,kk1,kk2,kk3,kk4,.8)
draw_text_transformed_color(x+15*(0.5 * sin(2 * pi * (time+90) / 5)),yy+y+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),leveltext,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/15,0,kk5,kk6,kk7,kk8,.8)
draw_text_transformed_color(x-6,y+yy,leveltext,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,leveltext,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,leveltext,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,leveltext,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)

yy=50

draw_text_transformed_color(x-6,y+yy,leveldesc,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6+yy,leveldesc,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y+yy,leveldesc,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(1 * pi * time / 10) + 0.5)/14,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y+yy,leveldesc,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi/2 * time / 10) + 0.5)/15,obj_arrowselect.image_xscale/2+1.5*(0.5 * sin(2 * pi*2 * time / 10) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)
}

if master.characters[master.charselect,0]=1 {
//rhythm
//subtract

if master.characters[master.charselect,6]>1 {
	if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,0,rhyx-77,rhyy,rhyms,rhyms,0,c_white,1)
	}
} else {
	if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,1,rhyx-77,rhyy,rhyms,rhyms,0,c_white,1)
	}
}
//add
if master.characters[master.charselect,6]<master.characters[master.charselect,2] {
	if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
	draw_sprite_ext(spr_plus,0,rhyx+77,rhyy,rhyps,rhyps,0,c_white,1)
	} else {
	draw_sprite_ext(spr_plus,1,rhyx+77,rhyy,rhyps,rhyps,0,c_white,1)
	}
}
//flow
//subtract
if master.characters[master.charselect,7]>1 {
	if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,0,flox-77,floy,floms,floms,0,c_white,1)
	}
} else {
	if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,1,flox-77,floy,floms,floms,0,c_white,1)
	}
}
//add
if master.characters[master.charselect,7]<master.characters[master.charselect,2] {
	if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
	draw_sprite_ext(spr_plus,0,flox+77,floy,flops,flops,0,c_white,1)
	} else {
	draw_sprite_ext(spr_plus,1,flox+77,floy,flops,flops,0,c_white,1)
	}
}
//lyricism
//subtract
if master.characters[master.charselect,5]>1 {
		if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,0,lyrx-77,lyry,lyrms,lyrms,0,c_white,1)
	}
} else {
	if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,1,lyrx-77,lyry,lyrms,lyrms,0,c_white,1)
	}
}
//add
if master.characters[master.charselect,5]<master.characters[master.charselect,2] {
	if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
	draw_sprite_ext(spr_plus,0,lyrx+77,lyry,lyrps,lyrps,0,c_white,1)
	} else {
	draw_sprite_ext(spr_plus,1,lyrx+77,lyry,lyrps,lyrps,0,c_white,1)
	}
}
//swag
//subtract
if master.characters[master.charselect,8]>1 {
			if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,0,swax-77,sway,swams,swams,0,c_white,1)
	}
} else {
	if master.cansubtract=1 {
	draw_sprite_ext(spr_minus,1,swax-77,sway,swams,swams,0,c_white,1)
	}
}
//add
if master.characters[master.charselect,8]<master.characters[master.charselect,2] {
	if (master.characters[master.charselect,5]+master.characters[master.charselect,6]+master.characters[master.charselect,7]+master.characters[master.charselect,8]-3)<master.characters[master.charselect,2] {
	draw_sprite_ext(spr_plus,0,swax+77,sway,swaps,swaps,0,c_white,1)
	} else {
	draw_sprite_ext(spr_plus,1,swax+77,sway,swaps,swaps,0,c_white,1)
	}
}
}