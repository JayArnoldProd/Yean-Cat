// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_tasks(){

	for (var i=0; i<array_length(tasks); i++) {
//EARTH
//Life of the party
		#region
		if i=0 {
			if tasks[i,3]=0 {
				var targetgoal=3*60
				tasks[i,2]=clamp(ti/(targetgoal),tasks[i,2],1)
				//survive 3 minutes
				if minute>=3 {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					//reward is weapon
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					//reward is music
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion

//Glory
		#region
		if i=1 {
			if tasks[i,3]=0 {
				var targetgoal=600
				tasks[i,2]=clamp(charrecordtime[0]/(targetgoal),tasks[i,2],1)
				//survive 10 minutes with yeancat
				if charrecordtime[0]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Love
		#region
		if i=2 {
			if tasks[i,3]=0 {
				var targetgoal=500
				tasks[i,2]=clamp(recordkill/(targetgoal),tasks[i,2],1)
				//kill 500 enemies in 1 game
				if killcount>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Taylor Swan

//GOLD MINES
//Spectacle
		#region
		if i=4 {
			if tasks[i,3]=0 {
				var targetgoal=600
				tasks[i,2]=clamp(charrecordtime[1]/(targetgoal),tasks[i,2],1)
				//survive 10 minutes with taylor swan
				if charrecordtime[1]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Cancelled
		#region
		if i=5 {
			if tasks[i,3]=0 {
				var targetgoal=100
				tasks[i,2]=clamp(allkills[4]/(targetgoal),tasks[i,2],1)
				//kill 100 blackballs
				if allkills[4]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Wealth
		#region
		if i=6 {
			if tasks[i,3]=0 {
				var targetgoal=100
				tasks[i,2]=clamp(allkills[7]/(targetgoal),tasks[i,2],1)
				//kill 100 gold diggers
				if allkills[7]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Futurtle

//UNIVERSE CITY
//Graduate
		#region
		if i=8 {
			if tasks[i,3]=0 {
				var targetgoal=300
				tasks[i,2]=clamp(allkills[11]/(targetgoal),tasks[i,2],1)
				//kill 300 graduates
				if allkills[11]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Water into Drank
		#region
		if i=9 {
			if tasks[i,3]=0 {
				var targetgoal=600
				tasks[i,2]=clamp(charrecordtime[2]/(targetgoal),tasks[i,2],1)
				//survive 10 minutes with futurtle
				if charrecordtime[2]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Fame
		#region
		if i=10 {
			if tasks[i,3]=0 {
				var targetgoal=3000
				tasks[i,2]=clamp(chartotalkillgame[2]/(targetgoal),tasks[i,2],1)
				//kill 3000 enemies with futurtle
				if chartotalkillgame[2]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Kim Chameleon

//ICY HEART
//Law of Attraction
		#region
		if i=12 {
			if tasks[i,3]=0 {
				var targetgoal=600
				tasks[i,2]=clamp(charrecordtime[3]/(targetgoal),tasks[i,2],1)
				//survive 10 minutes with kim chameleon
				if charrecordtime[3]>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Winter's Cold
		#region
		if i=13 {
			if tasks[i,3]=0 {
				var targetgoal=300
				var testval=runkills[16]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 300 frozen hearts in 1 game
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Heartbreak
		#region
		if i=14 {
			if tasks[i,3]=0 {
				var targetgoal=1000
				var testval=allkills[18]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 1000 broken rings
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Travis Squawk

//FANTASIA
//Power
		#region
		if i=16 {
			if tasks[i,3]=0 {
				var targetgoal=5000
				var testval=chartotalkill[4]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 5000 enemies with travis squawk
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Free in Christ
		#region
		if i=17 {
			if tasks[i,3]=0 {
				var targetgoal=900
				var testval=charrecordtime[3]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 15 minutes with travis
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Monster
		#region
		if i=18 {
			if tasks[i,3]=0 {
				var targetgoal=500
				var testval=runkills[20]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 500 monsters in 1 game
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Bee-yonce

//KING'S KINGDOM
//Ego
		#region
		if i=20 {
			if tasks[i,3]=0 {
				var targetgoal=100000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 100,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Majestic
		#region
		if i=21 {
			if tasks[i,3]=0 {
				var targetgoal=900
				var testval=charrecordtime[5]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 15 minutes with beyonce
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Wisdom
		#region
		if i=22 {
			if tasks[i,3]=0 {
				var targetgoal=2*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//amass 2 hours of play time
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Peacocky 96

//LAND OF LUCY
//Mercy
		#region
		if i=24 {
			if tasks[i,3]=0 {
				var targetgoal=900
				var testval=charrecordtime[6]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 15 minutes with peacocky 96
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Lucille
		#region
		if i=25 {
			if tasks[i,3]=0 {
				var targetgoal=200000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 200,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Donda's Blessing
		#region
		if i=26 {
			if tasks[i,3]=0 {
				var targetgoal=3*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//amass 3 hours of playtime
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Lil Hump

//YETOPIA
//Free Will
		#region
		if i=28 {
			if tasks[i,3]=0 {
				var targetgoal=4*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//amass 4 hours of playtime
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//808s and Heartbreaks
		#region
		if i=29 {
			if tasks[i,3]=0 {
				var targetgoal=300000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 300,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Prescription
		#region
		if i=30 {
			if tasks[i,3]=0 {
				var targetgoal=900
				var testval=charrecordtime[7]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 15 minutes with lil pump
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Rehino

//PABLO
//Heart
		#region
		if i=32 {
			if tasks[i,3]=0 {
				var targetgoal=900
				var testval=charrecordtime[8]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 15 minutes with rihino
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Ella y El
		#region
		if i=33 {
			if tasks[i,3]=0 {
				var targetgoal=400000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 400,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Einstein
		#region
		if i=34 {
			if tasks[i,3]=0 {
				var targetgoal=5*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//Amass 5 hours of playtime
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Emunem

//DEVINE DOMAIN
//Faith
		#region
		if i=36 {
			if tasks[i,3]=0 {
				var targetgoal=1200
				var testval=charrecordtime[9]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 20 minutes with emunem
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Ye of Little Faith
		#region
		if i=37 {
			if tasks[i,3]=0 {
				var targetgoal=500000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 500,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Miracle
		#region
		if i=38 {
			if tasks[i,3]=0 {
				var targetgoal=6*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//amass 6 hours of playtime
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//21 Salamander

//GHOSTOWN
//Vanish Mode
		#region
		if i=40 {
			if tasks[i,3]=0 {
				var targetgoal=8*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//amass 8 hours of playtime
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Chasing Ghosts
		#region
		if i=41 {
			if tasks[i,3]=0 {
				var targetgoal=600000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 600,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Curse
		#region
		if i=42 {
			if tasks[i,3]=0 {
				var targetgoal=1200
				var testval=charrecordtime[10]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 20 minutes with 21 salamander
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Lil Sheep

//STORMY SANDS
//Longevity
		#region
		if i=44 {
			if tasks[i,3]=0 {
				var targetgoal=1500
				var testval=charrecordtime[11]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 25 minutes with lil sheep
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//40 Years
		#region
		if i=45 {
			if tasks[i,3]=0 {
				var targetgoal=750000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 750,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Bound 2 Fortune
		#region
		if i=46 {
			if tasks[i,3]=0 {
				var targetgoal=3000000
				var testval=dondadollars
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//have 3,000,000 dollars
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Squid Cudi

//VULTURE VALLEY
//Clone
		#region
		if i=48 {
			if tasks[i,3]=0 {
				var targetgoal=10*60*60
				var testval=playtimegame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//amass 10 hours of playtime
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Praise God
		#region
		if i=49 {
			if tasks[i,3]=0 {
				var targetgoal=1000000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 1 million enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Wonder
		#region
		if i=50 {
			if tasks[i,3]=0 {
				var targetgoal=1500
				var testval=charrecordtime[12]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 25 minutes with squid cudi
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Kid Boo

//ENDONDA
//Champion
		#region
		if i=52 {
			if tasks[i,3]=0 {
				var targetgoal=1800
				var testval=charrecordtime[13]
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//survive 30 minutes with kid boo
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//In the End
		#region
		if i=53 {
			if tasks[i,3]=0 {
				var targetgoal=2000000
				var testval=overallkillsgame
				tasks[i,2]=clamp(testval/(targetgoal),tasks[i,2],1)
				//kill 2,000,000 enemies
				if testval>=targetgoal {
					//spawn notification
					var noti= instance_create_layer(room_width/2,10,"uii",obj_notification)
						//type is task
						noti.typee=1
						
						//set to complete
					tasks[i,3]=1
					tasks[i,2]=1
					//if reward is passive
					if tasks[i,6]=2 {
						passives[tasks[i,7],9]=1
						
							for (var ii=0; ii<array_length(master.items); ii++) {
								if items[ii,0] = obj_passiveitem { 
									if items[ii,5] = tasks[i,7] {
										items[tasks[i,7]+15,1]=1
										itemsload[tasks[i,7]+15,1]=1	
										
										if master.notice[tasks[i,7],0]=0 {
										master.notice[tasks[i,7],0]=1
										}
										break
									}
								}
							}
							passives[tasks[i,7],7] = 1
						
					}
					if tasks[i,6]=1 {
						weapons[tasks[i,7],13]=1
							for (var iii=0; iii<array_length(master.items);iii++) {
								if items[iii,0] = obj_weaponitem {
									if items[iii,5] = tasks[i,7] {
										items[tasks[i,7]+40,1]=1
										itemsload[tasks[i,7]+40,1]=1	
										
										break
									}
								}
							}
						
					}
					if tasks[i,6]=5 {
	
							for (var iiii=0; iiii<array_length(master.collection);iiii++) {
								if collection[iiii,0] = album {
									if collection[iiii,17] = tasks[i,7] {
										collection[iiii,1]=1
										
										break
									}
								}
							}
						
					}
						noti.desc2=tasks[i,10]
						noti.reward=tasks[i,6]
						noti.namee="Task Complete!"
						noti.namee2=tasks[i,0]+" Unlocked"
						noti.desc=tasks[i,1]		
						noti.image=tasks[i,4]
						noti.durationset=10
						noti.duration=10*(1000000)
						noti.imageind=0
						noti.clickable=1
						noti.relativeid=tasks[i,7]
						
						
						//create notification dropdown
						//add statistics game and global
						//add revive screen with ad button
						//create new item notification
						//create achievement notification
						//enemy tracker and boss
					}
		
			}
		}
		#endregion
//Dracoon

	
	
	}
}