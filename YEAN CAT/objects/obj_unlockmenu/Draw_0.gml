/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alp);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);



draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.7);
var xx=swapx+x
//tasks
if menuselect=1 {
	draw_sprite_ext(spr_unlockselect,0,xx-500,y-175,.85,.95,0,c_white,.5);
	draw_sprite_ext(spr_unlockselect,0,xx,y-175,.85,.95,0,c_white,.5);
	taskcount2=0
	taskcount3=0
	taskselectt=(array_length(master.tasks))
	draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var taskscomplete=0
		for (i=0; i<(array_length(master.tasks));i++) {
			var skipone = 0
		if sorting=0 {
		if master.tasks[i,5]>=0 {
			taskcount2+=1
		}
		if master.tasks[i,3]=2 {
			taskscomplete+=1
		}
		} else {
			if master.tasks[i,3]=2 {
			taskscomplete+=1
			}
			if master.tasks[i,3]=0 {
			if master.tasks[i,5]>=0 {
				taskcount2+=1
		} else {
			skipone=1
		}
		} else {
			
			if master.tasks[i,8]=0 {
				taskcount2+=1
			} else {
			skipone=1
		}
		}
		}
		if i<=taskselectt {
		if round(taskselect+1)=taskcount2 {
			taskimage=master.tasks[i,4]
			//music looks
			if master.tasks[i,6] = 5 {
				imagenum=master.tasks[i,7]
			}
			//character looks
			if master.tasks[i,6] = 0 {
				imagenum=master.tasks[i,7]
			}
			
			taskcount3=taskcount2
			taskselectt=i
		}
		}
		if abs((taskselect+1)-taskcount2)<=3 {
			if skipone=0 {
			draw_set_alpha(1-abs((taskselect+1)-taskcount2)/3);
			} else {
				draw_set_alpha(0)
			}
			var namt = master.tasks[i,0]
			if master.tasks[i,5]=0 {
				namt = "???"
			}
			draw_text_transformed(xx-500,y-175+sign(taskcount2-(taskselect+1))*power(abs(taskcount2-(taskselect+1)),.75)*100,namt,(1.25-clamp(power(clamp(string_length(namt)-3,0,9999),.75),0,9)/11)*clamp(1.75-abs((taskselect+1)-taskcount2)/1.4,0,1.75)*.85,(1.25-clamp(power(clamp(string_length(namt)-3,0,9999),.75),0,9)/11)*clamp(1.75-abs((taskselect+1)-taskcount2)/1.4,0,1.75)*.85,0)
		}
		if abs((taskselect+1)-taskcount2)<=3 {
			var damt = master.tasks[i,1]
			if master.tasks[i,5]=0 {
				damt = "???"
			}
			if skipone=0 {
			draw_set_alpha(1-abs((taskselect+1)-taskcount2));
			} else {
				draw_set_alpha(0)
			}
			draw_text_transformed(xx,y-175+sign(taskcount2-(taskselect+1))*power(abs(taskcount2-(taskselect+1)),.75)*100,damt,(1.25-clamp(power(clamp(string_length(damt)-4,0,9999),.75),0,25)/30)*clamp(1.75-abs((taskselect+1)-taskcount2)/1.4,0,1.75)*.5,(1.25-clamp(power(clamp(string_length(damt)-4,0,9999),.75),0,25)/30)*clamp(1.75-abs((taskselect+1)-taskcount2)/1.4,0,1.75)*.5,0)
		}
	}
	draw_sprite_ext(spr_unlocksquare,0,xx+550,y-150,(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2)),(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2)),0,c_white,1);
	c_lock=c_white
	if master.tasks[taskselectt,3]=0 {
		if master.tasks[taskselectt,5]=0 {
	c_lock=c_black
	
		} else {
			c_lock=c_dkgrey
		}
		} else {
			if master.tasks[taskselectt,8]=0 {
				c_lock=c_dkgrey
			}
		}
//if is character
if master.tasks[taskselectt,6]=0 {
draw_sprite_ext(master.characters[imagenum,11],round(anicount),xx+550,y-150,6,6,0,c_lock,(1-abs((taskselect+1)-taskcount3)))
draw_sprite_ext(master.characters[imagenum,10],0,xx+550+(8+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5),y-150+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20,4*50/sprite_get_height(master.characters[imagenum,10]),3*50/sprite_get_height(master.characters[imagenum,10]),0,c_lock,(1-abs((taskselect+1)-taskcount3)))
} else {
//if is not character
draw_sprite_ext(taskimage,imagenum,xx+550,y-150,(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*(618/sprite_get_width(taskimage)),(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*(618/sprite_get_width(taskimage)),0,c_lock,(1-abs((taskselect+1)-taskcount3)));

}
	
if master.tasks[taskselectt,3]=0 or (master.tasks[taskselectt,3]=1 and master.tasks[taskselectt,8]=0) {
draw_sprite_ext(spr_lock,0,xx+550,y-150,(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*(618/sprite_get_width(spr_lock)),(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*(618/sprite_get_width(spr_lock)),0,c_lock,(1-unlockani)*(1-abs((taskselect+1)-taskcount3)));
draw_sprite_ext(spr_lock,1,xx+550+clamp(unlockani,0,1)*150,y-150,(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*(618/sprite_get_width(spr_lock))*clamp(1-unlockani*2,-1,1),(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*(618/sprite_get_width(spr_lock)),0,c_lock,(1-unlockani)*(1-abs((taskselect+1)-taskcount3)));
}
//draw_sprite_ext(spr_lock,0,x,y,image_xscale/5,image_yscale/5,0,lockcol,obj_upgrademenu.dfade);
//draw_sprite_ext(spr_lock,1,x+clamp(unlockani,0,1)*40*image_xscale,y,image_xscale/5*clamp(1-unlockani*2,-1,1),image_yscale/5,0,lockcol,obj_upgrademenu.dfade);
	

draw_set_alpha((1-abs((taskselect+1)-taskcount3)));
draw_healthbar_border(xx+550,y-150,(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*618,(.55+.1*taskhov)*(1-abs(swapx)/(display_get_gui_width()*2))*618,10,master.tasks[taskselectt,2],c_black,c_blue,c_aqua,1);
rewardtype = ""
var resel = master.tasks[taskselectt,6]
//rewardtype //type: 0=character, 1=weapon, 2=passive, 3=item, 4=stage, 5=music, 6=gamemode, 7=other, 

			if resel = 0 {
				rewardtype="CHARACTER"
			}
			if resel = 1 {
				rewardtype="WEAPON"
			}
			if resel = 2 {
				rewardtype="ABILITY"
			}
			if resel = 3 {
				rewardtype="ITEM"
			}
			if resel = 4 {
				rewardtype="STAGE"
			}
			if resel = 5 {
				rewardtype="MUSIC"
			}
			if resel = 6 {
				rewardtype="GAMEMODE"
			}
			if resel = 7 {
				rewardtype="OTHER"
			}
			if master.tasks[taskselectt,5]=0 {
				rewardtype="???"
			}
			draw_set_alpha(1-abs((taskselect+1)-taskcount3));
			draw_text_transformed(xx+550,y-380,rewardtype,(1.25-clamp(power(clamp(string_length(rewardtype)-8,0,9999),.75),0,9)/11)*clamp(1.75-abs((taskselect+1)-taskcount3)/1.4,0,1.75)*.85,(1.25-clamp(power(clamp(string_length(rewardtype)-8,0,9999),.75),0,9)/11)*clamp(1.75-abs((taskselect+1)-taskcount3)/1.4,0,1.75)*.85,0)
			if master.tasks[taskselectt,2]<1 {
			draw_text_transformed(xx+550,y+100,"("+string(master.tasks[taskselectt,2]*100)+"%)",(1.25-clamp(power(clamp(string_length(rewardtype)-3,0,9999),.75),0,9)/11)*clamp(1.75-abs((taskselect+1)-taskcount3)/1.4,0,1.75)*.85,(1.25-clamp(power(clamp(string_length(rewardtype)-3,0,9999),.75),0,9)/11)*clamp(1.75-abs((taskselect+1)-taskcount3)/1.4,0,1.75)*.85,0)
			} else {
			draw_text_transformed(xx+550,y+100,"UNLOCKED",(1.25)*clamp(1.75-abs((taskselect+1)-taskcount3)/1.4,0,1.75)*.85,(1.25)*clamp(1.75-abs((taskselect+1)-taskcount3)/1.4,0,1.75)*.85,0)
			}
}
//draw_set_alpha(1);
//draw_text(x,y-200,string(menuselect))
//draw_text(x,y-100,string(menuselectt))
//draw_text(x,y,string(swapx))
//draw_text(x,y+100,string((taskselect+1)))


if menuselect=2 {
	var contcol=0
for (i=0; i < array_length(master.collection);i++) {
	if sortingcol=0 {
		contcol+=1
	} else {
		if master.collection[i,1]!=0 {
			contcol+=1
		}
	}
}


//(collectscrollvalue*(floor(contcol/10)/2+clamp(floor(contcol/10),0,4.5)*.5))*130
var slidecol=(collectscrollvalue*(clamp(floor(contcol/10)+.5,0,999999)/(4)+clamp(floor(contcol/10)-.5,0,16)/(4)))*(100*gro*2)
//var slidecol=(collectscrollvalue*(clamp(floor(contcol/10+distplay),4,999999)/(4)+clamp(floor(contcol/10+1),2,16)/(distplay9)))*(100*gro/distplay7)
var colnum=-1
for (i=0; i < array_length(master.collection);i++) {
	
	seld=0
		if sortingcol=0 {
		colnum+=1
	} else {
		if master.collection[i,1]!=0 {
			colnum+=1
		}
	}
	var xxx = xx-clamp(contcol-1,0,9)*(50*gro)+(colnum % 10)*(100*gro)
	var yyy = -130+slidecollect*.75+y-(50*gro)/2-slidecol/1-clamp(floor(contcol/10)+6,-2,8)*(50*gro)/2+clamp(floor(colnum/10)+1,0,9999)*(100*gro*1)
	if colsel=i {
		distomake=-(50*gro)/2-slidecol-clamp(floor(contcol/10)+6,-2,8)*(50*gro)/2+clamp(floor(colnum/10)+1,0,9999)*(100*gro*1)
	}
	
	if point_in_rectangle(mouse_x,mouse_y,xxx-50,yyy-50,xxx+50,yyy+50) {
		if master.collection[i,1] > 0 {
		if mouse_check_button_pressed(mb_left) {
			if colsel!=i {
			colsel=i
			swapcol=1
			} else {
				colsel=-1
			
				swapcol=1
			}
		}
		
		if overr!=i {
			if colsel!=i {
		overr=i
		seldd=0
			}
		}
		} else {
			if sortingcol=0 {
				if mouse_check_button_pressed(mb_left) {
			if colsel!=i {
			colsel=i
			swapcol=1
			} else {
				colsel=-1
			
				swapcol=1
			}
		}
		
		if overr!=i {
			if colsel!=i {
		overr=i
		seldd=0
			}
		}
			}
		}
	}
	var wiggle=0
	if colsel!=i {
	if overr=i {
		if seldd<1 {
	seldd=(seldd*20+1)/21
		}
		seld=seldd
	}
	} else {
		wiggle=1
		seld=1
	}

	
	var colalp=clamp(clamp(((1+floor(colnum/10)+slidecollect/1000)*(100*gro)-(slidecol/1))/(100*gro),0,1)-(1-clamp(((slidecol+clamp((floor(contcol/10)+1-slidecollect/1000),0,4.5-(3*(slidecollect/500)))*(100*gro))-(floor(clamp(colnum/10,0,99999)))*(100*gro))/(100*gro),0,1)),0,1)
	if master.collection[i,1] > 0{
	draw_sprite_ext(spr_barslot,0,xxx,yyy,(1+.2*seld)*colalp,(1+.2*seld)*colalp,5*(sin(2 * pi/2 * time / 5))*wiggle,c_white,colalp)
	} else {
		if sortingcol=0 {
			draw_sprite_ext(spr_barslot,0,xxx,yyy,(1+.2*seld)*colalp,(1+.2*seld)*colalp,5*(sin(2 * pi/2 * time / 5))*wiggle,c_white,colalp)
		}
	}
	var c_colok=c_white 
	if master.collection[i,1] = 1{
		c_colok=c_dkgrey
		
	}
	if master.collection[i,1] = 0{
		c_colok=c_black
	}
	if master.collection[i,1] > 0{
	draw_sprite_ext(master.collection[i,8],master.collection[i,11],-50*gro+sprite_get_xoffset(master.collection[i,8])/sprite_get_width(master.collection[i,8])*100*gro+xxx,yyy+50*gro-sprite_get_yoffset(master.collection[i,8])/sprite_get_height(master.collection[i,8])*100*gro,(1+.2*seld)*colalp*100/sprite_get_width(master.collection[i,8]),(1+.2*seld)*colalp*100/sprite_get_width(master.collection[i,8]),-5*(sin(2 * pi/2 * time / 5))*wiggle,c_colok,colalp)
	} else {
		if sortingcol=0 {
		draw_sprite_ext(master.collection[i,8],master.collection[i,11],-50*gro+sprite_get_xoffset(master.collection[i,8])/sprite_get_width(master.collection[i,8])*100*gro+xxx,yyy+50*gro-sprite_get_yoffset(master.collection[i,8])/sprite_get_height(master.collection[i,8])*100*gro,(1+.2*seld)*colalp*100/sprite_get_width(master.collection[i,8]),(1+.2*seld)*colalp*100/sprite_get_width(master.collection[i,8]),-5*(sin(2 * pi/2 * time / 5))*wiggle,c_colok,colalp)
		}
	}
	if master.collection[i,1] = 0{
		if sortingcol=0 {
	draw_sprite_ext(spr_lock,2,xxx,yyy,(1+.2*seld)*colalp*100/sprite_get_width(spr_lock),(1+.2*seld)*colalp*100/sprite_get_height(spr_lock),5*(sin(2 * pi/2 * time / 5))*wiggle,c_dkgrey,sqrt(clamp(colalp,0,1)))
		}
	}
//	if master.devmode=1 and keyboard_check(vk_space) {
//			draw_set_color(c_black)
//	draw_set_alpha(1)
//	draw_text_transformed(xxx,yyy-50,string((slidecol)),1,1,0)
	
//if keyboard_check(ord("9")) {
//	draw_text_transformed(xxx,yyy,string((distplay9)),1,1,0)
//}
//	if keyboard_check(ord("8")) {
//		draw_text_transformed(xxx,yyy,string((distplay8)),1,1,0)
//}
//		if keyboard_check(ord("7")) {
//			draw_text_transformed(xxx,yyy,string((distplay7)),1,1,0)
//}
//			if keyboard_check(ord("6")) {
//				draw_text_transformed(xxx,yyy,string((distplay6)),1,1,0)
//}
//				if keyboard_check(ord("5")) {
//					draw_text_transformed(xxx,yyy,string((distplay5)),1,1,0)
//}
//					if keyboard_check(ord("4")) {
//						draw_text_transformed(xxx,yyy,string((distplay4)),1,1,0)
//}
//						if keyboard_check(ord("3")) {
//							draw_text_transformed(xxx,yyy,string((distplay3)),1,1,0)
//}
//							if keyboard_check(ord("2")) {
//								draw_text_transformed(xxx,yyy,string((distplay2)),1,1,0)
//}
//if keyboard_check(ord("1")) {
//draw_text_transformed(xxx,yyy,string((distplay)),1,1,0)
//}
//if keyboard_check(ord("0")) {
//draw_text_transformed(xxx,yyy,string((distplay0)),1,1,0)
//}
//}

}

	//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what
//state: 0 =locked, 1=unlocked, 2=obtained.
//collection=[
//["Penny",1,0,-1,1,-1,-1,0,spr_penny,0,-1,0,-1],
//["Dollar",1,0,-1,1,-1,-1,0,spr_dondadollar,0,-1,0,-1],
//["Burger",1,0,100,1,100,-1,0,spr_bigmac,0,-1,0,-1],
//["Defcon",1,0,10,1,100,-1,0,spr_defcon,0,-1,0,4.5],
//["Defcon 2",0,0,10,0,1000,-1,0,spr_defcon,0,-1,1,5],
//["Defcon 3",0,0,10,0,10000,-1,0,spr_defcon,0,-1,2,-1],
//["Shades",0,0,10,1,1000,-1,0,spr_shades,0,-1,0,-1],
//["Oxycontin",1,0,10,1,100,-1,0,spr_oxy,0,-1,0,-1]

//]
if examcol!=-1 {
	if slidecollect>2 {
			var c_colot=master.collection[examcol,14]
			var c_colok=c_white
		var	coltt=master.collection[examcol,0]
		var colcount=""
		var colcou=""
	if master.collection[examcol,1] = 1{
		c_colok=c_dkgrey
		c_colot=c_dkgrey
		
	}
	
	if master.collection[examcol,1] = 1{
		flairtxt=""
		effecttext="Obtain this Item\nto Reveal its Effect"
		colcou=""
		colcount=""
	}
	
	if master.collection[examcol,1] = 2{
		flairtxt=master.collectiontext[examcol,2]
		effecttext=master.collectiontext[examcol,3]
		colcou=string(master.collection[examcol,2])
		colcount=""
		if master.collection[examcol,3]!=-1 {
			colcount="Collect "+string(master.collection[examcol,3])+"\nto Unlock "+string(master.collection[master.collection[examcol,12],0])
		}
	}
	
	if master.collection[examcol,1] = 0{
		flairtxt=""
		effecttext=""
		c_colok=c_black
		c_colot=c_black
		coltt= "???"
	}
	
	
draw_sprite_ext(master.collection[examcol,8],master.collection[examcol,11],colswapx-100+sprite_get_xoffset(master.collection[examcol,8])/sprite_get_width(master.collection[examcol,8])*200+x,y-900+670*sqrt((1-clamp(abs(colswapx/display_get_gui_width()),0,1)))+100-sprite_get_yoffset(master.collection[examcol,8])/sprite_get_height(master.collection[examcol,8])*200,(2.5)*100/sprite_get_width(master.collection[examcol,8])*(1+.1*(.5+sin(2 * pi/2 * time / 5)/2)),(2.5)*100/sprite_get_width(master.collection[examcol,8])*(1+.1*(.5+sin(2 * pi/2 * time / 5)/2)),5*(sin(2 * pi/2 * time / 10)),c_colok,clamp(1-colswapx/display_get_gui_width(),0,1))
	
	
	if master.collection[examcol,1] = 0{
		if sortingcol=0 {
	draw_sprite_ext(spr_lock,2,colswapx-100+sprite_get_xoffset(spr_lock)/sprite_get_width(spr_lock)*200+x,y+220-450*(1-clamp(abs(colswapx/display_get_gui_width()),0,1))+100-sprite_get_yoffset(spr_lock)/sprite_get_height(spr_lock)*200,(2.5)*100/sprite_get_width(spr_lock)*(1-.1*(.5+sin(2 * pi/2 * time / 10)/2)),(2.5)*100/sprite_get_width(spr_lock)*(1-.1*(.5+sin(2 * pi/2 * time / 10)/2)),5*(sin(2 * pi/2 * time / 10)),c_dkgrey,clamp(1-colswapx/display_get_gui_width(),0,1))
		}
	} 

		draw_set_halign(fa_center)
		draw_set_valign(fa_middle);

		
		var xsx=0
		var ysy=-30+5*(-2.5)
		
		var cx=xsx+x+colswapx
		var cy=ysy+y-1075+725*(1-clamp(abs(colswapx/display_get_gui_width()),0,1))
		var sca = .85+.1*(8.5)
		var thick = 6
		
		draw_set_font(Font4)
		
		draw_set_alpha(clamp(1-colswapx/display_get_gui_width(),0,1))
				
draw_text_transformed_color(cx-thick+15*(0.5 * sin(2 * pi*2 * time / 5)),cy+thick+15*(0.5 * sin(2 * pi/2 * time / 5)),coltt,sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(cx+thick+15*(0.5 * sin(2 * pi * (time+90) / 5)),cy-thick+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),coltt,sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(cx-thick*7/6,cy-thick*7/6,coltt,.96*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,.96*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(cx,cy,coltt,.96*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,.96*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(cx+thick*7/6,cy-thick*7/6,coltt,.96*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,.96*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(cx,cy,coltt,.9*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,.9*sca*(2-string_length(master.collection[examcol,0])/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0,c_colot,c_colot,c_colot,c_colot,1)

		//draw_set_color(c_black);
		//draw_text_transformed(cx+thick,cy-thick,coltt,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		//draw_text_transformed(cx+thick,cy+thick,coltt,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		//draw_text_transformed(cx-thick,cy-thick,coltt,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		//draw_text_transformed(cx-thick,cy+thick,coltt,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		//draw_set_color(c_white);
		//draw_text_transformed(cx,cy,coltt,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
	
		xsx=0
		ysy=120
		draw_set_font(Font4)
		cx=xsx+x+colswapx
		cy=ysy+y-1075+725*(1-clamp(abs(colswapx/display_get_gui_width()),0,1))
		sca = .75+.1*(2.5)
		thick = 4
		
		draw_set_color(c_black);
		draw_text_transformed(cx+thick,cy-thick,effecttext,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		draw_text_transformed(cx+thick,cy+thick,effecttext,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		draw_text_transformed(cx-thick,cy-thick,effecttext,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		draw_text_transformed(cx-thick,cy+thick,effecttext,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
		draw_set_color(c_white);
		draw_text_transformed(cx,cy,effecttext,sca*(2-string_length(master.collection[examcol,0])/30),sca*(2-string_length(master.collection[examcol,0])/30),0);
	
		xsx=0
		ysy=40+5*(-5)
		
		cx=xsx+x+colswapx
		cy=ysy+y-1075+725*(1-clamp(abs(colswapx/display_get_gui_width()),0,1))
		sca = .6+.1*(-1.75)
		thick = 2
		
		draw_set_color(c_white);
		draw_text_transformed(cx+thick,cy-thick,flairtxt,sca*(2-string_length(flairtxt)/60),sca*(2-string_length(flairtxt)/60),0);
		draw_text_transformed(cx+thick,cy+thick,flairtxt,sca*(2-string_length(flairtxt)/60),sca*(2-string_length(flairtxt)/60),0);
		draw_text_transformed(cx-thick,cy-thick,flairtxt,sca*(2-string_length(flairtxt)/60),sca*(2-string_length(flairtxt)/60),0);
		draw_text_transformed(cx-thick,cy+thick,flairtxt,sca*(2-string_length(flairtxt)/60),sca*(2-string_length(flairtxt)/60),0);
		draw_set_color(c_black);
		draw_text_transformed(cx,cy,flairtxt,sca*(2-string_length(flairtxt)/60),sca*(2-string_length(flairtxt)/60),0);

		xsx=0
		ysy=267+5*(-13)
		
		cx=xsx+x+colswapx
		cy=ysy+y-1075+725*(1-clamp(abs(colswapx/display_get_gui_width()),0,1))
		sca = 2+.1*(-8.5)
		thick = 2
		
		draw_set_font(Font4)
				//type //type: 0=character, 1=weapon, 2=passive, 3=item, 4=healing, 5=boost, 6=music, 7=collectible, 8=other,9=currency, 10=equipable, 11=drug, 12=questitem
var checktype=master.collection[examcol,15]
if checktype != 0 and checktype != 1 and checktype != 2 and checktype != 6 and checktype != 7 and checktype != 12 {

draw_text_transformed_color(cx-thick+15*(0.5 * sin(2 * pi*2 * time / 5)),cy+thick+15*(0.5 * sin(2 * pi/2 * time / 5)),colcou,sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(cx+thick+15*(0.5 * sin(2 * pi * (time+90) / 5)),cy-thick+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),colcou,sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(cx-thick*7/6,cy-thick*7/6,colcou,.96*sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,.96*sca*(2-string_length(colcou)/30)+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(cx,cy,colcou,.96*sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,.96*sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(cx+thick*7/6,cy-thick*7/6,colcou,.96*sca*(2-string_length(colcou)/30)+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,.96*sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(cx,cy,colcou,.9*sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,.9*sca*(2-string_length(colcou)/30)+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0,c_colot,c_colot,c_colot,c_colot,1)
}

		xsx=0
		ysy=180+5*(18)
		
		cx=xsx+x+colswapx
		cy=ysy+y-1075+725*(1-clamp(abs(colswapx/display_get_gui_width()),0,1))
		sca = .9+.1*(-1.5)
		thick = 2
		
		draw_set_color(c_white);
		draw_text_transformed(cx+thick,cy-thick,colcount,sca*(2-string_length(colcount)/60),sca*(2-string_length(colcount)/60),0);
		draw_text_transformed(cx+thick,cy+thick,colcount,sca*(2-string_length(colcount)/60),sca*(2-string_length(colcount)/60),0);
		draw_text_transformed(cx-thick,cy-thick,colcount,sca*(2-string_length(colcount)/60),sca*(2-string_length(colcount)/60),0);
		draw_text_transformed(cx-thick,cy+thick,colcount,sca*(2-string_length(colcount)/60),sca*(2-string_length(colcount)/60),0);
		draw_set_color(c_black);
		draw_text_transformed(cx,cy,colcount,sca*(2-string_length(colcount)/60),sca*(2-string_length(colcount)/60),0);
		
}
}


if selected!=-1 {
//	if upgrades[selected,0] >= 1 {
//		if master.notice[selected,0]=2 {
//		if master.notice[selected,1] = 1 {
//			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_white,dfade);
//			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_dkgrey,1-dfade);
//draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,dfade/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,dfade/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,dfade);
		
//		draw_set_font(Font2)
//		draw_text_transformed_color(x,y-199+2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x,y-199-2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x+2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,dfade);
		
//		draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,.5-dfade/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,.5-dfade/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,1-dfade);
	
	
//draw_set_font(Font2)
//draw_text_transformed_color(x,y-230+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x,y-230-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x+2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x-2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,1-dfade);
//draw_text_transformed_color(x,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,1-dfade);	
		
		
//		} else {
//			//image
//			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_white,slide);
//			draw_set_font(Font2)
//			//desc
//			if master.notice[selected,2] < master.notice[selected,3] {
//				//notmaxed
//draw_text_transformed_color(x,y-199+2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-199-2-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-2,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-199-(1-slide)*500,upgrades[selected,4],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
//			} else {
//				//maxed
//draw_text_transformed_color(x-3+10*(0.5 * sin(2 * pi*2 * time / 5)),-3+y-273-(1-slide)*500+10*(0.5 * sin(2 * pi/2 * time / 5)),upgrademax[selected],1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_blue,c_orange,c_yellow,c_green,slide/2)
//draw_text_transformed_color(x+3+10*(0.5 * sin(2 * pi * (time+90) / 5)),3+y-273-(1-slide)*500+10*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrademax[selected],1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1.05+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_red,c_aqua,c_lime,c_purple,slide/2)
//draw_text_transformed_color(x+3+(0.5 * sin(2 * pi * time / 5))*7.5,y-273-(1-slide)*500+3+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-3+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-273-(1-slide)*500-3+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+3+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-273-(1-slide)*500-3+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-3+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-273-(1-slide)*500+3+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrademax[selected],1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-273-(1-slide)*500,upgrademax[selected],.95+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);

				
//			}
			
//			//levels
//			if master.notice[selected,2] < master.notice[selected,3] {
//				//if not maxed
//			draw_set_font(Font5)
//draw_text_transformed_color(x-590,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590+8,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590-8,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590,y-418-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
//	draw_text_transformed_color(x-590,y-318+8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590,y-318-8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590+8,y-318-8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590-8,y-318+8-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590,y-318-(1-slide)*500,"MAX: "+string(obj_upgrademenu.upgrades[obj_upgrademenu.selected,2]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
//			} else {
//				//if  maxed
//				draw_set_font(Font5)
//draw_text_transformed_color(x-590,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590+8,y-418-8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590-8,y-418+8-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-590,y-418-(1-slide)*500,"LEVEL: "+string(upgrades[selected,1]),1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);

//			}
			
//			//name
			
//				//not maxed
//				if master.notice[selected,2] < master.notice[selected,3] {
//			draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-324-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-324-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-324-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-324-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-324-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-324-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-324-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
//				} else {
//					//maxed
//								draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-403-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-403-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-403-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-403-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-403-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-403-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-403-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
		
					
//				}
			
//			}


	
//} else {
//	draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_white,dfade);
//			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_black,1-dfade);
//draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,dfade/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,dfade/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,dfade);
	
//	draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2-dfade/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2-dfade/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-357-(1-slide)*500,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
	

//}

////if upgrades[selected,0] = 1 and master.passives[selected,2] = 1 {
////	//discovered
////	draw_set_font(Font5);
////draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2-dfade/2)
////draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-304-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2-dfade/2)
////draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
////draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
////draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-304-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
////draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-304-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
////draw_set_color(c_white)
////draw_text_transformed_color(x,y-304-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide-dfade);
	
	
////draw_set_font(Font2)
////draw_text_transformed_color(x,y-199+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
////draw_text_transformed_color(x,y-199-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
////draw_text_transformed_color(x+2,y-199-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
////draw_text_transformed_color(x-2,y-199-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
////draw_text_transformed_color(x,y-199-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
////}

//} else {
	
//	if master.notice[selected,0]=0 {
//	//locked and undiscovered
//	draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_black,slide);
//	draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-357-(1-slide)*500,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
	
	
//draw_set_font(Font2)
//draw_text_transformed_color(x,y-230+2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-230-2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
	
//} else {
//	//discovered
//	if master.notice[selected,0]=1 {
//		draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_dkgrey,dfade);
//			draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_black,slide-dfade);
//		draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2-dfade/2);
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2-dfade/2);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-357-(1-slide)*500,"???",(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length("???")/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide-dfade);
	
	
//draw_set_font(Font2)
//draw_text_transformed_color(x,y-230+2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x,y-230-2-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x+2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x-2,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide-dfade);
//draw_text_transformed_color(x,y-230-(1-slide)*500,"Discover this Upgrade\nto See its Effects",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide-dfade);
		
		
//	draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,dfade/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,dfade/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,dfade);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-357-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,dfade);
	
	
//draw_set_font(Font2)
//draw_text_transformed_color(x,y-230+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x,y-230-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x+2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x-2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,dfade);
//draw_text_transformed_color(x,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,dfade);
//	} else {
//		draw_sprite_ext(upgrades[selected,3],0,x,y-219-500*(1-slide),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),500/(max(sprite_get_width(upgrades[selected,3]),sprite_get_height(upgrades[selected,3]))),0,c_dkgrey,slide);
//			draw_set_font(Font5);
//draw_text_transformed_color(x-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi/2 * time / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_blue,c_orange,c_yellow,c_green,slide/2)
//draw_text_transformed_color(x+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y-357-(1-slide)*500+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_red,c_aqua,c_lime,c_purple,slide/2)
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * time / 5))*7.5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+90) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+5+(0.5 * sin(2 * pi * (time+180) / 7.5))*5,y-357-(1-slide)*500-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-5+(0.5 * sin(2 * pi * (time+270) / 7.5))*5,y-357-(1-slide)*500+5+(0.5 * sin(2 * pi * (time) / 7.5))*5,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_black,c_black,c_black,c_black,slide);
//draw_set_color(c_white)
//draw_text_transformed_color(x,y-357-(1-slide)*500,upgrades[selected,7],(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,(1.39-string_length(upgrades[selected,7])/50)+(0.5 * sin(2 * pi * time / 7.5) + 0.5)/7,0,c_white,c_white,c_white,c_white,slide);
	
	
//draw_set_font(Font2)
//draw_text_transformed_color(x,y-230+2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-230-2-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x+2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x-2,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_black,c_black,c_black,c_black,slide);
//draw_text_transformed_color(x,y-230-(1-slide)*500,"To Unlock this Upgrade, Reach\nLevel "+string(master.passives[selected,4])+" "+master.passives[selected,0]+" During any Game",1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,1+(0.5 * sin(2 * pi * time / 10) + 0.5)/10,0,c_white,c_white,c_white,c_white,slide);
		
//	}
//}
//}
}
}


//shop
if menuselect = 3 {
	
}



draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);

draw_set_font(Font4);
var shrink=0
var titlee = "UNLOCKS"
if menuselect=1 {
	titlee = "TASKS"
	draw_set_color(c_black)
	var taskcom="("+string(taskscomplete)+"/"+string(array_length(master.tasks))+")"
	draw_text_transformed(xx,y-325,taskcom,1.9+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15,0)

}

if menuselect=2 {
	titlee = "COLLECTION"
shrink=(1.35-gro)*3.14
}
if menuselect=3 {
	titlee = "SHOP"
}
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_font(Font5);
draw_text_transformed_color(xx-5+15*(0.5 * sin(2 * pi*2 * time / 5)),-2+y+14*shrink-575+15*(0.5 * sin(2 * pi/2 * time / 5)),titlee,2+(0.5 * sin(2 * pi * time / 5) + 0.5)/15-shrink,2-shrink+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,0,c_red,c_aqua,c_lime,c_purple,.5)
draw_text_transformed_color(xx+5+15*(0.5 * sin(2 * pi * (time+90) / 5)),5+y+14*shrink-575+15*(0.5 * sin(2 * pi*2 * (time+90) / 5)),titlee,2+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15-shrink,2-shrink+(0.5 * sin(2 * pi * time / 5) + 0.5)/15,0,c_blue,c_orange,c_yellow,c_green,.5)
draw_text_transformed_color(xx-6,y+14*shrink-575,titlee,1.98-shrink+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14,1.98+(0.5 * sin(1 * pi * time / 5) + 0.5)/14-shrink,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(xx,y+14*shrink-6-575,titlee,1.98-shrink+(0.5 * sin(2 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi * time / 5) + 0.5)/14-shrink,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(xx+6,y+14*shrink-575,titlee,1.98-shrink+(0.5 * sin(1 * pi * time / 5) + 0.5)/14,1.98+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/14-shrink,0,c_black,c_black,c_black,c_black,.9)
draw_text_transformed_color(xx,y+14*shrink-575,titlee,1.9-shrink+(0.5 * sin(2 * pi/2 * time / 5) + 0.5)/15,1.9+(0.5 * sin(2 * pi*2 * time / 5) + 0.5)/15-shrink,0,c_white,c_white,c_white,c_white,1)




