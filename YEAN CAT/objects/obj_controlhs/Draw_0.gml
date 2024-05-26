/// @description Insert description here
//draw event obj_controlhs

if master.spawnthings=1 and !instance_exists(restar) {
	exit
}

var hsxx=room_width
var hsyy=room_height/2
if instance_exists(obj_achievments) {
	hsxx=obj_achievments.x
	hsyy=obj_achievments.y-350
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var docb = global.data;
if docb != -1 {
//array_sort(docb, sort_score);
}
if docb == -1
{
	draw_text_bold("Loading...",hsxx,hsyy,5,Font6,c_black,c_white)
}
else
{

		//draw_text_bold("Highscores:",hsxx,hsyy,5,Font6,c_black,c_white)
		if instance_exists(obj_achievments) {
		hsxx=obj_achievments.x-600
		var hsyy=obj_achievments.y
		} else {
			var hsxx=room_width
var hsyy=room_height/2
		}
		
			array_sort(global.data, sort_score);
					
		for (var i=selected; i< array_length(global.data); i+=1;) {
				
			var _doc_ = docb[i];
			var badgee= ""
			if !is_undefined(docb[i]) {
				badgee = $"{_doc_.lversion}"
			var _txt = $"\nCombined Level: {_doc_.combinedlevel}\nHighest Level: {_doc_.highestlevel}\nKills: {_doc_.kills}\nPlay Time: {_doc_.playtime}"
				if _doc_ != -1 {
				if i-selected=0 {
					_txt = $"\nCombined Level: {_doc_.combinedlevel}\nHighest Level: {_doc_.highestlevel}\nKills: {_doc_.kills}\nPlay Time: {_doc_.playtime}"
					
					facing=1
					
				} else {
					_txt = $"Level\n{_doc_.combinedlevel}"
			
					facing=-1
					if i<selected {
						facing=1
					}
				}
				var place=clamp(i+1,1,9999999)
				var offs= (1 * sin(2 * pi * (time/slw+(power(1/clamp(abs(i-selected)*1.5+1,1,100),pwr)*700*(i-selected)/blw)) / 800))*(sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*200*(i-selected)/blw)
				//BADGE// assign badge text to show how early they played the game.
				var bnum=0
				var btext=""
				if badgee= "0.5.0" or badgee = "0.6.0" or badgee = "Alpha 1.0.0" {
					bnum=0
					if badgee= "0.5.0" {
						btext="Alpha 0.5.0"
					}
					if badgee= "0.6.0" {
						btext="Alpha 0.6.0"
					}
					if badgee= "Alpha 1.0.0" {
						btext="Alpha 1.0.0"
					}
				} else {
				if badgee= "Beta 1.0.0" {
					if badgee= "Beta 1.0.0" {
						btext="Beta 1.0.0"
					}
					bnum=1
				} else {
				if badgee= "Beta 1.5.0" {
					if badgee= "Beta 1.5.0" {
						btext="Beta 1.5.0"
					}
					bnum=1
				}
				}
				}
				if i-selected=0 {
				draw_sprite_ext(spr_badges,bnum,hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy-325+offs,.33,.33,0,c_white,.9)
				draw_text_bold_ext(btext,hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy-350+offs,5,Font1,c_black,c_white,1*(fadein/100)-clamp(abs(i-selected)-1,0,5)/5);
				}
				//draw characters/players
				for (var ii=0 ; ii<round(((abs(facing-1)*room_width/2)+(1*hsxx))/110); ii+=1) {
					draw_sprite_ext(master.characters[clamp(_doc_.strongestcharacter,0,14),12],round(anicount),hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw+(lengthdir_x(18*(ii)*6*scale,0+180))*facing,hsyy+offs,6*scale*facing,6*scale,0,c_white,(1-(ii/10))*(fadein/100))
				}
				draw_sprite_ext(master.characters[clamp(_doc_.strongestcharacter,0,14),11],round(anicount),hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy+offs,facing*6,6,0,c_white,1*(fadein/100))
				draw_sprite_ext(master.characters[clamp(_doc_.strongestcharacter,0,14),10],0,hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw+(8+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5),hsyy+offs+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20,facing*4*50/sprite_get_height(master.characters[clamp(_doc_.strongestcharacter,0,14),10]),3*50/sprite_get_height(master.characters[clamp(_doc_.strongestcharacter,0,14),10]),0,c_white,1*(fadein/100))

				draw_set_halign(fa_center)
				draw_set_valign(fa_middle)
			
				draw_text_bold_ext(_txt,hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy+170+offs,5,Font1,c_black,c_white,1*(fadein/100)-clamp(abs(i-selected)-1,0,5)/5);
				_txt = $"{_doc_.named}"
			
				
				var sca=sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*(1.5-clamp(string_length(_doc_.named)-7,0,18)/18)
				if (i-selected)=0 {
				draw_text_bold_ext2(_txt,hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy-200+offs,5,Font5,c_black,c_white,1*(fadein/100),sca);
				} else {
				draw_text_bold_ext2(_txt,hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy-150+offs,5,Font5,c_black,c_white,1*(fadein/100),sca);
				}
				//this section changes the color of the ranking number based on the position.
				var placecol=c_black
				var placecol2=c_white
				if place=1 {
					placecol=make_colour_hsv(36, 255, 255);
					placecol2=make_colour_hsv(42, 255, 114);
				}
				if place=2 {
					placecol=c_ltgray
					placecol2=c_dkgrey
				}
				if place=3 {
					placecol=make_colour_hsv(23, 151, 200);
					placecol2=make_colour_hsv(25, 255, 82);
				}
				if place=4 {
					placecol=c_red
					placecol2=c_black
				}
				if place=5 {
					placecol=c_orange
					placecol2=c_black
				}
				if place=6 {
					placecol=c_yellow
					placecol2=c_black
				}
				if place=7 {
					placecol=c_green
					placecol2=c_black
				}
				if place=8 {
					placecol=c_blue
					placecol2=c_black
				}
				if place=9 {
					placecol=c_aqua
					placecol2=c_black
				}
				if place=10 {
					placecol=c_purple
					placecol2=c_black
				}
				if place>10 {
					placecol=c_black
					placecol2=c_white
				}
				draw_text_bold_ext2(string(place),hsxx+sqrt(1/clamp(abs(i-selected)/blw+1,1,100))*700*(i-selected)/blw,hsyy-90+offs,10,Font5,placecol2,placecol,1*(fadein/100),(2-clamp(place/20,0,.75))*sca/2);
				
				//if keyboard_check(vk_space) and master.devmode=1 { //for showing tweaking values during development
				//		if keyboard_check(ord("P")) {
				//			draw_text_bold(string(pwr),room_width/2,room_height/2,10,Font5,c_white,c_black);			
				//		}
				//		if keyboard_check(ord("S")) {
				//			draw_text_bold(string(slw),room_width/2,room_height/2,10,Font5,c_white,c_black);			
				//		}
				//		if keyboard_check(ord("B")) {
				//			draw_text_bold(string(blw),room_width/2,room_height/2,10,Font5,c_white,c_black);			
				//		}
				//}
				}
				}
		}
}




