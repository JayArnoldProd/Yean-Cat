/// @description Insert description here
// You can write your code in this editor
//WEAPONS 
sss=1
fs=0
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
lvlsnd=audio_play_sound(nothingsound,0,0);

bannertext = "LEVEL UP"
bannertextt = "LEVEL UP"
image_xscale=1.4
image_yscale=1.4
muted=0
al=0
falling=1;
banishing=0
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
cycount=0
choicetotal=master.choicecount
time=0
choice1=-1
c1t=0
choice2=-1
c2t=0
choice3=-1
c3t=0
choice4=-1
c4t=0
//c1t 0 = none 1=weapon 2=passive
allcap=1

show_debug_message("CREATE EVENT: Variables initialized.");

r1 = irandom_range(1,4);

do {
    r2 = irandom_range(1,4);
} until (r2 != r1);

do {
    r3 = irandom_range(1,4);
} until (r3 != r1 && r3 != r2);

do {
    r4 = irandom_range(1,4);
} until (r4 != r1 && r4 != r2 && r4 != r3);



//chance for extra choice

if random(100)<master.choiceluck*(master.luck) {
	choicetotal+=1
	show_debug_message("Luck applied. New choicetotal: " + string(choicetotal));
}


if master.wepcount>=master.maxweapons {
	for (j=0; j<master.wepcount; j++) {
	if master.weapons[master.weap[j],4]<master.weapons[master.weap[j],5]  and master.banlist[master.weap[j],0]=0{
		allcap=0
		show_debug_message("Weapon " + string(master.weap[j]) + " not maxed, allcap set to 0.");
		}
	}
	if master.pascount<6 {
		for (var i=0; i<array_length(master.passives); i++) {
			if master.passives[i,7] =1 and master.passives[i,1] = 0 and master.banlist[i,1]=0{
				allcap=0
				show_debug_message("Passive " + string(i) + " available for upgrade, allcap set to 0.");
			}
		}
		allcap=0
	} else {
		for (j=0; j<master.pascount; j++) {
			if master.passives[master.pass[j],3]<master.passives[master.pass[j],4]  and master.banlist[master.pass[j],1]=0{
				if master.pass[j] !=-1 {
				if master.passives[master.pass[j],1] = 1 {
					allcap=0
					show_debug_message("Passive " + string(master.pass[j]) + " not maxed, allcap set to 0.");
				}
				}
			}
		}
	}
	for (k=0; k<master.pascount; k++) {
	if master.passives[master.pass[k],3]<master.passives[master.pass[k],4]  and master.banlist[master.pass[k],1]=0 {
		allcap=0
		show_debug_message("Passive " + string(k) + " available for upgrade, allcap set to 0.");
		}
	}
} else {
	for (j=0; j<master.wepcount; j++) {
		if master.weap[j] !=-1 { 
	if master.weapons[master.weap[j],4]<master.weapons[master.weap[j],5] and master.banlist[master.weap[j],0]=0 {
		allcap=0
		show_debug_message("Weapon " + string(master.weap[j]) + " not maxed, allcap set to 0.");
		}
		} else {
			allcap=0
			show_debug_message("Weapon slots not filled, allcap set to 0.");
		}
	}
	for (var i=0; i<array_length(master.weapons); i++) {
			if (master.weapons[i,13] =1) and (master.weapons[i,2]=0) and master.banlist[i,0]=0{
				allcap=0
				show_debug_message("Weapon slots not filled, allcap set to 0.");
			}
		}
		if master.pascount<6 {
		for (var i=0; i<array_length(master.passives); i++) {
			if (master.passives[i,7] =1) and (master.passives[i,1]=0) and master.banlist[i,1]=0 {
				allcap=0
			}
			if master.passives[i,3]<master.passives[i,4]  and master.banlist[i,1]=0 {
				if master.passives[i,1] = 1 {
				allcap=0
				show_debug_message("Passive " + string(i) + " available for upgrade, allcap set to 0.");
				}
			}
		}
	} else {
		for (j=0; j<array_length(master.passives); j++) {
			if master.passives[j,3]<master.passives[j,4] and master.banlist[j,1]=0 {
				if master.passives[j,1] = 1 {
					allcap=0
					show_debug_message("Passive slots not filled, allcap set to 0.");
				}
			}
		}
	}
}

wcount=0
pcount=0;

for (var i=0; i<array_length(master.weapons); i++) {
	if master.weapons[i,13]=1 {
		if allcap=0 {
			if master.wepcount<master.maxweapons {
		if master.weapons[i,4]<master.weapons[i,5] and master.banlist[i,0]=0{
		wcount+=1
		}
			} else {
				if master.weapons[i,4]<master.weapons[i,5] and master.banlist[i,0]=0 {
					if master.weapons[i,2]=1{
				wcount+=1
					}
			}
				
			}
		} else {
			if master.nocap=1 {
				if master.weapons[i,2]=1 and master.banlist[i,0]=0 {
					if master.weapons[i,4]>=master.weapons[i,5] {
						if master.limitmaxlevel[i,0][r1-1]>0 {
						wcount+=1
						}
						if master.limitmaxlevel[i,0][r2-1]>0 {
						wcount+=1
						}
						if master.limitmaxlevel[i,0][r3-1]>0 {
						wcount+=1
						}
						if master.limitmaxlevel[i,0][r4-1]>0 {
						wcount+=1
						}
					}
				
				}
			}
			
		}
	} else {
		if master.weapons[i,2]=1 {
		if allcap=0 {
			if master.wepcount<master.maxweapons {
		if master.weapons[i,4]<master.weapons[i,5] and master.banlist[i,0]=0{
		wcount+=1
		}
			} else {
				if master.weapons[i,4]<master.weapons[i,5] and master.banlist[i,0]=0 {
					if master.weapons[i,2]=1{
				wcount+=1
					}
			}
				
			}
		} else {
			if master.nocap=1 {
				if master.weapons[i,2]=1 and master.banlist[i,0]=0 {
					if master.weapons[i,4]>=master.weapons[i,5] {
						if master.limitmaxlevel[i,0][r1-1]>0 {
						wcount+=1
						}
						if master.limitmaxlevel[i,0][r2-1]>0 {
						wcount+=1
						}
						if master.limitmaxlevel[i,0][r3-1]>0 {
						wcount+=1
						}
						if master.limitmaxlevel[i,0][r4-1]>0 {
						wcount+=1
						}
					}
				
				}
			}
		}
		}
	}
	 // Debug message for each weapon checked
	show_debug_message("Weapon " + string(i) + " checked. Current wcount: " + string(wcount));
}



for (var i=0; i<array_length(master.passives); i++) {
		if allcap=0 {
			if master.pascount<6 {
		if master.passives[i,3]<master.passives[i,4] and master.banlist[i,1]=0 {
			if master.passives[i,7]=1 or master.notice[i,1] = 1 or master.passives[i,1] = 1{
				pcount+=1
			}
		}
			} else {
				if master.passives[i,3]<master.passives[i,4] and master.banlist[i,1]=0 {
					if master.passives[i,1]=1{
			pcount+=1
					}
			}
				
			}
		} else {
			if master.nocap=1 {
					if master.passives[i,1]=1 {
						if master.passives[i,10]=1 and master.banlist[i,1]=0 {
						pcount+=1
					}
				}
			}
		}
	// Debug message for each passive checked
    show_debug_message("Passive " + string(i) + " checked. Current pcount: " + string(pcount));
}

//


//if allcap=0 {


//if master.wepcount>master.maxweapons {
//	wcount=0
//}

//if master.pascount>5 {
//	pcount=0/}
//}

wwcount=wcount
ppcount=pcount

if wcount+pcount<=choicetotal {
	choicetotal=wcount+pcount
}
show_debug_message("Finalizing choices. choicetotal adjusted: " + string(choicetotal));

for (var iilp=0; iilp<choicetotal; iilp++) {
	if iilp = 0 {
		cycount=0
		var rand=1+round(random(wcount+pcount-1))
		if rand >wcount {
			c1t=2
			for (var i=0; i<array_length(master.passives); i++) {
			if master.passives[i,7]=1 or master.notice[i,1] = 1 or master.passives[i,1] = 1{
				if allcap = 0 {
				if master.passives[i,3]<master.passives[i,4] {
					if master.pascount<6 {
						if master.banlist[i,1]=0 {
				rand-=1
						}
					} else {
						if master.passives[i,1]=1 {
							if master.banlist[i,1]=0 {
							rand-=1
							}
						}
					}
				}
				} else {
					if master.passives[i,10]=1 {
						if master.banlist[i,1]=0 {
							if master.limitmaxlevel[i,1][r1-1]>0 {
						rand-=1
							}
						}
					}
				}
			}
			if rand-wcount = 0 {
				choice1=i
				pcount-=1
				break
			}
			if i=(array_length(master.passives)-1) and rand>0 {
				
				fs+=1
				if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:1");
				break;
			}
			i=-1
			}
			
			}
			//passive
		} else {
			//weapon
			c1t=1
			for (var i=0; i<array_length(master.weapons); i++) {
			if master.weapons[i,13]=1 {
				if allcap = 0 {
			if master.weapons[i,4]<master.weapons[i,5] {
				if master.wepcount<master.maxweapons {
					if master.banlist[i,0]=0 {
				rand-=1
					}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
			}
				}  else {
					if master.banlist[i,0]=0 {
						if master.nocap=1 and master.weapons[i,2]=1  {
							if master.limitmaxlevel[i,0][r1-1]>0 {
						rand-=1
							} else {
								if cycount<3 {
								r1=((r1) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice1=-1
								}
							}
						}
					}
				}
			} else {
				if master.weapons[i,2]=1 {
				if allcap = 0 {
			if master.weapons[i,4]<master.weapons[i,5] {
				if master.wepcount<master.maxweapons {
					if master.banlist[i,0]=0 {
				rand-=1
					}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
			}
				}  else {
					if master.banlist[i,0]=0 {
						if master.nocap=1 and master.weapons[i,2]=1  {
							if master.limitmaxlevel[i,0][r1-1]>0 {
						rand-=1
							} else {
								if cycount<3 {
								r1=((r1) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice1=-1
								}
							}
						}
					}
				}
			}
			}
			if rand = 0 {
				choice1=i
				wcount-=1
				break
			}
			if i=(array_length(master.weapons)-1) and rand>0 {
				
				fs+=1
				if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:2");
				break;
			}
			i=-1
			}
			
			}
			if choice1=-1 {
				
			}
		}
		
	}
	if iilp = 1 {
		cycount=0
		var rand=1+round(random(wcount+pcount-1))
		if rand>wcount {
			c2t=2
			for (var i=0; i<array_length(master.passives); i++) {
			if master.passives[i,7]=1 or master.notice[i,1] = 1 or master.passives[i,1] = 1{
				if allcap = 0 {
				if master.passives[i,3]<master.passives[i,4] {
				if !(choice1 = i and c1t=2) {
				if master.pascount<6 {
				if master.banlist[i,1]=0 {
					rand-=1
						}
					} else {
						if master.passives[i,1]=1 {
							if master.banlist[i,1]=0 {
					rand-=1
						}
						}
					}
				}
				}
				} else {
					if master.passives[i,10]=1 {
						if !(choice1 = i and c1t=2) {
						if master.banlist[i,1]=0 {
							if master.limitmaxlevel[i,1][r2-1]>0 {
					rand-=1
							}
						}
						}
					}
				}
				if i=(array_length(master.passives)-1) and rand>0 {
				
				fs+=1
			
			if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:3");
				break;
			}
			i=-1
				}
			}
			if rand-wcount = 0 {
				choice2=i
				pcount-=1
				break
			}
			if i=(array_length(master.passives)-1) and rand>0 {
				
				fs+=1
			
			if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:4");
				break;
			}
			i=-1
			}
			}
			//passive
		} else {
			//weapon
			c2t=1
			for (var i=0; i<array_length(master.weapons); i++) {
			
				if allcap = 0 {
				if master.weapons[i,4]<master.weapons[i,5] {
					if master.weapons[i,13]=1 {
				if !(choice1 = i and c1t=1) {
				if master.wepcount<master.maxweapons {
					if master.banlist[i,0]=0 {
				rand-=1
					}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
				}
				}
				} else {
					if master.weapons[i,2]=1 {
					if master.nocap=1 {
						if master.banlist[i,0]=0 {
							if master.limitmaxlevel[i,0][r2-1]>0 {
					rand-=1
							} else {
								if cycount<3 {
								r2=((r2) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice2=-1
								}
							}
						}
					}
					}
				}
			} else {
				if master.weapons[i,2]=1 {
				if allcap = 0 {
				if master.weapons[i,4]<master.weapons[i,5] {
				if !(choice1 = i and c1t=1) {
				if master.wepcount<master.maxweapons {
					if master.banlist[i,0]=0 {
				rand-=1
					}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
				}
				}
				} else {
					if master.weapons[i,2]=1 {
					if master.nocap=1 {
						if master.banlist[i,0]=0 {
							if master.limitmaxlevel[i,0][r2-1]>0 {
					rand-=1
							} else {
								if cycount<3 {
								r2=((r2) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice2=-1
								}
							}
						}
					}
					}
				}
			}
			}
			if rand = 0 {
				choice2=i
				wcount-=1
				break
			}
			if i=(array_length(master.weapons)-1) and rand>0 {
				
				fs+=1
				if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:5");
				break;
			}
				i=-1
			}
			
			}
		}
		
	}
	if iilp = 2 {
		cycount=0
		var rand=1+round(random(wcount+pcount-1))
		if rand>wcount {
			c3t=2
			//passive
			for (var i=0; i<array_length(master.passives); i++) {
			if master.passives[i,7]=1 or master.notice[i,1] = 1 or master.passives[i,1] = 1{
				if allcap = 0 {
				if master.passives[i,3]<master.passives[i,4] {
				if !(choice1 = i and c1t=2) and !(choice2 = i and c2t=2) {
				if master.pascount<6 {
				if master.banlist[i,1]=0 {
					rand-=1
						}
					} else {
						if master.passives[i,1]=1 {
							if master.banlist[i,1]=0 {
					rand-=1
						}
						}
					}
				}
				}
				} else {
					if master.passives[i,10]=1 {
						if !(choice1 = i and c1t=2) and !(choice2 = i and c2t=2) {
						if master.banlist[i,1]=0 {
							if master.limitmaxlevel[i,1][r3-1]>0 {
					rand-=1
							}
						}
						}
					}
				}
			}
			if rand-wcount = 0 {
				choice3=i
				pcount-=1
				break
			}
			if i=(array_length(master.passives)-1) and rand>0 {
				fs+=1
			if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:6");
				break;
			}
			i=-1
			}
			
			}
		} else {
			//weapon
			c3t=1
			for (var i=0; i<array_length(master.weapons); i++) {
			
				if allcap = 0 {
				if master.weapons[i,4]<master.weapons[i,5] {
					if master.weapons[i,13]=1 {
				if !(choice1 = i and c1t=1) and !(choice2 = i and c2t=1) {
				if master.wepcount<master.maxweapons {
					if master.banlist[i,0]=0 {
				rand-=1
					}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
				}
				}
				} else {
					if master.weapons[i,2]=1 {
					if master.nocap=1 {
						if master.banlist[i,0]=0 {
							if master.limitmaxlevel[i,0][r3-1]>0 {
					rand-=1
							} else {
								if cycount<3 {
								r3=((r3) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice3=-1
								}
							}
						}
					}
				}
				}
			} else {
				if allcap = 0 {
					if master.weapons[i,13]=1 {
				if master.weapons[i,4]<master.weapons[i,5] {
				if !(choice1 = i and c1t=1) and !(choice2 = i and c2t=1) {
				if master.wepcount<master.maxweapons {
					if master.banlist[i,0]=0 {
				rand-=1
					}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
				}
				}
				}
				} else {
					if master.weapons[i,2]=1 {
					if master.nocap=1 {
						if master.banlist[i,0]=0 {
							if master.limitmaxlevel[i,0][r3-1]>0 {
								
					rand-=1
								
							} else {
								if cycount<3 {
								r3=((r3) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice3=-1
								}
							}
						}
						}
					}
				}
			}
			if rand = 0 {
				choice3=i
				wcount-=1
				break
			}
			if i=(array_length(master.weapons)-1) and rand>0 {
				fs+=1
			if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:7");
				break;
			}
			i=-1
			}
			}
		}
	}
	if iilp = 3 {
		cycount=0
		var rand=1+round(random(wcount+pcount-1))
		if rand>wcount {
			c4t=2
			//passive
			for (var i=0; i<array_length(master.passives); i++) {
			if master.passives[i,7]=1 or master.notice[i,1] = 1 or master.passives[i,1] = 1{
				if allcap = 0 {
				if master.passives[i,3]<master.passives[i,4] {
				if !(choice1 = i and c1t=2) and !(choice2 = i and c2t=2) {
					if !(choice3 = i and c3t=2) {
						if master.pascount<6 {
				if master.banlist[i,1]=0 {
					rand-=1
						}
					} else {
						if master.passives[i,1]=1 {
							if master.banlist[i,1]=0 {
					rand-=1
						}
						}
					}
					}
				}
				}
				} else {
					if master.passives[i,10]=1 {
						if !(choice1 = i and c1t=2) and !(choice2 = i and c2t=2) {
					if !(choice3 = i and c3t=2) {
						if master.banlist[i,1]=0 {
							if master.limitmaxlevel[i,1][r4-1]>0 {
								
					rand-=1
							
							}
						}
					}
						}
					}
				}
			}
			if rand-wcount = 0 {
				choice4=i
				pcount-=1
				break
			}
			if i=(array_length(master.passives)-1) and rand>0 {
				fs+=1
				if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:8");
				break;
			}
			i=-1
			}
			
			}
		} else {
			//weapon
			c4t=1
			for (var i=0; i<array_length(master.weapons); i++) {
			
				if allcap = 0 {
				if master.weapons[i,4]<master.weapons[i,5] {
					if master.weapons[i,13]=1 {
				if !(choice1 = i and c1t=1) and !(choice2 = i and c2t=1) {
					if !(choice3 = i and c3t=1) {
						if master.wepcount<master.maxweapons {
							if master.banlist[i,0]=0 {
				rand-=1
							}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
					}
				}
				}
				} else {
				if master.weapons[i,2]=1 {
						if master.banlist[i,0]=0 {
							if master.nocap=1 {
								if master.limitmaxlevel[i,0][r4-1]>0 {
									
					rand-=1
									
								}  else {
								if cycount<3 {
								r4=((r4) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice4=-1
								}
							}
							}
					}
					}
				}
			} else {
				
				if allcap = 0 {
					if master.weapons[i,13]=1 {
				if master.weapons[i,4]<master.weapons[i,5] {
				if !(choice1 = i and c1t=1) and !(choice2 = i and c2t=1) {
					if !(choice3 = i and c3t=1) {
						if master.wepcount<master.maxweapons {
							if master.banlist[i,0]=0 {
				rand-=1
							}
					} else {
						if master.weapons[i,2]=1 {
							if master.banlist[i,0]=0 {
							rand-=1
							}
						}
					}
					}
				}
				}
				}
				} else {
				if master.weapons[i,2]=1 {
						if master.banlist[i,0]=0 {
							if master.nocap=1 {
								
								if master.limitmaxlevel[i,0][r4-1]>0 {
									if master.weapons[i,2]=1 {
					rand-=1
								}
								}  else {
								if cycount<3 {
								r4=((r4) % 4) +1
								cycount+=1;
								} else {
									rand=-1
									choice4=-1
								}
							}
							}
					}
					}
				}
		
			}
			if rand = 0 {
				choice4=i
				wcount-=1
				break
			}
			if i=(array_length(master.weapons)-1) and rand>0 {
				fs+=1
				if fs>100 {
				show_debug_message("avoiding infinite loop, exiting level option selection. ERROR:9");
				break;
			}
			i=-1
			}
			
			
			}
		}
	}
}
var randomchoose = irandom_range(1,choicetotal)
for (var i=1; i<choicetotal+1; i++) {
	if i=1 and choice1!=-1 {
	var butt= instance_create_depth(x,y,depth-1,obj_choicebutton);
	show_debug_message("made choice button 1");
				
	if randomchoose=i {
		butt.chosen=1
	}
	butt.num=i
	}
	if i=2 and choice2!=-1 {
	var butt= instance_create_depth(x,y,depth-1,obj_choicebutton);
	show_debug_message("made choice button 2");
	if randomchoose=i {
		butt.chosen=1
	}
	butt.num=i
	}
	if i=3 and choice3!=-1 {
	var butt= instance_create_depth(x,y,depth-1,obj_choicebutton);
	show_debug_message("made choice button 3");
	if randomchoose=i {
		butt.chosen=1
	}
	butt.num=i
	}
	if i=4 and choice4!=-1 {
	var butt= instance_create_depth(x,y,depth-1,obj_choicebutton);
	show_debug_message("made choice button 4")
	if randomchoose=i {
		butt.chosen=1
	}
	butt.num=i
	}
	
	
}

var randombutt= instance_create_depth(x,y,depth-1,obj_randombutton);
randombutt.num=1

var randombutt2 = instance_create_depth(x,y,depth-1,obj_randombutton);
randombutt2.num=2

var rerollbutt= instance_create_depth(x,y,depth-1,obj_rerollbutton);
rerollbutt.num=1
rerollbutt.locked=0

var banishbutt = instance_create_depth(x,y,depth-1,obj_rerollbutton);
banishbutt.num=2
banishbutt.locked=0

var skipbutt = instance_create_depth(x,y,depth-1,obj_rerollbutton);
skipbutt.num=3
skipbutt.locked=0

global.choicemax=choicetotal
global.choiceselect=1

