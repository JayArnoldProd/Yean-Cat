/// @description Insert description here
// You can write your code in this editor
if time>1.5 {
	if safety=0 {
if obj_levelup.banishing=0 {
if num=1 {
	if master.limitmaxlevel[numb,type-1][obj_levelup.r1-1] > 0 {
		if type=1 {
			if master.weapons[numb,4]>=master.weapons[numb,5] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r1-1]-=1
			}

		} else {
			if master.passives[numb,3]>=master.passives[numb,4] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r1-1]-=1
				
			}

		}	
	}
	
	//weapon
if obj_levelup.c1t=1 {
	if master.weapons[numb,4]>=master.weapons[numb,5] {
	master.limitchosen=obj_levelup.r1
	}
	if master.weapons[obj_levelup.choice1,2]= 0 {
		master.weapons[obj_levelup.choice1,2]=1
		master.weap[master.wepcount]=obj_levelup.choice1
		master.wepcount+=1
		
	}
	master.weapons[obj_levelup.choice1,4]+=1
} else {
	//passive
	if obj_levelup.c1t=2 {
	if master.passives[obj_levelup.choice1,1]= 0 {
		master.passives[obj_levelup.choice1,1]=1
		master.pass[master.pascount]=obj_levelup.choice1
		master.pascount+=1
	}
	master.passives[obj_levelup.choice1,3]+=1
	}
}
}
if num=2 {
	if master.limitmaxlevel[numb,type-1][obj_levelup.r2-1] > 0 {
		if type=1 {
			if master.weapons[numb,4]>=master.weapons[numb,5] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r2-1]-=1
			}
		} else {
			if master.passives[numb,3]>=master.passives[numb,4] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r2-1]-=1	
			}
			
		}	
	}
	
	//weapon
if obj_levelup.c2t=1 {
	if master.weapons[numb,4]>=master.weapons[numb,5] {
	master.limitchosen=obj_levelup.r2
	}
	if master.weapons[obj_levelup.choice2,2]= 0 {
		master.weapons[obj_levelup.choice2,2]=1
		master.weap[master.wepcount]=obj_levelup.choice2
		master.wepcount+=1
	}
	master.weapons[obj_levelup.choice2,4]+=1
} else {
	//passive
	if obj_levelup.c2t=2 {
	if master.passives[obj_levelup.choice2,1]= 0 {
		master.passives[obj_levelup.choice2,1]=1
		master.pass[master.pascount]=obj_levelup.choice2
		master.pascount+=1
	}
	master.passives[obj_levelup.choice2,3]+=1
	}
}
}
if num=3 {
	if master.limitmaxlevel[numb,type-1][obj_levelup.r3-1] > 0 {
		if type=1 {

			if master.weapons[numb,4]>=master.weapons[numb,5] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r3-1]-=1
			}

		} else {

			if master.passives[numb,3]>=master.passives[numb,4] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r3-1]-=1
				
			}

		}	
	}
	
	//weapon
if obj_levelup.c3t=1 {
	if master.weapons[numb,4]>=master.weapons[numb,5] {
	master.limitchosen=obj_levelup.r3
	}
	if master.weapons[obj_levelup.choice3,2]= 0 {
		master.weapons[obj_levelup.choice3,2]=1
		master.weap[master.wepcount]=obj_levelup.choice3
		master.wepcount+=1
	}
	master.weapons[obj_levelup.choice3,4]+=1
} else {
	//passive
	if obj_levelup.c3t=2 {
	if master.passives[obj_levelup.choice3,1]= 0 {
		master.passives[obj_levelup.choice3,1]=1
		master.pass[master.pascount]=obj_levelup.choice3
		master.pascount+=1
	}
	master.passives[obj_levelup.choice3,3]+=1
	}
}
}
if num=4 {
			if master.limitmaxlevel[numb,type-1][obj_levelup.r4-1] > 0 {
		if type=1 {

			if master.weapons[numb,4]>=master.weapons[numb,5] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r4-1]-=1
			}

		} else {

			if master.passives[numb,3]>=master.passives[numb,4] {
				master.limitmaxlevel[numb,type-1][obj_levelup.r4-1]-=1
			}

		}	
	}
	//weapon
if obj_levelup.c4t=1 {
if master.weapons[numb,4]>=master.weapons[numb,5] {
	master.limitchosen=obj_levelup.r4
	}
	
	if master.weapons[obj_levelup.choice4,2]= 0 {
		master.weapons[obj_levelup.choice4,2]=1
		master.weap[master.wepcount]=obj_levelup.choice4
		master.wepcount+=1
	}
	master.weapons[obj_levelup.choice4,4]+=1
	
} else {
	//passive
	if obj_levelup.c4t=2 {
	if master.passives[obj_levelup.choice4,1]= 0 {
		master.passives[obj_levelup.choice4,1]=1
		master.pass[master.pascount]=obj_levelup.choice4
		master.pascount+=1
	}
	master.passives[obj_levelup.choice4,3]+=1
	}
}
}

master.checkwep=1;

if instance_exists(obj_levelup) {
with (obj_levelup) {
	falling=-1
}
} else {
	instance_destroy();
}
} else {
	if instance_exists(obj_levelup) {
	if num=1 {
		master.banlist[obj_levelup.choice1,obj_levelup.c1t-1]=1
		
	}
	if num=2 {
		master.banlist[obj_levelup.choice2,obj_levelup.c2t-1]=1
		
	}
	if num=3 {
		master.banlist[obj_levelup.choice3,obj_levelup.c3t-1]=1
		
	}
	if num=4 {
		master.banlist[obj_levelup.choice4,obj_levelup.c4t-1]=1
		
	}
	sound=audio_play_sound(banishsound1,0,0,master.uivol,0,.99+random(2)/100)
	with (obj_levelup) {
		
		falling=-1
	}
	master.banishes-=1
	}
}
}
}
safety=0