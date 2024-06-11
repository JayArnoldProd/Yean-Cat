/// @description Insert description here
// You can write your code in this editor
//gamepad select
if input_check_pressed("accept") and (global.choiceselect=num) {
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
	
	}
	master.banishes-=1
}
}
}
safety=0
}

//select choice
if global.choiceselect=num {
col=c_grey
scale=1.8

if instance_exists(obj_levelup) {
	if obj_levelup.banishing=1 {
		col=c_red;
	}
}
if lockk=1 {
	col=c_dkgrey
}
}
//deselect choice
if global.choiceselect<=0 or !(global.choiceselect=num) {
col=c_white
scale=1.7
if lockk=1 {
	col=c_ltgrey
}
}

time+=.03
x=obj_levelup.x
if image_xscale!=scale {
image_xscale+=(scale-image_xscale)/10
image_yscale=image_xscale*.82
}
if obj_levelup.choicetotal=1 {
	y=obj_levelup.y+(27+((num)/(countt+1)-.5)*700*4/3)*master.camscale
}
if obj_levelup.choicetotal=2 {
	y=obj_levelup.y+(77+((num)/(countt+1)-.5)*600*4/3)*master.camscale
}
if obj_levelup.choicetotal=3 {
	y=obj_levelup.y+(77+((num)/(countt+1)-.5)*555*4/3)*master.camscale
}
if obj_levelup.choicetotal=4 {
	y=obj_levelup.y+(95+((num)/(countt+1)-.5)*700*4/3)*master.camscale
}



if load=1 {
	if num=1 {
	//weapon
if obj_levelup.c1t=1 {
	//weapon
	type=1
	numb=obj_levelup.choice1
	name=master.weapons[obj_levelup.choice1,0]
	image=master.weapons[obj_levelup.choice1,11]
	desc=master.weapons[obj_levelup.choice1,12]
	level=master.weapons[obj_levelup.choice1,4]
	maxlevel=master.weapons[obj_levelup.choice1,5]
} else {
	if obj_levelup.c1t=2 {
		//passive
		type=2
		numb=obj_levelup.choice1
		name=master.passives[obj_levelup.choice1,0]
		image=master.passives[obj_levelup.choice1,5]
		desc=master.passives[obj_levelup.choice1,6]
		level=master.passives[obj_levelup.choice1,3]
		maxlevel=master.passives[obj_levelup.choice1,4]
	}
}
}

if num=2 {
if obj_levelup.c2t=1 {
	//weapon
	type=1
	numb=obj_levelup.choice2
	name=master.weapons[obj_levelup.choice2,0]
	image=master.weapons[obj_levelup.choice2,11]
	desc=master.weapons[obj_levelup.choice2,12]
	level=master.weapons[obj_levelup.choice2,4]
	maxlevel=master.weapons[obj_levelup.choice2,5]
} else {
	if obj_levelup.c2t=2 {
		//passive
		type=2
		numb=obj_levelup.choice2
		name=master.passives[obj_levelup.choice2,0]
		image=master.passives[obj_levelup.choice2,5]
		desc=master.passives[obj_levelup.choice2,6]
		level=master.passives[obj_levelup.choice2,3]
		maxlevel=master.passives[obj_levelup.choice2,4]
	}
}
}

if num=3 {
	//weapon
if obj_levelup.c3t=1 {

	//weapon
	type=1
	numb=obj_levelup.choice3
	name=master.weapons[obj_levelup.choice3,0]
	image=master.weapons[obj_levelup.choice3,11]
	desc=master.weapons[obj_levelup.choice3,12]
	level=master.weapons[obj_levelup.choice3,4]
	maxlevel=master.weapons[obj_levelup.choice3,5]
} else {
	if obj_levelup.c3t=2 {
		//passive
		type=2
		numb=obj_levelup.choice3
		name=master.passives[obj_levelup.choice3,0]
		image=master.passives[obj_levelup.choice3,5]
		desc=master.passives[obj_levelup.choice3,6]
		level=master.passives[obj_levelup.choice3,3]
		maxlevel=master.passives[obj_levelup.choice3,4]
	}
}
}

if num=4 {

	//weapon
if obj_levelup.c4t=1 {

	//weapon
	type=1
	numb=obj_levelup.choice4
	name=master.weapons[obj_levelup.choice4,0]
	image=master.weapons[obj_levelup.choice4,11]
	desc=master.weapons[obj_levelup.choice4,12]
	level=master.weapons[obj_levelup.choice4,4]
	maxlevel=master.weapons[obj_levelup.choice4,5]
} else {
	if obj_levelup.c4t=2 {
		//passive
		type=2
		numb=obj_levelup.choice4
		name=master.passives[obj_levelup.choice4,0]
		image=master.passives[obj_levelup.choice4,5]
		desc=master.passives[obj_levelup.choice4,6]
		level=master.passives[obj_levelup.choice4,3]
		maxlevel=master.passives[obj_levelup.choice4,4]
	}
}

if type=1 {
	for (var i=0; i<array_length(master.weapons); i++ ) {
		if master.weapons[i,1] > 0 {
		if master.weapons[i,3] = 1 {
			if master.weapons[i,8]=numb or master.weapons[i,9]=numb  {
				if master.weapons[i,1] = 1 {
					//evolution
					pasrequirement1=master.weapons[i,6]
					pasrequirement2=master.weapons[i,7]
				for (var ii=0; ii<master.pascount; ii++) {
					if master.pass[ii] = master.weapons[i,6] {
						if master.pass[ii]!=-1{
						pasrequirement1=-1
						}
					}
					if master.pass[ii] = master.weapons[i,7] {
						if master.pass[ii]!=-1{
						pasrequirement2=-1
						}
					}
				}
			} else {
				//fusion
					pasrequirement1=master.weapons[i,6]
					pasrequirement2=master.weapons[i,7]
					weprequirement1=master.weapons[i,8]
					weprequirement2=master.weapons[i,9]
				for (var ii=0; ii<master.pascount; ii++) {
					if master.pass[ii] = master.weapons[i,6] {
						if master.pass[ii]!=-1{
						pasrequirement1=-1
						}
					}
					if master.pass[ii] = master.weapons[i,7] {
						if master.pass[ii]!=-1{
						pasrequirement2=-1
						}
					}
				}
				for (var iii=0; iii<master.wepcount; iii++) {
					if master.weap[iii] = master.weapons[i,8] {
						if master.weap[iii]!=-1{
						weprequirement1=-1
						}
					}
					if master.weap[iii] = master.weapons[i,9] {
						if master.weap[iii]!=-1{
						weprequirement2=-1
						}
					}
				}
				if weprequirement1=numb {
						weprequirement1=weprequirement2
						if weprequirement1=numb {
							weprequirement1=-1;
						}
					}
			}
			}
		}
		}
	}
}

//

}

//if level>0 {
	if level<maxlevel {
		if type=1 {
			//weapon
			desc=master.weapontext[numb,level]
		}
		if type=2 {
			//passive
			if numb !=(array_length(master.passives)-1) {
				if numb != 14 and numb != 19 and numb !=15 and numb !=3 {
			desc=master.passivetext[numb]
				} else {
					desc=master.passivetext2[numb,level]
				}
			} else {
				desc=master.eintext[level]
			}
		//}
	}
}

//limit break
if type=1 {
	if master.weapons[numb,4]>=master.weapons[numb,5] {
			if num=1 {
				desc=string(limittext[numb,0][obj_levelup.r1-1])
			}
			if num=2 {
				desc=string(limittext[numb,0][obj_levelup.r2-1])
			}
			if num=3 {
				desc=string(limittext[numb,0][obj_levelup.r3-1])
			}
			if num=4 {
				desc=string(limittext[numb,0][obj_levelup.r4-1])
			}
			
	}
}
if type=2 {
	if master.passives[numb,3]>=master.passives[numb,4] {
		if num=1 {
				desc=string(limittext[numb,1][obj_levelup.r1-1])
			}
			if num=2 {
				desc=string(limittext[numb,1][obj_levelup.r2-1])
			}
			if num=3 {
				desc=string(limittext[numb,1][obj_levelup.r3-1])
			}
			if num=4 {
				desc=string(limittext[numb,1][obj_levelup.r4-1])
			}
			
	}
}


load=0

}

if master.randomchoice = 1 or master.randomchoiceonce = 1{
	if instance_exists(obj_levelup) {
	if obj_levelup.banishing=0 {
if chosen = 1 {
	//autopick
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
					if lockk=1 {
				var chooo = 0
				obj_choicebutton.chosen=0
				for (var _i=0; _i<instance_number(obj_choicebutton);_i++) {
				 var _inst = instance_find(obj_choicebutton, _i);
				 if chooo=0 {
				 if irandom_range(1,instance_number(obj_choicebutton))=1 {
				 _inst.chosen=1
				 chooo=1
				 if _inst=self {
					 chosen=0
					 chooo=0
				 }
				 }
				 if _i=instance_number(obj_choicebutton) {
					_inst.chosen=1
					chooo=1
					if _inst=self {
					 chosen=0
					 chooo=0
					 _i=-1
				 }
		
				}
			}
			if _inst.chosen=1 {
				exit
			}
			}
		exit
} else {
	if master.weapons[obj_levelup.choice1,2]= 0 {
		master.weapons[obj_levelup.choice1,2]=1
		master.weap[master.wepcount]=obj_levelup.choice1
		master.wepcount+=1
		
	}
	master.weapons[obj_levelup.choice1,4]+=1
}
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
					if lockk=1 {
				var chooo = 0
				obj_choicebutton.chosen=0
				for (var _i=0; _i<instance_number(obj_choicebutton);_i++) {
				 var _inst = instance_find(obj_choicebutton, _i);
				 if chooo=0 {
				 if irandom_range(1,instance_number(obj_choicebutton))=1 {
				 _inst.chosen=1
				 chooo=1
				 if _inst=self {
					 chosen=0
					 chooo=0
				 }
				 }
				 if _i=instance_number(obj_choicebutton) {
					_inst.chosen=1
					chooo=1
					if _inst=self {
					 chosen=0
					 chooo=0
					 _i=-1
				 }
		
				}
			}
			if _inst.chosen=1 {
				exit
			}
			}
		exit
} else {
	if master.weapons[obj_levelup.choice2,2]= 0 {
		master.weapons[obj_levelup.choice2,2]=1
		master.weap[master.wepcount]=obj_levelup.choice2
		master.wepcount+=1
	}
	master.weapons[obj_levelup.choice2,4]+=1
}
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
				if lockk=1 {
				var chooo = 0
				obj_choicebutton.chosen=0
				for (var _i=0; _i<instance_number(obj_choicebutton);_i++) {
				 var _inst = instance_find(obj_choicebutton, _i);
				 if chooo=0 {
				 if irandom_range(1,instance_number(obj_choicebutton))=1 {
				 _inst.chosen=1
				 chooo=1
				 if _inst=self {
					 chosen=0
					 chooo=0
				 }
				 }
				 if _i=instance_number(obj_choicebutton) {
					_inst.chosen=1
					chooo=1
					if _inst=self {
					 chosen=0
					 chooo=0
					 _i=-1
				 }
		
				}
			}
			if _inst.chosen=1 {
				exit
			}
			}
		exit
} else {
	if master.weapons[obj_levelup.choice3,2]= 0 {
		master.weapons[obj_levelup.choice3,2]=1
		master.weap[master.wepcount]=obj_levelup.choice3
		master.wepcount+=1
	}
	master.weapons[obj_levelup.choice3,4]+=1
}
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
			if lockk=1 {
				var chooo = 0
				obj_choicebutton.chosen=0
				for (var _i=0; _i<instance_number(obj_choicebutton);_i++) {
				 var _inst = instance_find(obj_choicebutton, _i);
				 if chooo=0 {
				 if irandom_range(1,instance_number(obj_choicebutton))=1 {
				 _inst.chosen=1
				 chooo=1
				 if _inst=self {
					 chosen=0
					 chooo=0
				 }
				 }
				 if _i=instance_number(obj_choicebutton) {
					_inst.chosen=1
					chooo=1
					if _inst=self {
					 chosen=0
					 chooo=0
					 _i=-1
				 }
		
				}
			}
			if _inst.chosen=1 {
				exit
			}
			}
		exit
} else {
	if master.weapons[obj_levelup.choice4,2]= 0 {
		master.weapons[obj_levelup.choice4,2]=1
		master.weap[master.wepcount]=obj_levelup.choice4
		master.wepcount+=1
	}
	master.weapons[obj_levelup.choice4,4]+=1
}
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
}
	} else {
		if instance_exists(obj_levelup) {
			if chosen=1 {
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
	
	}
		}
		master.banishes-=1
	}
master.checkwep=1;

if instance_exists(obj_levelup) {
with (obj_levelup) {
	falling=-1
}
} else {
	instance_destroy();
}
chosen=0;
master.randomchoiceonce=0
}

if lockk=1 {
	if col != c_dkgrey {
	col=c_ltgrey
	}
}
	
	
}


