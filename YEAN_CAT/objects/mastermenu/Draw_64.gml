/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(Font1);

//draw_text(x,y-20,"vert: "+string(vert));
//draw_text(x,y+20,"horz: "+string(horz));

//healthbar
//if instance_exists(yeancat) {
//	draw_healthbar(1920/2-110*(clamp(sqrt(yeancat.maxhealth/100),0,3))-280,5,1920/2+110*(clamp(sqrt(yeancat.maxhealth/100),0,3))-280,55,yeancat.healthh/yeancat.maxhealth*100,c_black,c_red,c_green,0,1,1)
//}

//xpbar
//if instance_exists(yeancat) {
//	draw_healthbar(0,750,1920,800,xp/xpto*100,c_black,c_blue,c_aqua,0,1,1)
//	draw_set_font(Font2);
//	draw_text(1920/2-260,754,"LEVEL: "+string(level));
//}
//draw_set_font(Font1);
//
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


//draw_text(1920/2-280,5+clamp(lower*.75,0,350),stringhour+":"+stringminute+":"+stringsecond)
//
//draw_set_alpha(.4)
//draw_set_color(c_black);
//if global.pause=1 {
//	draw_rectangle(0,0,room_width,room_height,0)
//}
//draw_set_alpha(1);