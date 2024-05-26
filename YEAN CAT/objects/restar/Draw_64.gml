/// @description Insert description here
// You can write your code in this editor
if page=0 {
draw_set_alpha(1-ddcount/10);
var alph=1-ddcount/10
dcount=ddcount
lcount=dlcount
var gwidth = display_get_gui_width()/2
var gheight = display_get_gui_height()/2
	//var gheight = display_get_gui_height()
draw_set_font(Font5)
	for (i=0; i<array_length(master.lockwep); i++) {
		if master.lockwep[i]!=master.weapons[i,13] {
		draw_sprite_ext(spr_barslot,0,((lcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((lcount)/2)*107)+200,.9+.11*(clamp(1/sqr(1+abs(lcount-uwav)),0,1)),.9+.11*(clamp(1/sqr(1+abs(lcount-uwav)),0,1)),0,c_white,alph);
		draw_sprite_ext(master.weapons[i,11],0,((lcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((lcount)/2)*107)*1+200,(.9+.11*(clamp(1/sqr(1+abs((lcount+1)-uwav)),0,1)))*100/(max(sprite_get_width(master.weapons[i,11]),sprite_get_height(master.weapons[i,11]))),(.9+.11*(clamp(1/sqr(1+abs((lcount+1)-uwav)),0,1)))*100/(max(sprite_get_width(master.weapons[i,11]),sprite_get_height(master.weapons[i,11]))),0,c_white,alph);
		//draw_set_halign(fa_center)
		//draw_set_valign(fa_middle)
		//draw_set_color(c_black)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33+3,(50+floor((lcount)/2)*107)+200-3,"UNLOCKED",.5,.5,0)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33-3,(50+floor((lcount)/2)*107)+200-3,"UNLOCKED",.5,.5,0)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33+3,(50+floor((lcount)/2)*107)+200+3,"UNLOCKED",.5,.5,0)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33-3,(50+floor((lcount)/2)*107)+200+3,"UNLOCKED",.5,.5,0)
		//draw_set_color(c_white)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33,(50+floor((lcount)/2)*107)+200,"UNLOCKED",.5,.5,0)
		
		lcount+=1
	}
	}

	for (i=0; i<array_length(master.lockpas); i++) {
			if master.lockpas[i]!=clamp(master.notice[i,1],0,1) {
				draw_sprite_ext(spr_barslot,0,((lcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((lcount)/2)*107)+200,.9+.11*(clamp(1/sqr(1+abs(lcount-uwav)),0,1)),.9+.11*(clamp(1/sqr(1+abs(lcount-uwav)),0,1)),0,c_white,alph);
		draw_sprite_ext(master.passives[i,5],0,((lcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((lcount)/2)*107)*1+200,(.9+.11*(clamp(1/sqr(1+abs((lcount+1)-uwav)),0,1)))*100/(max(sprite_get_width(master.passives[i,5]),sprite_get_height(master.passives[i,5]))),(.9+.11*(clamp(1/sqr(1+abs((lcount+1)-uwav)),0,1)))*100/(max(sprite_get_width(master.passives[i,5]),sprite_get_height(master.passives[i,5]))),0,c_white,alph);
		//draw_set_halign(fa_center)
		//draw_set_valign(fa_middle)
		//draw_set_color(c_black)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33+3,(50+floor((lcount)/2)*107)+200+3,"UNLOCKED",.5,.5,0)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33-3,(50+floor((lcount)/2)*107)+200+3,"UNLOCKED",.5,.5,0)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33+3,(50+floor((lcount)/2)*107)+200-3,"UNLOCKED",.5,.5,0)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33-3,(50+floor((lcount)/2)*107)+200-3,"UNLOCKED",.5,.5,0)
		//draw_set_color(c_white)
		//draw_text_transformed(((lcount) % 2)*(gwidth)/6.2+gwidth/8+33,(50+floor((lcount)/2)*107)+200,"UNLOCKED",.5,.5,0)
		
		lcount+=1
	}
	}
	if clamp(lcount-dlcount,0,lcount)>0 {
			draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_color(c_black)
		draw_text_transformed(gwidth/8+89+3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20+3,"UNLOCKED",.5,.5,0)
		draw_text_transformed(gwidth/8+89-3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20+3,"UNLOCKED",.5,.5,0)
		draw_text_transformed(gwidth/8+89+3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20-3,"UNLOCKED",.5,.5,0)
		draw_text_transformed(gwidth/8+89-3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20-3,"UNLOCKED",.5,.5,0)
		draw_set_color(c_white)
		draw_text_transformed(gwidth/8+89,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20,"UNLOCKED",.5,.5,0)

		for (i=0; i<array_length(master.diswep); i++) {
	if master.diswep[i]!=master.weapons[i,3] {
		draw_sprite_ext(spr_barslot,0,gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)+200,1,1,0,c_white,alph);
		draw_sprite_ext(master.weapons[i,11],0,gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)*1+200,1*100/(max(sprite_get_width(master.weapons[i,11]),sprite_get_height(master.weapons[i,11]))),1*100/(max(sprite_get_width(master.weapons[i,11]),sprite_get_height(master.weapons[i,11]))),0,c_white,alph);
		//draw_set_halign(fa_center)
		//draw_set_valign(fa_middle)
		//draw_set_color(c_black)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34+3,(50+floor((dcount)/2)*107)+200+3,"DISCOVERED",.5,.5,0)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34-3,(50+floor((dcount)/2)*107)+200+3,"DISCOVERED",.5,.5,0)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34+3,(50+floor((dcount)/2)*107)+200-3,"DISCOVERED",.5,.5,0)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34-3,(50+floor((dcount)/2)*107)+200-3,"DISCOVERED",.5,.5,0)
		//draw_set_color(c_white)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34,(50+floor((dcount)/2)*107)+200,"DISCOVERED",.5,.5,0)
		
		dcount+=1
	}
	
	}
	for (i=0; i<array_length(master.dispas); i++) {
	if master.dispas[i]!=clamp(master.notice[i,0],0,1) {
				draw_sprite_ext(spr_barslot,0,gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+43,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)+200,(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1))),(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1))),0,c_white,alph);
		draw_sprite_ext(master.passives[i,5],0,gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+43,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)*1+200,(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)))*100/(max(sprite_get_width(master.passives[i,5]),sprite_get_height(master.passives[i,5]))),(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)))*100/(max(sprite_get_width(master.passives[i,5]),sprite_get_height(master.passives[i,5]))),0,c_white,alph);

		dcount+=1
	}

	}
	if clamp(dcount-ddcount,0,dcount)>0 {
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_color(c_black)
		draw_text_transformed(gwidth*2-2*gwidth/8-4+3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20+3,"DISCOVERED",.5,.5,0)
		draw_text_transformed(gwidth*2-2*gwidth/8-4-3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20+3,"DISCOVERED",.5,.5,0)
		draw_text_transformed(gwidth*2-2*gwidth/8-4+3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20-3,"DISCOVERED",.5,.5,0)
		draw_text_transformed(gwidth*2-2*gwidth/8-4-3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20-3,"DISCOVERED",.5,.5,0)
		draw_set_color(c_white)
		draw_text_transformed(gwidth*2-2*gwidth/8-4,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20,"DISCOVERED",.5,.5,0)
		
			for (i=0; i<array_length(master.disite); i++) {
	if master.disite[i]!=master.items[i,3] {
		dcount+=1
	}
	}
	}
	} else {
				for (i=0; i<array_length(master.diswep); i++) {
	if master.diswep[i]!=master.weapons[i,3] {
		draw_sprite_ext(spr_barslot,0,((dcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)+200,(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1))),(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1))),0,c_white,alph);
		draw_sprite_ext(master.weapons[i,11],0,((dcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)+200,(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)))*100/(max(sprite_get_width(master.weapons[i,11]),sprite_get_height(master.weapons[i,11]))),(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)))*100/(max(sprite_get_width(master.weapons[i,11]),sprite_get_height(master.weapons[i,11]))),0,c_white,alph);
		//draw_set_halign(fa_center)
		//draw_set_valign(fa_middle)
		//draw_set_color(c_black)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34+3,(50+floor((dcount)/2)*107)+200+3,"DISCOVERED",.5,.5,0)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34-3,(50+floor((dcount)/2)*107)+200+3,"DISCOVERED",.5,.5,0)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34+3,(50+floor((dcount)/2)*107)+200-3,"DISCOVERED",.5,.5,0)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34-3,(50+floor((dcount)/2)*107)+200-3,"DISCOVERED",.5,.5,0)
		//draw_set_color(c_white)
		//draw_text_transformed(gwidth*2-((dcount) % 2)*(gwidth)/6.2-2*gwidth/8+34,(50+floor((dcount)/2)*107)+200,"DISCOVERED",.5,.5,0)
		
		dcount+=1
	}
	
	}
	for (i=0; i<array_length(master.dispas); i++) {
	if master.dispas[i]!=clamp(master.notice[i,0],0,1) {
				draw_sprite_ext(spr_barslot,0,((dcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)+200,(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1))),.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)),0,c_white,alph);
		draw_sprite_ext(master.passives[i,5],0,((dcount) % 2)*(gwidth)/6.2+gwidth/8+39,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+(50+floor((dcount)/2)*107)*1+200,(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)))*100/(max(sprite_get_width(master.passives[i,5]),sprite_get_height(master.passives[i,5]))),(.9+.11*(clamp(1/sqr(1+abs((dcount+1)-dwav)),0,1)))*100/(max(sprite_get_width(master.passives[i,5]),sprite_get_height(master.passives[i,5]))),0,c_white,alph);

		dcount+=1
	}

	}
	if clamp(dcount-ddcount,0,dcount)>0 {
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_color(c_black)
		draw_text_transformed(gwidth/8+89+3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20+3,"DISCOVERED",.5,.5,0)
		draw_text_transformed(gwidth/8+89-3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20+3,"DISCOVERED",.5,.5,0)
		draw_text_transformed(gwidth/8+89+3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20-3,"DISCOVERED",.5,.5,0)
		draw_text_transformed(gwidth/8+89-3,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20-3,"DISCOVERED",.5,.5,0)
		draw_set_color(c_white)
		draw_text_transformed(gwidth/8+89,-(clamp((-falling)+1,0,1))*139*(stretchy-1)-45+gheight-223-ddcount*20,"DISCOVERED",.5,.5,0)
		
			for (i=0; i<array_length(master.disite); i++) {
	if master.disite[i]!=master.items[i,3] {
		dcount+=1
	}
	}
	}
	}
	
	dco=clamp(dcount-ddcount,0,dcount)
	uco=clamp(lcount-dlcount,0,lcount)
	}
	//draw_set_color(c_black)
	//draw_set_alpha(1)
	//draw_text(500,500,string(deet));
	
	if instance_exists(yeancat) {
		if movecat=2 {
		draw_set_alpha(clamp((room_height/2-y)/700,0,1))
		draw_set_color(c_black)
		draw_rectangle(0,0,room_width/2,room_height/2,0)
		}
	}