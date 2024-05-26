if onscreen !=0 {
	 if alp <.7 {
		 alp+=.01
	 }
} else {
	if alp >0 {
		 alp-=.01
	 }
}
if audio_emitter_exists(myEmitter) {
audio_emitter_position(myEmitter,x,y,0)
}
if master.updatestats=1 {
upgrades=[
[clamp(master.notice[0,1]-1,0,1),master.notice[0,2],master.notice[0,3],master.passives[0,5],"+"+string((((1+.05*(master.notice[0,2]+1)*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1)-((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1))*100)+"% Luck\n("+string(((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1)*100)+"%)",0,1,"Luck",master.notice[0,0]],
[clamp(master.notice[1,1]-1,0,1),master.notice[1,2],master.notice[1,3],master.passives[1,5],"+"+string(((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2]+1)*leinstein*master.lluck))))-(1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck)))))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100)+"%)",1,1,"Champion",master.notice[1,0]],
[clamp(master.notice[2,1]-1,0,1),master.notice[2,2],master.notice[2,3],master.passives[2,5],"+"+string((((1+.05*(master.notice[2,2]+1)*leinstein)*(1+.05*master.passives[2,3])*einstein)-((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3])*einstein))*100)+"% Enemy Health, Quantity, & Speed\n("+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3])*einstein)-1)*100)+"%)",2,1,"Curse",master.notice[2,0]],
[clamp(master.notice[3,1]-1,0,1),master.notice[3,2],master.notice[3,3],master.passives[3,5],"Deal +"+string((((master.notice[3,2]+1)*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)-(master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)))+"% Damage\nWhen below half Health\n("+string(((master.notice[3,2])*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein))+"%)",3,0,master.passives[0,3],master.notice[3,0]],
[clamp(master.notice[4,1]-1,0,1),master.notice[4,2],master.notice[4,3],master.passives[4,5],"+"+string(((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2]+1)*leinstein)))-((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))*100)+"%)",4,1,master.passives[4,0],master.notice[4,0]],
[clamp(master.notice[5,1]-1,0,1),master.notice[5,2],master.notice[5,3],master.passives[5,5],"Heal "+string(((((1+.02*(master.notice[5,2]+1)*leinstein)*(1+.02*master.passives[5,3])*einstein)-1)-(((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1))*100)+"% of Damage Dealt\n("+string((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1)*100)+"%)",5,1,master.passives[5,0],master.notice[5,0]],
[clamp(master.notice[6,1]-1,0,1),master.notice[6,2],master.notice[6,3],master.passives[6,5],"+"+string((((1+.1*(master.notice[6,2]+1)*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)-((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1))*100)+"% Weapon & Ability Range\n("+string(((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)*100)+"%)",6,1,master.passives[6,0],master.notice[6,0]],
[clamp(master.notice[7,1]-1,0,1),master.notice[7,2],master.notice[7,3],master.passives[7,5],"+"+string((((.05*(master.notice[7,2]+1)*leinstein)+(.05*master.passives[7,3])*einstein)-((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein))*100)+"% Movement\nSpeed & Handling ("+string(((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein)*100)+"%)",7,1,master.passives[7,0],master.notice[7,0]],
[clamp(master.notice[8,1]-1,0,1),master.notice[8,2],master.notice[8,3],master.passives[8,5],"+"+string((((1+.05*(master.notice[8,2]+1)*leinstein)*(1+.05*master.passives[8,3])*einstein-1)-((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1))*100)+"% XP\n("+string(((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1)*100)+"%)",8,1,master.passives[8,0],master.notice[8,0]],
[clamp(master.notice[9,1]-1,0,1),master.notice[9,2],master.notice[9,3],master.passives[9,5],"(Heal "+string((floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*(master.notice[9,2])*leinstein))))+" HP Every "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",9,1,master.passives[9,0],master.notice[9,0]],
[clamp(master.notice[10,1]-1,0,1),master.notice[10,2],master.notice[10,3],master.passives[10,5],"+"+string((((.02*master.passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2]+1)*leinstein*master.ldamage))-((.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage)))*100)+"% Retalitory Damage\n("+string(((.02*master.passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2]+1)*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"%)",10,1,master.passives[10,0],master.notice[10,0]],
[clamp(master.notice[11,1]-1,0,1),master.notice[11,2],master.notice[11,3],master.passives[11,5],"+"+string((((.05*(master.notice[11,2]+1)*leinstein*master.lrange)+(1+.05*(master.passives[11,3])*master.range*einstein))-((.05*master.notice[11,2]*leinstein*master.lrange)+(1+(.05*(master.passives[11,3])))*master.range*einstein))*100)+"% Attractor Pickup Range\n("+string(((.05*(master.notice[11,2]+1)*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]))*master.range*einstein)-1)*100)+"%)",11,1,master.passives[11,0],master.notice[11,0]],
[clamp(master.notice[12,1]-1,0,1),master.notice[12,2],master.notice[12,3],master.passives[12,5],"+"+string((((1+.05*(master.notice[12,2]+1)*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)-((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1))*100)+"% Attack Rate\n("+string(((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)*100)+"%)",12,1,master.passives[12,0],master.notice[12,0]],
[clamp(master.notice[13,1]-1,0,1),master.notice[13,2],master.notice[13,3],master.passives[13,5],"+"+string((((1+.05*(master.notice[13,2]+1)*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)-((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1))*100)+"% Attack Duration\n("+string(((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)*100)+"%)",13,1,master.passives[13,0],master.notice[13,0]],
[clamp(master.notice[14,1]-1,0,1),master.notice[14,2],master.notice[14,3],master.passives[14,5],"+"+string(round(5*leinstein))+" Max Health\n("+string(round(10+master.love))+"HP)",14,1,master.passives[14,0],master.notice[14,0]],
[clamp(master.notice[15,1]-1,0,1),master.notice[15,2],master.notice[15,3],master.passives[15,5],"Every Minute,\n Take "+string(round(50/leinstein*100)/100)+"% Damage for "+string(5*(master.passives[15,3]+1))+" Seconds)",15,0,master.passives[15,0],master.notice[15,0]],
[clamp(master.notice[16,1]-1,0,1),master.notice[16,2],master.notice[16,3],master.passives[16,5],"+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(master.revives+1)+")",16,1,master.passives[16,0],master.notice[16,0]],
[clamp(master.notice[17,1]-1,0,1),master.notice[17,2],master.notice[17,3],master.passives[17,5],"+"+string(((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2]+1)*leinstein*(1+.05*master.notice[0,2]*leinstein))*(1+.05*master.notice[0,2]*leinstein))-1)-(1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein)*(1+.05*master.notice[0,2]*leinstein))-1))*100)+"% Critical Chance (x"+string((2*(.95+.05*(clamp(master.passives[17,3],1,99999))))*einstein*((.95+.05*(clamp(master.notice[17,2],1,99999))*leinstein)))+" Damage)\n["+string((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein)*(1+.05*master.notice[0,2]*leinstein)))*100)+"%]",17,1,master.passives[17,0],master.notice[17,0]],
[clamp(master.notice[18,1]-1,0,1),master.notice[18,2],master.notice[18,3],master.passives[18,5],"+"+string((((1+.1*(master.notice[18,2]+1)*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)-((1+.1*master.notice[18,2]*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1))*100)+"% Damage\n("+string(((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)*100)+"%)",18,1,master.passives[18,0],master.notice[18,0]],
[clamp(master.notice[19,1]-1,0,1),master.notice[19,2],master.notice[19,3],master.passives[19,5],"OxyContin Spawns\nEvery 3 Minutes","OxyContin Spawns\nEvery 2 Min: 30 Sec",19,0,master.passives[19,0],master.notice[19,0]],
[clamp(master.notice[20,1]-1,0,1),master.notice[20,2],master.notice[20,3],master.passives[20,5],"+"+string((((1+(.1*power(clamp(master.notice[20,2]+1,0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3],0,99999),.70)*einstein)))-(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3],0,99999),.70)*einstein)))))*100)+"% Projectile Size\n("+string(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3],0,99999),.70)*einstein))-1)*100)+"%)",20,1,master.passives[20,0],master.notice[20,0]],
[clamp(master.notice[21,1]-1,0,1),master.notice[21,2],master.notice[21,3],master.passives[21,5],"+"+string(((((1+.05*(master.notice[21,2]+1)*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)-((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein-1))*100)+"% Money Value & Frequency\n("+string((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)*100)+"%)",21,1,master.passives[21,0],master.notice[21,0]],
[clamp(master.notice[22,1]-1,0,1),master.notice[22,2],master.notice[22,3],master.passives[22,5],"Item Pickups:\n+"+string((((1+.05*(master.notice[22,2]+1)*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)-((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1))*100)+"% Duration & Effect ("+string(((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)*100)+"%)",22,1,master.passives[22,0],master.notice[22,0]],
[clamp(master.notice[23,1]-1,0,1),master.notice[23,2],master.notice[23,3],master.passives[23,5],"+"+string(((1+.1*(master.notice[23,2]+1)*leinstein)*(1+(.1*master.passives[23,3])*einstein)-(1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein))*100)+"% Projectile Speed\n("+string(((1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein)-1)*100)+"%)",23,1,master.passives[23,0],master.notice[23,0]],
[clamp(master.notice[24,1]-1,0,1),master.notice[24,2],master.notice[24,3],master.passives[24,5],"+"+string(floor(1*leinstein))+" Projectile Amount\n("+string((floor(master.passives[24,3]*einstein+master.notice[24,2]*leinstein)))+")",24,1,master.passives[24,0],master.notice[24,0]],
[clamp(master.notice[25,1]-1,0,1),master.notice[25,2],master.notice[25,3],master.passives[25,5],"-"+string(((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish+.05*leinstein)))-(((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish))))*-100)+"% Enemy Eyesight\n("+string((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish)))*100)+"%)",25,1,master.passives[25,0],master.notice[25,0]],
[clamp(master.notice[26,1]-1,0,1),master.notice[26,2],master.notice[26,3],master.passives[26,5],"+"+string(2)+"% Upgrade Potency\n("+string((leinstein-1)*100)+"%)",26,1,master.passives[26,0],master.notice[26,0]]
]



upgrademax=[
"MAX\nLuck\n("+string(((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1)*100)+"%)",
"MAX\nChance to Dodge Attacks\n("+string((1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100)+"%)",
"MAX\nEnemy Health, Quantity, & Speed\n("+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3])*einstein)-1)*100)+"%)",
"MAX\nDamage Bonus when < Half Health\n("+string((master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein))+"%)",//
"MAX\nDamage Resistance\n("+string((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))*100)+"%)",
"MAX\nHeal Damage Dealt\n("+string((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1)*100)+"%)",
"MAX\nWeapon & Ability Range\n("+string(((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1)*100)+"%)",
"MAX\nMovement Speed & Handling\n("+string(((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein)*100)+"%)",
"MAX\nXP Bonus\n("+string(((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1)*100)+"%)",
"MAX\nHeal "+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein)))+" HP Every "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp(master.passives[9,3],0,1)+clamp(master.passives[9,3]-4,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",//
"MAX\nRetalitory Damage\n("+string(((.02*master.passives[10,3])*einstein*master.damage+(.02*(master.notice[10,2])*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"%)",//
"MAX\nAttractor Pickup Range\n("+string(((.05*(master.notice[11,2])*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]))*master.range*einstein)-1)*100)+"%)",
"MAX\nAttack Rate\n("+string(((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1)*100)+"%)",
"MAX\nAttack Duration\n("+string(((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1)*100)+"%)",
"MAX\nMax Health\n("+string(round(10+master.love))+"HP)",//
"MAX\n("+string(5*(master.passives[15,3]))+" Seconds)",//
"MAX\nRevive With "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health\n("+string(master.revives)+")",
"MAX\n(x"+string((2*(.95+.05*clamp(master.passives[17,3],1,99999)))*einstein*((1+.05*master.notice[17,2]*leinstein)))+" Damage) ["+string((1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein))))*100)+"%]",
"MAX\nDamage Bonus\n("+string(((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1)*100)+"%)",
"MAX\n(OxyContin Spawns\nEvery 3 Minutes",
"MAX\nProjectile Size\n("+string(((1+(.1*power(clamp(master.notice[20,2],0,99999),.70))*leinstein)*(1+(.1*power(clamp(master.passives[20,3],0,99999),.70)*einstein))-1)*100)+"%)",
"MAX\nMoney Value & Frequency\n("+string((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein)-1)*100)+"%)",
"MAX\nItem Duration & Effect\n("+string(((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1)*100)+"%)",
"MAX\nProjectile Speed\n("+string(((1+.05*(master.notice[23,2])*leinstein)*(1+(.05*master.passives[23,3])*einstein)-1)*100)+"%)",
"MAX\nProjectile Amount\n("+string((floor(master.passives[24,3]*einstein+master.notice[24,2]*leinstein)))+")",//
"MAX\nEnemy Eyesight\n("+string((((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish)))*100)+"%)",
"MAX\nUpgrade Potency\n("+string((leinstein*einstein-1)*100)+"%)"
]


}

if refunding=1 {
	if master.upgradetot>0 {
	if master.notice[refcount,2] > 0 {
		master.notice[refcount,2] -= 1
		obj_upgrademenu.upgrades[refcount,1]-=1;
		master.dondadollars+=master.upgradetot*100
		master.upgradetot-=1
	}
	refcount+=1
	for (i=refcount; i<array_length(master.notice);i++){
		if master.notice[i,2]<=0 {
			refcount+=1
		} else {
			break
		}
	}
	master.updatestats=1
	
	if refcount=array_length(master.notice) {
		refcount=0
	}
	} else {
		
		refcount=0
		refunding=0
	}
}

time+=(global.room_speed_set/1000000*delta_time)*.03
if selected != -1 {
	if slide < 1 {
	slide+=(global.room_speed_set/1000000*delta_time)*.05*clamp(1-slide,.1,1);
	} else {
		slide=1
	}
	
} else {
	if slide > 0 {
		slide-=(global.room_speed_set/1000000*delta_time)*.05*clamp(slide,.1,1);
	} else {
		slide = 0;
	}
}

if onscreen=1 {
	if x< room_width/2 {
		x+=(global.room_speed_set/1000000*delta_time)*20*(room_width-x)/500
	} else {
		x=room_width/2
	}
} else {
	if onscreen=-1 {
		if x> room_width/2 {
		x-=(global.room_speed_set/1000000*delta_time)*20*(x-room_width/2)/500
	} else {
		x = room_width/2
		onscreen=1
	}
		
	} else {
		
	if x> 0 {
		x-=(global.room_speed_set/1000000*delta_time)*(20*(x)/500+1)
	} else {
		x=0
		instance_destroy();
	}
	}
}