/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,bodyangle,col,1)
draw_sprite_ext(spr_shadow,0,x-6*facing,y,.58*facing,.72,rotatebody,c_white,.85);
draw_set_alpha(1)
for (i=0 ; i<round(((abs(facing-1)*room_width/2)+(facing*x))/110); i+=1) {
	if redcount[clamp(i,0,999999999)]=1 {
		if (oxy)>0 {
		draw_sprite_ext(master.characters[lookid,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_dkgrey,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
		}
		draw_sprite_ext(master.characters[lookid,12],round(anicount),x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y,6*scale*facing,6*scale,rotatebody,c_red,(1-(i/42)-clamp(master.revani/clamp(i,1,99),0,99))*trailalph*(1-alphafade))
		if (oxy)>0 {
		draw_sprite_ext(master.characters[lookid,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.4 * sin(2 * pi * (time) / (37/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.4 * sin(2 * pi * (time) / (38/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (39/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_dkgrey,(0.4 * sin(2 * pi * (time) / (40/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
		}
		
	
	} else {
		if (oxy)>0 {
		draw_sprite_ext(master.characters[lookid,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
		}
	draw_sprite_ext(master.characters[lookid,12],round(anicount),x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y,6*scale*facing,6*scale,rotatebody,c_cat,(1-(i/42)-clamp(master.revani/clamp(i,1,99),0,99))*trailalph*(1-alphafade))
	if (oxy)>0 {
		draw_sprite_ext(master.characters[lookid,12],round(anicount)+4,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (37/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+3,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.4 * sin(2 * pi * (time) / (38/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+2,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.4 * sin(2 * pi * (time) / (39/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
	draw_sprite_ext(master.characters[lookid,12],round(anicount)+1,x+(lengthdir_x(18*(i)*6*scale,rotatebody+180))*facing,-facing*lengthdir_y(18*(i)*6*scale,rotatebody+180)+y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7*((i+27)/25),6*scale*facing,5.9*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.4 * sin(2 * pi * (time) / (40/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,(1-alphafade)))*trailalph);
		}
	}
}
if redcount[0]=1{
	if (oxy)>0 {
	draw_sprite_ext(master.characters[lookid,11],round(anicount)+4,x+(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57 /(oxy*2+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+3,x+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+2,x-(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+1,x-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_ltgray,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	}
	draw_sprite_ext(master.characters[lookid,11],round(anicount),x,y,6*scale*facing,6*scale,rotatebody,c_red,1-alphafade)
	if (oxy)>0 {
	draw_sprite_ext(master.characters[lookid,11],round(anicount)+4,x+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60 /(oxy+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_maroon,(0.4 * sin(2 * pi * (time) / (37/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+3,x+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_black,(0.4 * sin(2 * pi * (time) / (38/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+2,x-(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (39/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+1,x-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_ltgray,(0.4 * sin(2 * pi * (time) / (40/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	}
} else {
	if (oxy)>0 {
	draw_sprite_ext(master.characters[lookid,11],round(anicount)+1,x+(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57 /(oxy*2+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (40/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+2,x+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.7 * sin(2 * pi * (time) / (39/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+3,x-(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.7 * sin(2 * pi * (time) / (38/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+4,x-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.7 * sin(2 * pi * (time) / (37/(oxy*2+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	}
	draw_sprite_ext(master.characters[lookid,11],round(anicount),x,y,6*scale*facing,6*scale,rotatebody,c_cat,1-alphafade)
	if (oxy)>0 {
	draw_sprite_ext(master.characters[lookid,11],round(anicount)+4,x+(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (60 /(oxy+1))) + 0.9)*((9+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (37/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+3,x+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.4 * sin(2 * pi * (time) / (38/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+2,x-(0.5 * sin(2 * pi * (time) / 45) + 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.4 * sin(2 * pi * (time) / (39/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
draw_sprite_ext(master.characters[lookid,11],round(anicount)+1,x-(0.5 * sin(2 * pi * (time) / 60) + 0.5)*13*((oxy+7))/7,y-(0.5 * sin(2 * pi * (time) / 15) + 0.5)*13*((oxy+7))/7,6*scale*facing*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),6*scale*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.4 * sin(2 * pi * (time) / (40/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	}
	
}

if redcount[0]=1{
	
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing,y+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20*scale,4*scale*50*facing/sprite_get_height(master.characters[lookid,10]),3*scale*50/sprite_get_height(master.characters[lookid,10]),rotatebody,c_red,1-alphafade)
} else {
	if (oxy)>0 {
		draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (57/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.7 * sin(2 * pi * (time) / (40/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (58/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.7 * sin(2 * pi * (time) / (39/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (59/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.7 * sin(2 * pi * (time) / (38/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,3*scale*facing*(0.2 * sin(2 * pi * (time) / (60/(oxy*2+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.7 * sin(2 * pi * (time) / (37/(oxy+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
		}
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing,y+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*20*scale,4*scale*50*facing/sprite_get_height(master.characters[lookid,10]),3*scale*50/sprite_get_height(master.characters[lookid,10]),rotatebody,c_cat,1-alphafade)
	if (oxy)>0 {
		draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_red,(0.4 * sin(2 * pi * (time) / (37/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_green,(0.4 * sin(2 * pi * (time) / (38/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 45) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 30) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (58/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (59/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_yellow,(0.4 * sin(2 * pi * (time) / (39/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
	draw_sprite_ext(master.characters[lookid,10],0,x+(8*scale+(0.5 * sin(2 * pi * round(anicount) / 5) + 0.5)*5*scale)*facing+(0.5 * sin(2 * pi * (time) / 60) - 0.5)*13*((oxy+7))/7,y+(0.5 * sin(2 * pi * (time) / 15) - 0.5)*13*((oxy+7))/7,3*scale*facing*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (57/(oxy+1))) + 0.9)*((8+(oxy+1))/9),3*scale*50/sprite_get_height(master.characters[lookid,10])*(0.2 * sin(2 * pi * (time) / (60/(oxy+1))) + 0.9)*((8+(oxy+1))/9),rotatebody,c_blue,(0.4 * sin(2 * pi * (time) / (40/(oxy*+1))) + 0.0)*(clamp(power(oxy/5,.3),0,1-alphafade)));
		}
	}







if dead=0 {
	var e = 2.71828; // Base of the natural logarithm
    var k = 10000;
    var a = -100 / (logn(e, k + 1000) - logn(e, k + 1000000))
    var b = 100 * logn(e, k + 1000) / (logn(e, k + 1000) - logn(e, k + 1000000))
	var barw = (a * logn(e, y + k) + b)*2
draw_healthbar(x-150-barw,y-280-barw/10,x+150+barw,y-220+barw/10,100*healthh/maxhealth,c_black,c_red,c_lime,0,1,1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(Font1)
draw_set_alpha(1)
draw_set_color(c_black)
draw_text(x+2,y-250+2,string(ceil(healthh))+"/"+string(maxhealth))
draw_text(x-2,y-250+2,string(ceil(healthh))+"/"+string(maxhealth))
draw_text(x+2,y-250-2,string(ceil(healthh))+"/"+string(maxhealth))
draw_text(x-2,y-250-2,string(ceil(healthh))+"/"+string(maxhealth))
draw_set_color(c_white)
draw_text(x,y-250,string(ceil(healthh))+"/"+string(maxhealth))
}
//draw_set_alpha(1);
//draw_set_color(c_white);
//draw_text(x,y-100,string(movetype));