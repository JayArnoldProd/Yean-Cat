///Draw Event of yeancat
if instance_exists(obj_achievments) {
	if obj_achievments.page=1 {
		exit
	}
}

draw_set_alpha(sqr(breakheart)/2)
draw_sprite_ext(spr_shadow,0,x-6*facing,y,.58*facing,.72,rotatebody,c_white,.85);
draw_circle_color(x,y,breakheart*(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)),c_red,c_maroon,0)
draw_set_alpha(1)
draw_circle_color(x,y,breakheart*(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)),c_black,c_black,true)
for (i=0 ; i<round(((abs(facing-1)*room_width/2)+(facing*x))/110); i+=1) {
	
	if redcount[clamp(i,0,51)]=1 {
		if (oxy)>0 {
		draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_dkgrey,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
		}
		draw_sprite_ext(master.characters[master.charselect,12],round(anicount),x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y,6*scale*facing,6*scale,rotatebody,c_red,(1-(i/42)-clamp(master.revani/clamp(i,1,99),0,99))*trailalph)
		if (oxy)>0 {
		draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.4 * sin(2 * pi * (time) / (37/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.4 * sin(2 * pi * (time) / (38/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (39/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_dkgrey,(0.4 * sin(2 * pi * (time) / (40/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
		}
		
	
	} else {
		if (oxy)>0 {
		draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
		}
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount),x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y,6*scale*facing,6*scale,rotatebody,c_cat,(1-(i/42)-clamp(master.revani/clamp(i,1,99),0,99))*trailalph)
	if (oxy)>0 {
		draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (37/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.4 * sin(2 * pi * (time) / (38/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.4 * sin(2 * pi * (time) / (39/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
	draw_sprite_ext(master.characters[master.charselect,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.4 * sin(2 * pi * (time) / (40/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-master.revani)))*trailalph);
		}
	}
}
if redcount[0]=1{
	if (oxy)>0 {
	
	draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+4,x+(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57 /(oxy*2+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+3,x+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+2,x-(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+1,x-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_ltgray,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	}
	draw_sprite_ext(master.characters[master.charselect,11],round(anicount),x,y,6*scale*facing,6*scale,rotatebody,c_red,1-master.revani)
	if (oxy)>0 {
	draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+4,x+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60 /(oxy+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.4 * sin(2 * pi * (time) / (37/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+3,x+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.4 * sin(2 * pi * (time) / (38/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+2,x-(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (39/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+1,x-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_ltgray,(0.4 * sin(2 * pi * (time) / (40/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	}
} else {
	if (oxy)>0 {
	draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+1,x+(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57 /(oxy*2+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+2,x+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+3,x-(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+4,x-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	}
	draw_sprite_ext(master.characters[master.charselect,11],round(anicount),x,y,6*scale*facing,6*scale,rotatebody,c_cat,1-master.revani)
	
	if (oxy)>0 {
	draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+4,x+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60 /(oxy+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (37/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+3,x+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.4 * sin(2 * pi * (time) / (38/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+2,x-(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.4 * sin(2 * pi * (time) / (39/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
draw_sprite_ext(master.characters[master.charselect,11],round(anicount)+1,x-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.4 * sin(2 * pi * (time) / (40/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	}
	
}

if redcount[0]=1{
	
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing,y+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20*scale,4*scale*50*facing/sprite_get_height(master.characters[master.charselect,10]),3*scale*50/sprite_get_height(master.characters[master.charselect,10]),rotatebody,c_red,1-master.revani)
} else {
	if (oxy)>0 {
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (57/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (40/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.7 * sin(2 * pi * (time) / (39/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.7 * sin(2 * pi * (time) / (38/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.7 * sin(2 * pi * (time) / (37/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
		}
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing,y+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20*scale,4*scale*50*facing/sprite_get_height(master.characters[master.charselect,10]),3*scale*50/sprite_get_height(master.characters[master.charselect,10]),rotatebody,c_cat,1-master.revani)
	if (oxy)>0 {
		draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (37/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.4 * sin(2 * pi * (time) / (38/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.4 * sin(2 * pi * (time) / (39/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
	draw_sprite_ext(master.characters[master.charselect,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[master.charselect,10])*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.4 * sin(2 * pi * (time) / (40/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-master.revani)));
		}
	}
if shade = 1 {
	var xofff=48-sprite_get_xoffset(master.characters[master.charselect,10])
	var yofff=85-sprite_get_yoffset(master.characters[master.charselect,10])
draw_sprite_ext(spr_shades,0,x+xofff+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing,y+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20*scale+yofff,4*scale*facing,3*scale,rotatebody,c_cat,1-master.revani)
}

if def>0 {
	draw_sprite_ext(spr_ak,0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing,y+40+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*10*scale,2*scale*facing,2*scale,gunrot,c_cat,1-master.revani)
}

draw_set_alpha(breakheart/5)
draw_circle_color(x,y,.99*breakheart*(100*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)),c_red,c_black,0)
draw_set_alpha(1)
draw_circle_color(x,y,breakheart*(101*master.range*(1+(.05*master.passives[10,3])*master.einstein+master.lheartbreak)),c_black,c_black,true)

if master.characters[master.charselect,0]=0 {
	draw_sprite_ext(spr_lock,0,x,y,.7*((0.5 * sin(2 * pi * (time) / 15) + 0.5)/10+1),.7*((0.5 * sin(2 * pi * (time) / 15) + 0.5)/10+1),rotatebody,c_dkgray,1)
	draw_sprite_ext(spr_lock,1,x,y,.7*((0.5 * sin(2 * pi * (time) / 15) + 0.5)/10+1),.7*((0.5 * sin(2 * pi * (time) / 15) + 0.5)/10+1),rotatebody,c_dkgray,1)
}


if master.devmode=1 {
	if keyboard_check(vk_shift) {
		exit
	}
}
	
	if master.devmode=1 and keyboard_check(vk_space) {//draws some debugging information when in dev mode
		draw_set_alpha(1);
	draw_set_color(c_white);
	draw_line(room_width/2+(1-centerfade/500)*1920*.75*5*master.camscale/8,0,room_width/2+(1-centerfade/500)*1920*.75*5*master.camscale/8,room_height)//visual of line where player moves world around them
draw_line(room_width/2-(1-centerfade/500)*1920*.75*5*master.camscale/8,0,room_width/2-(1-centerfade/500)*1920*.75*5*master.camscale/8,room_height)
	draw_set_font(Font4);
	draw_text(room_width/2-400,room_height/2-250,"sysposis: "+string(obj_terrain.systemposition))
	draw_text(room_width/2-400,room_height/2-200,"Speed: "+string(master.speedd))
	draw_text(room_width/2-400,room_height/2-150,"Alt:"+string(obj_terrain.playeraltitude))
	draw_text(room_width/2-400,room_height/2-100,"RISING: "+string(rising))
	draw_text(room_width/2-400,room_height/2-50,"HSPEED: "+string(_hspeed))
	draw_text(room_width/2-400,room_height/2,"VSPEED: "+string(_vspeed))
	draw_text(room_width/2+400,room_height/2-250,"DEF: "+string(def))
	draw_text(room_width/2+400,room_height/2-200,"HORZ: "+string(master.horz))
	draw_text(room_width/2+520,room_height/2-200,"VERT: "+string(master.vert))
	draw_text(room_width/2+400,room_height/2-150,"playerpos: "+string(obj_terrain.playerpos))
	draw_text(room_width/2+400,room_height/2-100,"movingg: "+string(movingg))
	draw_text(room_width/2+400,room_height/2-50,"planet: "+string(obj_terrain.planet))
	draw_text(room_width/2+400,room_height/2,"heightag:"+string(obj_terrain.player_height_fromground))
	draw_text(room_width/2+400,room_height/2+50,"permissions: "+string(master.permissions))
	draw_text(room_width/2+400,room_height/2+100,"BPM Target:"+string(global.target_bpm))
	draw_text(room_width/2+400,room_height/2+150,"BPM"+string(global.current_bpm))
	draw_text(room_width/2-400,room_height/2+50,"BPM Duration"+string(global.pitch_duration))
	draw_text(room_width/2-400,room_height/2+100,"FPS: "+string(fps))
	draw_text(room_width/2-400,room_height/2+150,"room_speed: "+string(global.room_speed_set))
	draw_text(room_width/2-400,room_height/2+200,"fps:"+string(fps_real))
	draw_text(room_width/2-400,room_height/2+250,"music loop"+string(master.loop))
	draw_text(room_width/2+200,room_height/2+200,"aspeed:"+string(master.aspeed))
	draw_text(room_width/2+200,room_height/2+250,"instancecount"+string(instance_count))
	}
//////joystick for phones (simulated joystick)
if master.joystickon=1 {
	
	draw_sprite_ext(spr_joystick,0,master.joystickx,master.joysticky,master.joysticksize*master.camscale,master.joysticksize*master.camscale,rotatebody,c_white,.75);
	draw_sprite_ext(spr_joystick,0,master.joystickx+lengthdir_x(master.joydist*9/12,master.joyangle)*master.camscale*master.joysticksize,master.joysticky+lengthdir_y(master.joydist*9/12,master.joyangle)*master.camscale*master.joysticksize,master.joysticksize*master.camscale/3,master.joysticksize*master.camscale/3,rotatebody,c_white,1);
	
}