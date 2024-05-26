/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alp);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.7);


if selected!=-1 {
	if upgrades[selected,0] >= 1 {
		if master.notice[selected,0]=2 {
		if master.notice[selected,1] = 1 {
			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_white,dfade);
			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_dkgrey,1-dfade);
draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,dfade/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,dfade/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_set_color(c_white)
draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,dfade);
		
		draw_set_font(Font2)
		draw_text_transformed_color(x,y-199+2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x,y-199-2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x+2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,dfade);
		
		draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,.5-dfade/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,.5-dfade/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
draw_set_color(c_white)
draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,1-dfade);
	
	
draw_set_font(Font2)
draw_text_transformed_color(x,y-230+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x,y-230-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x+2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x-2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
draw_text_transformed_color(x,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,1-dfade);	
		
		
		} else {
			//image
			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_white,slide);
			draw_set_font(Font2)
			//desc
			if master.notice[selected,2] < master.notice[selected,3] {
				//notmaxed
draw_text_transformed_color(x,y-199+2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x,y-199-2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
			} else {
				//maxed
draw_text_transformed_color(x-3+10*(0.5 * sin(2 * pi*2 * time / 5)),-3+y-273-(1-slide)*500+10*(0.5 * sin(2 * pi/2 * time / 5)),upgrademax[selected],1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_blue,c_orange,c_yellow,c_green,slide/2)
draw_text_transformed_color(x+3+10*(0.5 * sin(2 * pi * (time+90) / 5)),3+y-273-(1-slide)*500+10*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrademax[selected],1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_red,c_aqua,c_lime,c_purple,slide/2)
draw_text_transformed_color(x+3+(0.5 * sin(2 * pi * time / 5))*7.5,y-273-(1-slide)*500+3+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-3+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-273-(1-slide)*500-3+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+3+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-273-(1-slide)*500-3+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-3+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-273-(1-slide)*500+3+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_set_color(c_white)
draw_text_transformed_color(x,y-273-(1-slide)*500,upgrademax[selected],.95+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);

				
			}
			
			//levels
			if master.notice[selected,2] < master.notice[selected,3] {
				//if not maxed
			draw_set_font(Font5)
draw_text_transformed_color(x-590,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590+8,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590-8,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590,y-418-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
	draw_text_transformed_color(x-590,y-318+8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590,y-318-8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590+8,y-318-8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590-8,y-318+8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590,y-318-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
			} else {
				//if  maxed
				draw_set_font(Font5)
draw_text_transformed_color(x-590,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590+8,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590-8,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-590,y-418-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);

			}
			
			//name
			
				//not maxed
				if master.notice[selected,2] < master.notice[selected,3] {
			draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-324-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-324-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-324-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-324-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-324-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-324-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_set_color(c_white)
draw_text_transformed_color(x,y-324-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
				} else {
					//maxed
								draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-403-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-403-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-403-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-403-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-403-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-403-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_set_color(c_white)
draw_text_transformed_color(x,y-403-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
		
					
				}
			
			}


	
} else {
	draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_white,dfade);
			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_black,1-dfade);
draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,dfade/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,dfade/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_set_color(c_white)
draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,dfade);
	
	draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2-dfade/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2-dfade/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_set_color(c_white)
draw_text_transformed_color(x,y-357-(1-slide)*500,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
	

}

//if upgrades[selected,0] = 1 and master.passives[selected,2] = 1 {
//	//discovered
//	draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2-dfade/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2-dfade/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide-dfade);
	
	
//draw_set_font(Font2)
//draw_text_transformed_color(x,y-199+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-199-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+2,y-199-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-2,y-199-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-199-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
//}

} else {
	
	if master.notice[selected,0]=0 {
	//locked and undiscovered
	draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_black,slide);
	draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_set_color(c_white)
draw_text_transformed_color(x,y-357-(1-slide)*500,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
	
	
draw_set_font(Font2)
draw_text_transformed_color(x,y-230+2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x,y-230-2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
	
} else {
	//discovered
	if master.notice[selected,0]=1 {
		draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_dkgrey,dfade);
			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_black,slide-dfade);
		draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2-dfade/2);
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2-dfade/2);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_set_color(c_white)
draw_text_transformed_color(x,y-357-(1-slide)*500,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide-dfade);
	
	
draw_set_font(Font2)
draw_text_transformed_color(x,y-230+2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x,y-230-2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x+2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x-2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
draw_text_transformed_color(x,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide-dfade);
		
		
	draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,dfade/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,dfade/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
draw_set_color(c_white)
draw_text_transformed_color(x,y-357-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,dfade);
	
	
draw_set_font(Font2)
draw_text_transformed_color(x,y-230+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x,y-230-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x+2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x-2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
draw_text_transformed_color(x,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,dfade);
	} else {
		draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_dkgrey,slide);
			draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
draw_set_color(c_white)
draw_text_transformed_color(x,y-357-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
	
	
draw_set_font(Font2)
draw_text_transformed_color(x,y-230+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x,y-230-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x+2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x-2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
draw_text_transformed_color(x,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
		
	}
}
}
}
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_font(Font5);
draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-575+15*(0.5 * sin(2 * pi/2 * time / 5)),"UPGRADES",2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-575+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"UPGRADES",2+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(x-6,y-575,"UPGRADES",1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-6-575,"UPGRADES",1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x+6,y-575,"UPGRADES",1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(x,y-575,"UPGRADES",1.9+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0,c_white,c_white,c_white,c_white,1)


