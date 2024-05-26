/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_set_font(Font4)
var sss=master.camscale

if numb!=-1 {
if type =1 {
	//weapon
	draw_sprite_ext(sprite_index,1,x,y,image_xscale*sss*1.02,image_yscale*sss*1.02,0,c_red,.5)
}
if type =2 {
	//passive
	draw_sprite_ext(sprite_index,1,x,y,image_xscale*sss*1.02,image_yscale*sss*1.02,0,c_blue,.5)
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale*sss,image_yscale*sss,0,col,image_alpha)

if image !=noone {
	draw_sprite_ext(image,0,x-480-clamp(obj_levelup.choicetotal-3,0,1)*30,y,image_xscale*sss/(sprite_get_height(image)/300)*.4,image_yscale*sss/(sprite_get_height(image)/300)*.4,0,c_white,1)
}
{
	if weprequirement1=-1{
	if pasrequirement1>-1 {
		if pasrequirement2=-1 {
			draw_sprite_ext(master.passives[pasrequirement1,5],0,x,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,0,c_white,1)
		} else {
			draw_sprite_ext(master.passives[pasrequirement1,5],0,x-80*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,0,c_white,1)
			draw_sprite_ext(master.passives[pasrequirement2,5],0,x+80*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,0,c_white,1)
		}
	} else {
		if pasrequirement2>-1 {
		draw_sprite_ext(master.passives[pasrequirement2,5],0,x,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,0,c_white,1)
		}
	}
	} else {
		if pasrequirement1>-1 {
		if pasrequirement2=-1 {
			draw_sprite_ext(master.passives[pasrequirement1,5],0,x+80*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,0,c_white,1)
			draw_sprite_ext(master.weapons[weprequirement1,11],0,x-80*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.weapons[weprequirement1,11])/300)*.2,image_yscale*sss/(sprite_get_height(master.weapons[weprequirement1,11])/300)*.2,0,c_white,1)
		} else {
			draw_sprite_ext(master.weapons[weprequirement1,11],0,x-120*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.weapons[weprequirement1,11])/300)*.2,image_yscale*sss/(sprite_get_height(master.weapons[weprequirement1,11])/300)*.2,0,c_white,1)
			draw_sprite_ext(master.passives[pasrequirement1,5],0,x,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement1,5])/300)*.2,0,c_white,1)
			draw_sprite_ext(master.passives[pasrequirement2,5],0,x+120*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,0,c_white,1)
		}
	} else {
		if weprequirement1>-1 {
		draw_sprite_ext(master.weapons[weprequirement1,11],0,x-80*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.weapons[weprequirement1,11])/300)*.2,image_yscale*sss/(sprite_get_height(master.weapons[weprequirement1,11])/300)*.2,0,c_white,1)
		}
		if pasrequirement2>-1 {
		draw_sprite_ext(image,0,x+80*sss,y-50*sss,image_xscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,image_yscale*sss/(sprite_get_height(master.passives[pasrequirement2,5])/300)*.2,0,c_white,1)
		}
	}
		
	}
	draw_text(x-270*sss,y,name);
	//if instance_exists(obj_levelup) {
	//if num = 1{
	//	draw_text(x+270,y-40,string(obj_levelup.r1));
	//}
	//if num = 2{
	//	draw_text(x+270,y-40,string(obj_levelup.r2));
	//}
	//if num = 3{
	//	draw_text(x+270,y-40,string(obj_levelup.r3));
	//}
	//if num = 4{
	//	draw_text(x+270,y-40,string(obj_levelup.r4));
	//}
	//}
	draw_text(x+110*sss,y,desc);

	var levv = "LEVEL: "+string(level+1)
	if num=1 {
	if type=1 {
		if master.weapons[numb,4]>=master.weapons[numb,5] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r1-1] > 0 {
		
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	} else {
		if master.passives[numb,3]>=master.passives[numb,4] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r1-1] > 0 {
			
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	}
	}
	if num=2 {
	if type=1 {
		if master.weapons[numb,4]>=master.weapons[numb,5] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r2-1] > 0 {
		
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	} else {
		if master.passives[numb,3]>=master.passives[numb,4] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r2-1] > 0 {
			
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	}
	}
	if num=3 {
	if type=1 {
		if master.weapons[numb,4]>=master.weapons[numb,5] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r3-1] > 0 {
		
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	} else {
		if master.passives[numb,3]>=master.passives[numb,4] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r3-1] > 0 {
			
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	}
	}
	if num=4 {
	if type=1 {
		if master.weapons[numb,4]>=master.weapons[numb,5] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r4-1] > 0 {
		
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	} else {
		if master.passives[numb,3]>=master.passives[numb,4] {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r4-1] > 0 {
			
			} else {
				levv= "STAT MAXED"
				lockk=1
			}
		}
	}
	}
	
	draw_text_transformed(x+490*sss+clamp(obj_levelup.choicetotal-3,0,1)*20,y,levv,1*sss,1*sss,0);
	}
	if global.choiceselect=num {
		//draw button indicators for controllers
show_button=0
button_look=0
var scal = .65
//ps5
if global.control_type=2 {
	show_button=1
	button_look=0
}
//xbox
if global.control_type=3 {
	show_button=1
	button_look=1
}
//switch
if global.control_type=4 {
	show_button=1
	button_look=2
}
if show_button=1 {
draw_sprite_ext(spr_bottombutton,button_look,x-480-clamp(obj_levelup.choicetotal-3,0,1)*30-50-100*(image_xscale-1.7)*10,y,scal,scal,0,c_white,1*(image_xscale-1.7)*10)
}
	}
}
//WEAPONS 
//DEM1 = ID;
//0name, 
//1 type, 0=base, 1=evolution, 2=superevo, 3=fusion
//2obtained?, 
//3discovered?, 
//4level, 
//5max level, 
//6passive requirement1, -1 = none
//7passive requirement2, -1 = none 
//8weapon requirement1, -1 = none
//9weapon requirement 2 -1 = none,
//10require max passives? 0 or 1
//11image, 
//12description
//13unlocked? (found in randomizer)
//14banished?
//15can spawn

//PASSIVES
//DEM1 = ID;
//0name, 
//1obtained?, 
//2discovered?, 
//3level, 
//4max level, 
//5image, 
//6description
//7unlocked? (found in randomizer)
//8banished
//9can spawn?

//wepcount=0
//pascount=0
//choicecount=3
//draw_set_color(c_white) 
//draw_text(x-700,y,string(num));



