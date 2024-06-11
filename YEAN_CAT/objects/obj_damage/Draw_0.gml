/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
var yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5

var sca = 1

if damage>=0 {
sca = clamp((log10(sqrt(abs(damage)/50)+1)/3+1)/((150+instance_number(obj_damage))/200),.9,999)
draw_set_font(Font2);
draw_text_transformed_color(x+3+xx*(1+newtime/50),-newtime/2+yy*(.25-time/200)+y+3,postring+string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c2,c3,c4,c1,alph);
xx=(0.5 * sin(pi/4+ 2 * pi * (newtime-ran) / 15) + 0.5)*6
yy=(0.5 * sin(pi/4+ 2 * pi * (newtime+ran) / 15) + 0.5)*6
draw_text_transformed_color(x-3+xx*(.75-newtime/100),-newtime/2+yy*(.5+time/150)+y+3,postring+string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c3,c4,c1,c2,alph);
xx=(0.5 * sin(pi/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*6
yy=(0.5 * sin(pi/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*6
draw_text_transformed_color(x+3+xx*(.5+newtime/150),-newtime/2+yy*(.75-time/100)+y-3,postring+string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c4,c1,c2,c3,alph);
xx=(0.5 * sin(pi*3/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*6
yy=(0.5 * sin(pi*3/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*6
draw_text_transformed_color(x-3+xx*(.25-newtime/200),-newtime/2+yy*(1+time/50)+y-3,postring+string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c1,c2,c3,c4,alph);
xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx/2+2,y+yy/2-newtime/2+2,postring+string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
draw_text_transformed_color(x+xx/2-2,y+yy/2-newtime/2+2,postring+string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
draw_text_transformed_color(x+xx/2+2,y+yy/2-newtime/2-2,postring+string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
draw_text_transformed_color(x+xx/2-2,y+yy/2-newtime/2-2,postring+string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));

xx=(0.5 * sin(pi/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(pi/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx,y+yy-newtime/2,postring+string(abs(round(damage))),size*sca,size*sca,0,make_color_hsv(c1a[0],c2a[1],c3a[2]),make_color_hsv(c2a[0],c3a[1],c4a[2]),make_color_hsv(c3a[0],c4a[1],c1a[2]),make_color_hsv(c4a[0],c1a[1],c2a[2]),clamp(alph*4,0,1));

xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx/2,y+yy/2-newtime/2,postring+string(abs(round(damage))),size*sca*.95,size*sca*.95,0,c_pos,c_pos,c_pos,c_pos,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
} else {
	draw_set_font(Font2);
sca = log10(sqrt(abs(damage)/10)+1)/2+1
xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx/2+2,y+yy/2-newtime/2+2,postring,size*sca*2.6,size*sca*2.6,0,c_black,c_black,c_black,c_black,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),1,1)));
draw_text_transformed_color(x+xx/2-2,y+yy/2-newtime/2+2,postring,size*sca*2.6,size*sca*2.6,0,c_black,c_black,c_black,c_black,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),1,1)));
draw_text_transformed_color(x+xx/2+2,y+yy/2-newtime/2-2,postring,size*sca*2.6,size*sca*2.6,0,c_black,c_black,c_black,c_black,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),1,1)));
draw_text_transformed_color(x+xx/2-2,y+yy/2-newtime/2-2,postring,size*sca*2.6,size*sca*2.6,0,c_black,c_black,c_black,c_black,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),1,1)));

xx=(0.5 * sin(pi/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(pi/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx,y+yy-newtime/2,postring,size*sca*2.5,size*sca*2.5,0,make_color_hsv(c1a[0],c2a[1],c3a[2]),make_color_hsv(c2a[0],c3a[1],c4a[2]),make_color_hsv(c3a[0],c4a[1],c1a[2]),make_color_hsv(c4a[0],c1a[1],c2a[2]),clamp(alph*4,0,1));
xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx/2,y+yy/2-newtime/2,postring,size*sca*2.35,size*sca*2.35,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),1,1)));


draw_text_transformed_color(x+3+xx*(1+newtime/50),-newtime/2+yy*(.25-time/200)+y+3,string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c2,c3,c4,c1,alph);
xx=(0.5 * sin(pi/4+ 2 * pi * (newtime-ran) / 15) + 0.5)*6
yy=(0.5 * sin(pi/4+ 2 * pi * (newtime+ran) / 15) + 0.5)*6
draw_text_transformed_color(x-3+xx*(.75-newtime/100),-newtime/2+yy*(.5+time/150)+y+3,string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c3,c4,c1,c2,alph);
xx=(0.5 * sin(pi/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*6
yy=(0.5 * sin(pi/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*6
draw_text_transformed_color(x+3+xx*(.5+newtime/150),-newtime/2+yy*(.75-time/100)+y-3,string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c4,c1,c2,c3,alph);
xx=(0.5 * sin(pi*3/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*6
yy=(0.5 * sin(pi*3/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*6
draw_text_transformed_color(x-3+xx*(.25-newtime/200),-newtime/2+yy*(1+time/50)+y-3,string(abs(round(damage))),size*sca*1.05,size*sca*1.05,0,c1,c2,c3,c4,alph);
xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx/2+2,y+yy/2-newtime/2+2,string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
draw_text_transformed_color(x+xx/2-2,y+yy/2-newtime/2+2,string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
draw_text_transformed_color(x+xx/2+2,y+yy/2-newtime/2-2,string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
draw_text_transformed_color(x+xx/2-2,y+yy/2-newtime/2-2,string(abs(round(damage))),size*sca*1,size*sca*1,0,c_white,c_white,c_white,c_white,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));

xx=(0.5 * sin(pi/2+ 2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(pi/2+ 2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx,y+yy-newtime/2,string(abs(round(damage))),size*sca,size*sca,0,make_color_hsv(c1a[0],c2a[1],c3a[2]),make_color_hsv(c2a[0],c3a[1],c4a[2]),make_color_hsv(c3a[0],c4a[1],c1a[2]),make_color_hsv(c4a[0],c1a[1],c2a[2]),clamp(alph*4,0,1));

xx=(0.5 * sin(2 * pi * (newtime-ran) / 15) + 0.5)*5
yy=(0.5 * sin(2 * pi * (newtime+ran) / 15) + 0.5)*5
draw_text_transformed_color(x+xx/2,y+yy/2-newtime/2,string(abs(round(damage))),size*sca*1.15,size*sca*1.15,0,c_black,c_black,c_black,c_black,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),.5,1)));
draw_text_transformed_color(x+xx/2,y+yy/2-newtime/2,string(abs(round(damage))),size*sca*.95,size*sca*.95,0,c_pos,c_pos,c_pos,c_pos,clamp((alph*8),0,1)*sqr(clamp((dur/(durset*1000000)),0,1)));
}
 
 


