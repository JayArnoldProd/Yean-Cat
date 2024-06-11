// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game() {
	//check for crystal quest sav
	if file_exists("/Library/Application Support/com.yoyogames.macyoyorunner/"+"CrystalQuestSave.txt") {
		//game_end()
	}
	
	//scr_load_game
	if file_exists(working_directory+"yeancatsave.txt") {
	var file = file_text_open_read(working_directory+"yeancatsave.txt");
	var save_string = file_text_read_string(file);
	file_text_close(file);
	save_string = base64_decode(save_string);
	var save_data = json_decode(save_string);
	
	if instance_exists(master) {
	with (master) {
	dondadollars = save_data[? "dondadollars"];
	dondadollarsprevious= save_data[? "dondadollars"];
	upgradetot = save_data[? "upgradetot"]
	dondaunlocked = save_data[? "dondaunlocked"]
	damagenumbers = save_data[? "damagenumbers"]; 
	moneynumbers = save_data[? "moneynumbers"];
	muteall = save_data[? "muteall"];
	specialfx = save_data[? "specialfx"];
		//options
	playtime=save_data[? "playtime"];
	overallkills=save_data[? "overallkills"]


mastervol=save_data[? "mastervol"]
mastervolset=save_data[? "mastervolset"]
uiscale=save_data[? "uiscale"]
musicvol=save_data[? "musicvol"]
sfxvol=save_data[? "sfxvol"]
dialougevol=save_data[? "dialougevol"]
uivol=save_data[? "uivol"]

	for (i=0; i<array_length(master.weapons); i ++) {
		weapons[i,3] = save_data[? "wepd"+string(i)]
		weapons[i,13] = save_data[? "wepu"+string(i)]
		weapons[i,15] = save_data[? "wepsp"+string(i)]
	}
				for (i=0; i<array_length(master.weapons); i++) {
	master.weapons[i,3] = save_data[? "diswep"+string(i)]
	master.weapons[i,13] = save_data[? "lockwep"+string(i)]
	master.diswep[i] = save_data[? "diswep"+string(i)]
	master.lockwep[i] = save_data[? "lockwep"+string(i)]
	
	}

version=save_data[? "version"]

with (master) {
if version="0.5.0" or version = "0.6.0" or version = "Alpha 1.0.0" {
	maxweapons=2
	maxweapset=2
	//add new weapons
	weapons[4,13]=1 //choir
	weapons[21,13]=1 //shield
	weapons[25,13]=1 //gemini
	//weapons[4,4]=1 //choir
	//weapons[21,4]=1 //shield
	//weapons[25,4]=1 //gemini
	//weapons[4,3]=1 //choir
	//weapons[21,3]=1 //shield
	//weapons[25,3]=1 //gemini
}
}

if version = "0.5.0" {
	master.maxweapons=2
	master.maxweapset=2
legacyversion="0.5.0"
tutorial=0
shownmessage=0
email=""
playername=""
playerid=-1
password=""
playernumber=1
version=master.newest_version
} else {
	if version = "0.6.0" {
		master.maxweapons=2
		master.maxweapset=2
	legacyversion=save_data[? "legacyversion"]
	playername= save_data[? "playername"]
	playernumber= save_data[? "playernumber"]
	playerid=save_data[? "playerid"]
	tutorial=save_data[? "tutorial"]
	password=""
	email=save_data[? "email"]
	if tutorial>3 {
		if playername != "" {
		shownmessage=1
		}
	}
	version=master.newest_version
	} else {
		if version = "Alpha 1.0.0" {
			master.maxweapons=2
			master.maxweapset=2
		legacyversion=save_data[? "legacyversion"]
	playername= save_data[? "playername"]
	playernumber= save_data[? "playernumber"]
	playerid=save_data[? "playerid"]
	tutorial=save_data[? "tutorial"]
	password=save_data[? "password"]
	email=save_data[? "email"]
	if tutorial>3 {
		if playername != "" {
		shownmessage=1
		}
	}	
	version=master.newest_version
		} else {
			if version = "Beta 1.0.0" {
				master.maxweapons=save_data[? "maxweapons"]
			master.maxweapset=save_data[? "maxweapons"]
	legacyversion=save_data[? "legacyversion"]
	playername= save_data[? "playername"]
	playernumber= save_data[? "playernumber"]
	playerid=save_data[? "playerid"]
	tutorial=save_data[? "tutorial"]
	password=save_data[? "password"]
	email=save_data[? "email"]
	if tutorial>3 {
		if playername != "" {
		shownmessage=1
		}
	}
			} else {
					master.maxweapons=save_data[? "maxweapons"]
			master.maxweapset=save_data[? "maxweapons"]
	legacyversion=save_data[? "legacyversion"]
	playername= save_data[? "playername"]
	playernumber= save_data[? "playernumber"]
	playerid=save_data[? "playerid"]
	tutorial=save_data[? "tutorial"]
	password=save_data[? "password"]
	email=save_data[? "email"]
	if tutorial>3 {
		if playername != "" {
		shownmessage=1
		}
	}
	
				if version = master.newest_version {
					//newest networking save files
master.invisible=save_data[? "invisible"]
master.disconnected=save_data[? "disconnected"]//opt out of online play
master.banned=save_data[? "banned_"]//0=no, -1=permaban, 1-inf =how many days.
master.datebanned=save_data[? "date_banned"]
master.timesbanned=save_data[? "times_banned"]
master.last_time_online=save_data[? "last_online"]
master.last_version_played=save_data[? "last_version_played"]
for (var i=0; i<array_length(master.messages); i ++) {
	master.messages[i,0]=save_data[? "message_from_"+string(i)]
	master.messages[i,1]=save_data[? "message_"+string(i)]
	master.messages[i,2]=save_data[? "message_read"+string(i)]
	master.messages[i,3]=save_data[? "message_date"+string(i)]
//[Player From,Message,Read? (-1=N/A 0=not read, 1=notified, 2=read
}
master.friend_count=save_data[? "friend_count"]
for (var i=0; i<array_length(master.friends_list); i ++) {
	master.friends_list[i,0]=save_data[? "friends_list_name_"+string(i)]
	master.friends_list[i,1]=save_data[? "friends_list_id"+string(i)]
	master.friends_list[i,2]=save_data[? "friends_list_date"+string(i)]
	master.friends_list[i,3]=save_data[? "friends_list_best"+string(i)]
//[name, id, date became friends, best friends?]
}

master.game_progress=save_data[? "game_progress"]
for (var i=0; i<array_length(master.planet_log); i ++) {
master.planet_log[i]=save_data[? "planet_log"+string(i)]
} //0=not visited 1=visited 2=completed
master.selectedstage=save_data[? "selected_planet"]
master.tasks_completed=save_data[? "tasks_complete"]
master.collectibles_unlocked=save_data[? "collect_unlocked"]
master.dollar_array[0]=save_data[? "dollar_array_have"]
master.dollar_array[1]=save_data[? "dollar_array_spent"]
master.dollar_array[2]=save_data[? "dollar_array_earned"]
//[have, spent, earned]
master.enemy_killcount=save_data[? "enemy_kc"]
master.boss_killcount=save_data[? "boss_kc"]
master.levelender_killcount=save_data[? "level_end_kc"]
for (var i=0; i<array_length(master.ind_boss_kills); i ++) {
master.ind_boss_kills[i]=save_data[? "ind_boss_kills"+string(i)]
}
for (var i=0; i<array_length(master.character_levels); i ++) {
master.character_levels[i]=save_data[? "character_levels"+string(i)]
} //[0-50, 0-50, ..14 times]
master.name_text[0]=save_data[? "name_text_font"]
master.name_text[1]=save_data[? "name_text_color"]
master.name_text[2]=save_data[? "name_text_ocolor"]
//FONTS //0name, 1asset name, 2unlocked?
for (var i=0; i<array_length(master.font_array); i ++) {
master.font_array[i,2]=save_data[? "font_array"+string(i)]
}
master.permissions=save_data[? "permissions"]
//[font = 0;color = 0;outline color]
master.character_id=save_data[? "character_id"]
for (var i=0; i<array_length(master.customlook); i ++) {
	master.custom_look[i]=save_data[? "custom_look"+string(i)]
}//[Head, Variant, Body, Variant, Trail, Variant, Hat, Variant]
for (var i=0; i<array_length(master.theme_song); i ++) {
	master.theme_song[i]=save_data[? "theme_song"+string(i)]
} //(Theme 19 = custom, bass, drum, keys, vocals,remix?)
master.login_message=save_data[? "login_message"]
for (var i=0; i<array_length(master.clan_info); i ++) {
	master.clan_info[0]=save_data[? "clan_info_id"]
	master.clan_info[1]=save_data[? "clan_info_name"]
	master.clan_info[2]=save_data[? "clan_info_rank"]
	master.clan_info[3]=save_data[? "clan_info_rankin"]
	master.clan_info[4]=save_data[? "clan_info_date_joined"]
	master.clan_info[5]=save_data[? "clan_info_dollars"]
	master.clan_info[6]=save_data[? "clan_info_tasks"]
	master.clan_info[7]=save_data[? "clan_info_recruited"]
	master.clan_info[8]=save_data[? "clan_info_position"]
	master.clan_info[9]=save_data[? "clan_info_recruitedby"]
}
//[Clan ID, 1Clan Name, 2Clan Rank, 3Rank in Clan, 4Date Joined, 
//5Dollars Donated, 6Tasks Completed, 7Members Recruited, 8Position in Clan, 9recruited by]

					
				}
			
		}
	}
	}
}
if legacyversion="0.5.0" {
	//for (var gg=0; gg<array_length(splash);gg++) {
	splash[0]="Playing since Alpha 0.5.0"
	//}
}
if legacyversion="0.6.0" {
	//for (var gg=0; gg<array_length(splash);gg++) {
	splash[0]="Playing since Alpha 0.6.0"
	//}
}
if legacyversion="Alpha 1.0.0" {
	//for (var gg=0; gg<array_length(splash);gg++) {
	splash[0]="Playing since Alpha 1.0.0"
	//}
}
if legacyversion="Beta 1.0.0" {
	//for (var gg=0; gg<array_length(splash);gg++) {
	splash[0]="Playing since Beta 1.0.0"
	//}
}
if legacyversion="Beta 1.5.0" {
	//for (var gg=0; gg<array_length(splash);gg++) {
	splash[0]="Playing since Beta 1.5.0"
	//}
}
//optionarray=[
//[mastervolset,"MASTER VOLUME"],
//[musicvol,"MUSIC VOLUME"],
//[sfxvol,"SFX VOLUME"],
//[dialougevol,"DIALOUGE VOLUME"],
//[uivol,"UI VOLUME"],
//[uiscale,"UI SCALE"]
//]
scaleg=uiscale
scalegg=uiscale
		

		for (i=0; i<array_length(itemsload); i ++) {
		itemsload[i,1]=save_data[? "itemsload"+string(i)]
		}
		hidecompletedunlocks=save_data[? "hidecompletedunlocks"]
		hidelockedcol=save_data[? "hidelockedcol"]
//tasks
//what it unlocks, 1requirement,2progress,3completed?,4image,5visible?,6rewardtype, 7collectionid (if item), 8 seen, cumulative?
		for (i=0; i<array_length(tasks); i ++) {
		tasks[i,2]=save_data[? "tasksprogress"+string(i)]
		tasks[i,3]=save_data[? "taskscompleted"+string(i)]
		tasks[i,5]=save_data[? "tasksvisible"+string(i)]
		tasks[i,8]=save_data[? "tasksseen"+string(i)]
		}
		for (i=0; i<array_length(master.visitedplanets); i ++) {
		visitedplanets[i]=save_data[? "vplan"+string(i)] 
		}
		

//achievements
//name, 1requirement, 2achieved?, 3visible?, 4rarity, 5image, 6seen, 7 progress
		for (i=0; i<array_length(achievements); i ++) {
		collection[i,7]=save_data[? "achievementsachieved"+string(i)]
		achievements[i,3]=save_data[? "achievementsvisible"+string(i)]
		achievements[i,6]=save_data[? "achievementsseen"+string(i)]
		achievements[i,7]=save_data[? "achievementsprogress"+string(i)]
		}
		

//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id
//state: 0 =locked, 1=unlocked, 2=obtained.
		for (i=0; i<array_length(collection); i ++) {
		collection[i,1]=save_data[? "collectionstate"+string(i)]
		collection[i,2]=save_data[? "collectionamount"+string(i)]
		collection[i,4]=save_data[? "collectionenabled"+string(i)]
		collection[i,6]=save_data[? "collectionlevel"+string(i)]
		collection[i,7]=save_data[? "collectionseen"+string(i)]
		collection[i,19]=save_data[? "collectioninshop"+string(i)]
		}
		


//shop
//name, 1type, 2bought?, 3price, 4collectionid, 5seen, 6image,id
		for (i=0; i<array_length(shop); i ++) {
		shop[i,2] =save_data[? "shopbought"+string(i)]
		shop[i,5] =save_data[? "shopseen"+string(i)]
		}
		





	
	//for (i=0; i<array_length(master.weapons); i ++) {
	//	weapons[i,3] = save_data[? "wepd"+string(i)]
	//	weapons[i,13] = save_data[? "wepu"+string(i)]
	//}
	
	for (i=0; i<array_length(master.passives); i ++) {
		passives[i,2] = save_data[? "pasd"+string(i)]
		passives[i,7] = save_data[? "noticeb"+string(i)]
		passives[i,9] = save_data[? "passp"+string(i)]
	}

	
	//for (i=0; i<array_length(master.passives); i ++) {
	//	passives[i,2] = 1
	//	passives[i,7] = 1
	//}
	
	for (i=0; i<array_length(master.notice); i ++) {
		master.notice[i,0] = save_data[? "noticea"+string(i)]
		master.notice[i,1] = save_data[? "noticeb"+string(i)]
		master.notice[i,2] = save_data[? "noticec"+string(i)]
		master.notice[i,3] = save_data[? "noticed"+string(i)]
	}
	//for (i=0; i<array_length(master.notice); i ++) {
	//	master.notice[i,0] = 1
	//	master.notice[i,1] = 1
	//	master.notice[i,2] = save_data[? "noticec"+string(i)]
	//	master.notice[i,3] = save_data[? "noticed"+string(i)]
	//}

	for (i=0; i<array_length(master.items); i++) {
		master.items[i,3] = save_data[? "disite"+string(i)]
		master.disite[i] = save_data[? "disite"+string(i)]
	}
	for (i=0; i<array_length(master.passives); i++) {
	//master.passives[i,2] = save_data[? "dispas"+string(i)]
	master.passives[i,7] = save_data[? "lockpas"+string(i)]
	master.dispas[i] = save_data[? "dispas"+string(i)]
	master.lockpas[i] = save_data[? "lockpas"+string(i)]
	}
	
	for (i=0; i<array_length(master.characters); i ++) {
	master.characters[i,0] = save_data[? "charunlocked"+string(i)] 
	master.characters[i,1] = save_data[? "charname"+string(i)]
	master.characters[i,2] = save_data[? "charlevel"+string(i)]
	master.characters[i,3] = save_data[? "charxp"+string(i)]
	master.characters[i,4] = save_data[? "charxpto"+string(i)]
	master.characters[i,5] = save_data[? "charlyricism"+string(i)]
	master.characters[i,6] = save_data[? "charrhythm"+string(i)]
	master.characters[i,7] = save_data[? "charflow"+string(i)]
	master.characters[i,8] = save_data[? "charswag"+string(i)]
	master.characters[i,9] = save_data[? "charvariation"+string(i)]
	}
	master.charselect = save_data[? "charselect"]
		for (i=0; i<array_length(master.allkills); i++) {
		master.allkills[i] = save_data[? "allkills"+string(i)]
	}
	master.recordkill= save_data[? "recordkill"]
	master.recordtime=save_data[? "recordtime"]
	master.recordlevel=save_data[? "recordlevel"]
	
	for (i=0; i<array_length(master.charrecordkill); i++) {
		master.charrecordkill[i]=save_data[? "charrecordkill"+string(i)]
	}
	for (i=0; i<array_length(master.charrecordtime); i++) {
		master.charrecordtime[i]=save_data[? "charrecordtime"+string(i)]
	}
	for (i=0; i<array_length(master.charrecordlevel); i++) {
		master.charrecordlevel[i]=save_data[? "charrecordlevel"+string(i)]
	}
	for (i=0; i<array_length(master.chartotalkill); i++) {
		master.chartotalkill[i]=save_data[? "chartotalkill"+string(i)]
	}

if master.shownmessage!=-1 {
	master.shownmessage=save_data[? "shownmessage"]
} else {
	master.shownmessage=0
}

if playername = "" {
		shownmessage=0
		}
	
	startmusic=0
		}
	}


		ds_map_destroy(save_data);
	}
}

