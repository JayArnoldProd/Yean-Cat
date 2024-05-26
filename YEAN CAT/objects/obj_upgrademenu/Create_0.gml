

/// @description Insert description here
// You can write your code in this editor
totalgrade=0;
alp=0
myEmitter=audio_emitter_create()
col=c_white
onscreen=-1
checkcount=1
image_speed=0
einstein=master.einstein
leinstein=master.leinstein
time=0

image_xscale=2.2
image_yscale=1.8



leinstein=1+.02*master.notice[26,2]
//	lluck=1+.05*master.notice[0,2]*leinstein
//	lchampion=.05*master.notice[1,2]*leinstein*lluck
	
	
	
//	lcurse=.05*master.notice[2,2]*leinstein
//	lresist=1+.05*master.notice[4,2]*leinstein
//	lfaith=.02*master.notice[5,2]*leinstein
//	lrange=1+.1*master.notice[6,2]*leinstein
//	lfreewill=1+.05*master.notice[7,2]*leinstein
//	lgraduate=1+.05*master.notice[8,2]*leinstein
//	lheart=round(1*master.notice[9,2]*leinstein)
//	lheartbreak=.02*master.notice[10,2]*leinstein
//	lattract=1+.05*master.notice[11,2]*leinstein
//	lrate=1+.05*master.notice[12,2]*leinstein
//	lduration=1+.05*master.notice[13,2]*leinstein
//	llove=5*master.notice[14,2]*leinstein
//	lrevives=1*master.notice[16,2]
//	lcrit=.02*master.notice[17,2]*leinstein
//	ldamage=1+.1*master.notice[18,2]*leinstein
//	lsize=1+.1*master.notice[20,2]*leinstein
//	lwealth=1+.05*master.notice[21,2]*leinstein
//	lwisdom=.05*master.notice[22,2]*leinstein
//	lspeed=1+.1*master.notice[23,2]*leinstein
//	lclone=1*master.notice[24,2]
//	lvanish=1+.05*master.notice[25,2]*leinstein


//heartbreak
//(.02*passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage)
//((.02*passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2]+1)*leinstein*master.ldamage)-(.02*passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))
//CHAMPION

//(1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2]+1)*leinstein*master.lluck))))*100
//((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2]+1)*leinstein*master.lluck))))-(1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck)))))*100
////curse
//((1+.05*(master.notice[2,2]+1)*leinstein+1)*(1+.05*master.passives[2,3])*einstein-1)
//(((1+.05*(master.notice[2,2]+1)*leinstein+1)*(1+.05*master.passives[2,3])*einstein-1)-((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3])*einstein-1))*100
////ego
//(1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2]+1)*leinstein)))*100
//((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2]+1)*leinstein)))-((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))))*100
////fait
//(((1+.02*(master.notice[5,2]+1)*leinstein)*(1+.02*master.passives[6,3])*einstein)-1)*100
//((((1+.02*(master.notice[5,2]+1)*leinstein)*(1+.02*master.passives[6,3])*einstein)-1)-(((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[6,3])*einstein)-1))*100
////fame
//((1+.1*(master.notice[6,2]+1)*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)*100
//(((1+.1*(master.notice[6,2]+1)*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)-((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1))*100
////frewill-1
//((.05*(master.notice[7,2]+1)*leinstein)+(.05*master.passives[7,3])*einstein)*100
//(((.05*(master.notice[7,2]+1)*leinstein)+(.05*master.passives[7,3])*einstein)-((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein))*100
////graduate
//((1+.05*(master.notice[8,2]+1)*leinstein)*(1+.05*master.passives[8,3])*einstein-1)*100
//(((1+.05*(master.notice[8,2]+1)*leinstein)*(1+.05*master.passives[8,3])*einstein-1)-((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1))*100
////attractor
//((1+.05*(master.notice[11,2]+1)*leinstein)*(1+(.1*(master.passives[11,3]))*range*einstein)-1)*100
//(((1+.05*(master.notice[11,2]+1)*leinstein)*(1+(.1*(master.passives[11,3]))*range*einstein)-1)-((1+.05*(master.notice[11,2])*leinstein)*(1+(.1*(master.passives[11,3]))*range*einstein)-1))*100
////rate100?
//((1+.05*(master.notice[12,2]+1)*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)*100
//(((1+.05*(master.notice[12,2]+1)*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)-((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1))*100
////longevity
//((1+.05*(master.notice[13,2]+1)*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)*100
//(((1+.05*(master.notice[13,2]+1)*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)-((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1))*100
////crit
//(1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2]+1)*leinstein))-1)*100
//((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2]+1)*leinstein))-1)-(1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein))-1))*100
////power
//((1+.1*(master.notice[18,2]+1)*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)*100
//(((1+.1*(master.notice[18,2]+1)*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)-((1+.1*master.notice[18,2]*leinstein)*(1+(.1*passives[18,3])*einstein)-1))*100


////size
//	lsize=
//((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3]+1,0,99999),.70)*einstein))-1)*100;//spectacle
//(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3]+1,0,99999),.70)*einstein)))-(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3],0,99999),.70)*einstein)))))*100
//((1+.1*(master.notice[20,2]+1)*leinstein)*(1+(.1*master.passives[20,3])*einstein)-1)*100
//(((1+.1*(master.notice[20,2]+1)*leinstein)*(1+(.1*master.passives[20,3])*einstein)-1)-((1+.1*(master.notice[20,2])*leinstein)*(1+(.1*passives[20,3])*einstein)-1))*100
////wisdom
//	((1+.05*(master.notice[22,2]+1)*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)*100
//	(((1+.05*(master.notice[22,2]+1)*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)-((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*passives[22,3])*einstein)-1))*100
////attack rate
//	((1+.1*(master.notice[23,2]+1)*leinstein)*(1+(.1*master.passives[23,3])*einstein)-1)*100
//	(((1+.1*(master.notice[23,2]+1)*leinstein)*(1+(.1*master.passives[23,3])*einstein)-1)-((1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein)-1))*100
//	//wealth
//	(((1+.05*(master.notice[21,2]+1)*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)*100
//	((((1+.05*(master.notice[21,2]+1)*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)-((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein-1))*100
////	luck
//((1+.05*(master.notice[0,2]+1)*leinstein)*(1+(.05*passives[0,3])*einstein)-1)*100
//(((1+.05*(master.notice[0,2]+1)*leinstein)*(1+(.05*passives[0,3])*einstein)-1)-((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*passives[0,3])*einstein)-1))*100
//attact
	//(1+.1*(master.notice[11,2]+1)*leinstein*master.lrange)+((.05*(master.passives[11,3]))*master.range*einstein)*100
	//((1+.1*(master.notice[11,2]+1)*leinstein)*(1+(.1*(master.passives[11,3]))*master.range*einstein)-(1+.1*master.notice[11,2]*leinstein)*(1+(.1*(master.passives[11,3]))*master.range*einstein))*100
////projectilespeed
//(1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein)
//((1+.1*(master.notice[23,2]+1)*leinstein)*(1+(.1*master.passives[23,3])*einstein)-(1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein))*100
//love


//heart
//floor((clamp(passives[9,3],0,1)+clamp(passives[9,3]-4,0,10000))*einstein+(.5*master.notice[9,2]*leinstein))
//(floor((clamp(passives[9,3],0,1)+clamp(passives[9,3]-4,0,10000))*einstein+(.5*(master.notice[9,2]+1)*leinstein))-floor((clamp(passives[9,3],0,1)+clamp(passives[9,3]-4,0,10000))*einstein+(.5*master.notice[9,2]*leinstein)))


if master.passives[26,3] > 0 {
	einstein=1+(.02*passives[26,3]);
	}
//	damage=ldamage*(1+(.1*passives[18,3])*einstein); //power
//	luck=lluck*(1+(.05*passives[0,3])*einstein); //bound2fortune
//	attackrate=lrate*(1+(.1*passives[12,3])*einstein);
//	range=lrange*(1+(.1*passives[6,3])*einstein);//fame area of effect
//	projectilespeed=lspeed*(1+(.1*passives[23,3])*einstein); //wonder
//	projectilesize=lsize*(1+(.1*passives[20,3])*einstein);//spectacle
//	criticalchance=(1-(1/(1+.02*passives[17,3])*luck*einstein)/(1+lcrit)); //monster
//	duration=lduration*(1+(.1*passives[13,3])*einstein);//longevity
//	attraction=lattract*(1+(.1*(passives[11,3]))*range*einstein);
//	magnet=100*attraction
	
//	mercy=(passives[15,3]); //half damage
//	resistance=1-((1-(.05*passives[4,3]*einstein))/lresist);//0none 1=invincible
//	curse=(lcurse+1)*(.05*passives[2,3])*einstein
//	freewill=.05*lfreewill*leinstein+(.05*passives[7,3])*einstein
//	faith=lfaith+(.02*passives[6,3])*einstein; //heal damage dealt
//	love=0; //max health
//	if passives[14,3]<5 {
//		love=round((5*passives[14,3])*einstein)+llove
//	} else {
//		love=round((20+10*(passives[14,3]-4))*einstein)+llove
//	}
//	if instance_exists(yeancat) {
//		yeancat.maxhealth=10+love
//	} 
//	heart=(clamp(passives[9,3],0,1)+clamp(passives[9,3]-4,0,10000))*einstein+lheart; //heal per second
//	heartseconds=(5-clamp(passives[9,3],0,4))
//	heartbreak=(.05*passives[10,3])*einstein*damage+lheartbreak; //retalitory damage
//	revives=passives[16,3]+lrevives; //miracle
//	wealth=(lwealth)*(1+.05*passives[21,3])*einstein //1=normal 2= twice as frequent
//	champion=(1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+lchampion))*100//chance to dodge
//	graduate=lgraduate*(1+.05*passives[8,3])*einstein; //xp mult
//	wisdom=lwisdom+passives[22,3]*.05*einstein
//	clone=floor(passives[24,3]*einstein)+lclone
//	vanish=1-((1-(.05*passives[25,3]*einstein))/lvanish)

//dondas blessing
//((master.notice[3,2]+1)*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)
//(((master.notice[3,2]+1)*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)-(master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein))

//0discovered:0no1yes,2YES  1unlocked: 0no, 1yes, 2,YES, 2level,3levelcap
//0unlocked? ,1level, 2levelcap ,3image ,4text, 5corresponding passive, 6exists,7 name, 8 discovered
upgrades=[
[clamp(master.notice[0,1]-1,0,1),master.notice[0,2],master.notice[0,3],master.passives[0,5],"+"+string((((1+.05*(master.notice[0,2]+1)*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1)-((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1))*100)+"% Luck\n("+string(((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1)*100)+"%)",0,1,"Luck",master.notice[0,0]],
[clamp(master.notice[1,1]-1,0,1),master.notice[1,2],master.notice[1,3],master.passives[1,5],"+"+string(((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2]+1)*leinstein*master.lluck))))-(1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck)))))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100)+"%)",1,1,"Champion",master.notice[1,0]],
[clamp(master.notice[2,1]-1,0,1),master.notice[2,2],master.notice[2,3],master.passives[2,5],"+"+string((((1+.05*(master.notice[2,2]+1)*leinstein)*(1+.05*master.passives[2,3]*einstein))-((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3]*einstein)))*100)+"% Enemy Health, Quantity, & Speed\n("+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3]*einstein))-1)*100)+"%)",2,1,"Curse",master.notice[2,0]],
[clamp(master.notice[3,1]-1,0,1),master.notice[3,2],master.notice[3,3],master.passives[3,5],"Deal +"+string((((master.notice[3,2]+1)*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)-(master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)))+"% Damage\nWhen below half Health\n("+string(((master.notice[3,2])*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein))+"%)",3,0,master.passives[0,3],master.notice[3,0]],
[clamp(master.notice[4,1]-1,0,1),master.notice[4,2],master.notice[4,3],master.passives[4,5],"+"+string(((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2]+1)*leinstein)))-((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))*100)+"%)",4,1,master.passives[4,0],master.notice[4,0]],
[clamp(master.notice[5,1]-1,0,1),master.notice[5,2],master.notice[5,3],master.passives[5,5],"Heal "+string(((((1+.02*(master.notice[5,2]+1)*leinstein)*(1+.02*master.passives[5,3])*einstein)-1)-(((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1))*100)+"% of Damage Dealt\n("+string((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1)*100)+"%)",5,1,master.passives[5,0],master.notice[5,0]],
[clamp(master.notice[6,1]-1,0,1),master.notice[6,2],master.notice[6,3],master.passives[6,5],"+"+string((((1+.1*(master.notice[6,2]+1)*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)-((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1))*100)+"% Weapon & Ability Range\n("+string(((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)*100)+"%)",6,1,master.passives[6,0],master.notice[6,0]],
[clamp(master.notice[7,1]-1,0,1),master.notice[7,2],master.notice[7,3],master.passives[7,5],"+"+string((((.05*(master.notice[7,2]+1)*leinstein)+(.05*master.passives[7,3])*einstein)-((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein))*100)+"% Movement\nSpeed & Handling ("+string(((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein)*100)+"%)",7,1,master.passives[7,0],master.notice[7,0]],
[clamp(master.notice[8,1]-1,0,1),master.notice[8,2],master.notice[8,3],master.passives[8,5],"+"+string((((1+.05*(master.notice[8,2]+1)*leinstein)*(1+.05*master.passives[8,3])*einstein-1)-((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1))*100)+"% XP\n("+string(((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1)*100)+"%)",8,1,master.passives[8,0],master.notice[8,0]],
[clamp(master.notice[9,1]-1,0,1),master.notice[9,2],master.notice[9,3],master.passives[9,5],"(Heal "+string((floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*(master.notice[9,2])*leinstein))))+" HP Every "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",9,1,master.passives[9,0],master.notice[9,0]],
[clamp(master.notice[10,1]-1,0,1),master.notice[10,2],master.notice[10,3],master.passives[10,5],"+"+string(((.02*master.passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2]+1)*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"% Retalitory Damage\n("+string(((.02*master.passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2]+1)*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"%)",10,1,master.passives[10,0],master.notice[10,0]],
[clamp(master.notice[11,1]-1,0,1),master.notice[11,2],master.notice[11,3],master.passives[11,5],"+"+string((((.05*(master.notice[11,2]+1)*leinstein*master.lrange)+(1+.05*(master.passives[11,3])*master.range*einstein))-((.05*master.notice[11,2]*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]))*master.range*einstein)))*100)+"% Attractor Pickup Range\n("+string(((.05*(master.notice[11,2]+1)*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]))*master.range*einstein)-1)*100)+"%)",11,1,master.passives[11,0],master.notice[11,0]],
[clamp(master.notice[12,1]-1,0,1),master.notice[12,2],master.notice[12,3],master.passives[12,5],"+"+string((((1+.05*(master.notice[12,2]+1)*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)-((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1))*100)+"% Attack Rate\n("+string(((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)*100)+"%)",12,1,master.passives[12,0],master.notice[12,0]],
[clamp(master.notice[13,1]-1,0,1),master.notice[13,2],master.notice[13,3],master.passives[13,5],"+"+string((((1+.05*(master.notice[13,2]+1)*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)-((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1))*100)+"% Attack Duration\n("+string(((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)*100)+"%)",13,1,master.passives[13,0],master.notice[13,0]],
[clamp(master.notice[14,1]-1,0,1),master.notice[14,2],master.notice[14,3],master.passives[14,5],"+"+string(round(5*leinstein))+" Max Health\n("+string(round(10+master.love+5*leinstein))+"HP)",14,1,master.passives[14,0],master.notice[14,0]],
[clamp(master.notice[15,1]-1,0,1),master.notice[15,2],master.notice[15,3],master.passives[15,5],"Every Minute,\n Take "+string(round(50/leinstein*100)/100)+"% Damage for "+string(5*(master.passives[15,3]+1))+" Seconds)",15,0,master.passives[15,0],master.notice[15,0]],
[clamp(master.notice[16,1]-1,0,1),master.notice[16,2],master.notice[16,3],master.passives[16,5],"+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(master.revives+1)+")",16,1,master.passives[16,0],master.notice[16,0]],
[clamp(master.notice[17,1]-1,0,1),master.notice[17,2],master.notice[17,3],master.passives[17,5],"+"+string(((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2]+1)*leinstein*(1+.05*master.notice[0,2]*leinstein))*(1+.05*master.notice[0,2]*leinstein))-1)-(1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein)*(1+.05*master.notice[0,2]*leinstein))-1))*100)+"% Critical Chance (x"+string((2*(1+.05*(clamp(master.passives[17,3],1,99999))))*einstein*((.95+.05*(clamp(master.notice[17,2],1,99999))*leinstein)))+" Damage)\n["+string((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein)*(1+.05*master.notice[0,2]*leinstein)))*100)+"%]",17,1,master.passives[17,0],master.notice[17,0]],
[clamp(master.notice[18,1]-1,0,1),master.notice[18,2],master.notice[18,3],master.passives[18,5],"+"+string((((1+.1*(master.notice[18,2]+1)*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)-((1+.1*master.notice[18,2]*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1))*100)+"% Damage\n("+string(((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)*100)+"%)",18,1,master.passives[18,0],master.notice[18,0]],
[clamp(master.notice[19,1]-1,0,1),master.notice[19,2],master.notice[19,3],master.passives[19,5],"OxyContin Spawns\nEvery 3 Minutes","OxyContin Spawns\nEvery 2 Min: 30 Sec",19,0,master.passives[19,0],master.notice[19,0]],
[clamp(master.notice[20,1]-1,0,1),master.notice[20,2],master.notice[20,3],master.passives[20,5],"+"+string((((1+.05*(master.notice[20,2]+1)*leinstein)*(1+(.05*master.passives[20,3])*einstein)-1)-((1+.1*(master.notice[20,2])*leinstein)*(1+(.05*master.passives[20,3])*einstein)-1))*100)+"% Projectile Size\n("+string(((1+.05*(master.notice[20,2])*leinstein)*(1+(.05*master.passives[20,3])*einstein)-1)*100)+"%)",20,1,master.passives[20,0],master.notice[20,0]],
[clamp(master.notice[21,1]-1,0,1),master.notice[21,2],master.notice[21,3],master.passives[21,5],"+"+string(((((1+.05*(master.notice[21,2]+1)*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)-((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein-1))*100)+"% Money Value & Frequency\n("+string((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)*100)+"%)",21,1,master.passives[21,0],master.notice[21,0]],
[clamp(master.notice[22,1]-1,0,1),master.notice[22,2],master.notice[22,3],master.passives[22,5],"Item Pickups:\n+"+string((((1+.05*(master.notice[22,2]+1)*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)-((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1))*100)+"% Duration & Effect ("+string(((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)*100)+"%)",22,1,master.passives[22,0],master.notice[22,0]],
[clamp(master.notice[23,1]-1,0,1),master.notice[23,2],master.notice[23,3],master.passives[23,5],"+"+string(((1+.1*(master.notice[23,2]+1)*leinstein)*(1+(.1*master.passives[23,3])*einstein)-(1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein))*100)+"% Projectile Speed\n("+string(((1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein)-1)*100)+"%)",23,1,master.passives[23,0],master.notice[23,0]],
[clamp(master.notice[24,1]-1,0,1),master.notice[24,2],master.notice[24,3],master.passives[24,5],"+"+string(floor(1*leinstein))+" Projectile Amount\n("+string((floor(master.passives[24,3]*einstein+master.notice[24,2]*leinstein)))+")",24,1,master.passives[24,0],master.notice[24,0]],
[clamp(master.notice[25,1]-1,0,1),master.notice[25,2],master.notice[25,3],master.passives[25,5],"-"+string(((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish+.05*leinstein)))-(((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish))))*-100)+"% Enemy Eyesight\n("+string((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish)))*100)+"%)",25,1,master.passives[25,0],master.notice[25,0]],
[clamp(master.notice[26,1]-1,0,1),master.notice[26,2],master.notice[26,3],master.passives[26,5],"+"+string(2)+"% Upgrade Potency\n("+string((leinstein-1)*100)+"%)",26,1,master.passives[26,0],master.notice[26,0]]
]



upgrademax=[
"MAX\n("+string(((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1)*100)+"%)",
"MAX\n("+string((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100)+"%)",
"MAX\n("+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3]*einstein))-1)*100)+"%)",
"MAX\n("+string((master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein))+"%)",//
"MAX\n("+string((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))*100)+"%)",
"MAX\n("+string((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1)*100)+"%)",
"MAX\n("+string(((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)*100)+"%)",
"MAX\n("+string(((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein)*100)+"%)",
"MAX\n("+string(((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1)*100)+"%)",
"MAX\nHeal "+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein)))+" HP Every "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",//
"MAX\n("+string(((.02*master.passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2])*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"%)",//
"MAX\n("+string(((1+.1*(master.notice[11,2])*leinstein*master.lrange)+((.05*(master.passives[11,3]))*master.range*einstein)-1)*100)+"%)",
"MAX\n("+string(((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)*100)+"%)",
"MAX\n("+string(((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)*100)+"%)",
"MAX\n("+string(round(10+master.love))+"HP)",//
"MAX\n("+string(5*(master.passives[15,3]))+" Seconds)",//
"MAX\n("+string(master.revives+1)+")",//
"MAX\n(x"+string((2*(.95+.05*(master.passives[17,3])))*einstein*((1+.05*master.notice[17,2]*leinstein)))+" Damage) ["+string((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein)))*100)+"%]",
"MAX\n("+string(((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)*100)+"%)",
"MAX\n(OxyContin Spawns\nEvery 3 Minutes",
"MAX\n("+string(((1+.1*(master.notice[20,2])*leinstein)*(1+(.1*master.passives[20,3])*einstein)-1)*100)+"%)",
"MAX\n("+string((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)*100)+"%)",
"MAX\n("+string(((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)*100)+"%)",
"MAX\n("+string(((1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein)-1)*100)+"%)",
"MAX\n("+string((floor(master.passives[24,3]*einstein+master.notice[24,2]*leinstein)))+")",//
"MAX\n("+string((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish)))*100)+"%)",
"MAX\n("+string((leinstein*einstein-1)*100)+"%)"
]

dfade=0
countgrade=-1
selected=-1;
slide=0
refcount=0

refunding=0

instance_create_layer(x,y-382,"uiitop",obj_buyupgrade);
instance_create_layer(x,y+422,"uiitop",obj_refund);

for (i=0; i<array_length(upgrades); i++) {
	if upgrades[i,6]=0 {
		upgrades[i,2] = -1
	}
	if upgrades[i,6]=1 {
		countgrade+=1
		var upp = instance_create_layer(x,y,"uiitop",obj_grade)
		upp.ind=countgrade
		upp.idd=i
		upp.corid=upgrades[i,5]
		upp.imag=upgrades[i,3]
		upp.maxx=upgrades[i,2]
		upp.lev=upgrades[i,1]
		upp.lock=upgrades[i,0]
	}
	
}