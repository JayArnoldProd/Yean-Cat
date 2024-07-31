// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game() {
	//save the game
	//make sure player exists

	// create save data structure
	var save_data = ds_map_create();
	save_data[? "password"] = master.password
	save_data[? "dondadollars"] = master.dondadollars
	save_data[? "dondaunlocked"] = master.dondaunlocked
	save_data[? "upgradetot"] = master.upgradetot
	save_data[? "damagenumbers"] = master.damagenumbers
	save_data[? "moneynumbers"] = master.moneynumbers
	save_data[? "muteall"] = master.muteall
	save_data[? "specialfx"] = master.specialfx
	save_data[? "playtime"] = master.playtime
	save_data[? "overallkills"] = master.overallkills
	save_data[? "maxweapons"] = master.maxweapons
	//options
save_data[? "playername"] = master.playername
save_data[? "mastervol"]=master.mastervol
save_data[? "mastervolset"]=master.mastervolset
save_data[? "uiscale"]=master.uiscale
save_data[? "musicvol"]=master.musicvol
save_data[? "sfxvol"]=master.sfxvol
save_data[? "dialougevol"]=master.dialougevol
save_data[? "uivol"]=master.uivol

save_data[? "version"]=master.version
	
	for (i=0; i<array_length(master.weapons); i ++) {
		save_data[? "wepd"+string(i)] =  master.weapons[i,3]
		save_data[? "wepu"+string(i)] =  master.weapons[i,13]
		save_data[? "wepsp"+string(i)] =  master.weapons[i,15]
	}
	
	for (i=0; i<array_length(master.passives); i ++) {
		save_data[? "pasd"+string(i)] =  master.passives[i,2]
		save_data[? "pasu"+string(i)] =  master.passives[i,7]
		save_data[? "passp"+string(i)] =  master.passives[i,9]
	}
	
	for (i=0; i<array_length(master.notice); i ++) {
		save_data[? "noticea"+string(i)] =  master.notice[i,0]
		save_data[? "noticeb"+string(i)] =  master.notice[i,1]
		save_data[? "noticec"+string(i)] =  master.notice[i,2]
		save_data[? "noticed"+string(i)] =  master.notice[i,3]
	}
	for (i=0; i<array_length(master.visitedplanets); i ++) {
		save_data[? "vplan"+string(i)] =  master.visitedplanets[i]
	}
	for (i=0; i<array_length(master.allkills); i++) {
		save_data[? "allkills"+string(i)] =  master.allkills[i]
	}
	save_data[? "recordkill"] =  master.recordkill
	save_data[? "recordtime"] =  master.recordtime
	save_data[? "recordlevel"] =  master.recordlevel
	
	for (i=0; i<array_length(master.charrecordkill); i++) {
		save_data[? "charrecordkill"+string(i)] =  master.charrecordkill[i]
	}
	for (i=0; i<array_length(master.charrecordtime); i++) {
		save_data[? "charrecordtime"+string(i)] =  master.charrecordtime[i]
	}
	for (i=0; i<array_length(master.charrecordlevel); i++) {
		save_data[? "charrecordlevel"+string(i)] =  master.charrecordlevel[i]
	}
	for (i=0; i<array_length(master.chartotalkill); i++) {
		save_data[? "chartotalkill"+string(i)] =  master.chartotalkill[i]
	}
	save_data[? "shownmessage"] =  master.shownmessage
	save_data[? "email"] =  master.email
	
//	//character level record
//if master.charrecordlevel[master.charselect]<master.level {
//	master.charrecordlevel[master.charselect]=master.level
//}
////character kill record
//if master.charrecordkill[master.charselect]<master.killcount {
//	master.charrecordkill[master.charselect]=master.killcount
//}
////character time record
//if master.charrecordtime[master.charselect]<master.ti {
//	master.charrecordtime[master.charselect]=master.ti
//}

	for (i=0; i<array_length(master.weapons); i++) {
	save_data[? "diswep"+string(i)] = master.weapons[i,3]
	save_data[? "lockwep"+string(i)] = master.weapons[i,13]
	}
	for (i=0; i<array_length(master.items); i++) {
	save_data[? "disite"+string(i)] = master.items[i,3]
	}
	for (i=0; i<array_length(master.passives); i++) {
	save_data[? "dispas"+string(i)] = master.dispas[i]
	save_data[? "lockpas"+string(i)] = master.lockpas[i]
	}
	save_data[? "legacyversion"] = master.legacyversion
	if master.playerid>0 {
	save_data[? "playerid"] = master.playerid
	save_data[? "playernumber"] =master.playernumber
	} else {
	save_data[? "playerid"] = -1
	save_data[? "playernumber"] = -1
	}
	//unlocked //name, //level,//xp,//xpto,//Lyricism (Damage), //Rhythm (AT rate), //Flow (Movement), //Swag (Money Value), variation (evolution?,
for (i=0; i<array_length(master.characters); i ++) {
	save_data[? "charunlocked"+string(i)] =  master.characters[i,0]
	save_data[? "charname"+string(i)] =  master.characters[i,1]
	save_data[? "charlevel"+string(i)] =  master.characters[i,2]
	save_data[? "charxp"+string(i)] =  master.characters[i,3]
	save_data[? "charxpto"+string(i)] =  master.characters[i,4]
	save_data[? "charlyricism"+string(i)] =  master.characters[i,5]
	save_data[? "charrhythm"+string(i)] =  master.characters[i,6]
	save_data[? "charflow"+string(i)] =  master.characters[i,7]
	save_data[? "charswag"+string(i)] =  master.characters[i,8]
	save_data[? "charvariation"+string(i)] =  master.characters[i,9]
}
	
	if master.characters[master.charselect,0]>0 {
	save_data[? "charselect"] = master.charselect
	} else {
		save_data[? "charselect"] = 0
	}
	{
		for (i=0; i<array_length(master.itemsload); i ++) {
		save_data[? "itemsload"+string(i)]=master.itemsload[i,1]
		}
		save_data[? "hidecompletedunlocks"]=master.hidecompletedunlocks
		save_data[? "hidelockedcol"]=master.hidelockedcol
//tasks
//what it unlocks, 1requirement,2progress,3completed?,4image,5visible?,6rewardtype, 7collectionid (if item), 8 seen, cumulative?
		for (i=0; i<array_length(master.tasks); i ++) {
		save_data[? "tasksprogress"+string(i)]=master.tasks[i,2]
		save_data[? "taskscompleted"+string(i)]=master.tasks[i,3]
		save_data[? "tasksvisible"+string(i)]=master.tasks[i,5]
		save_data[? "tasksseen"+string(i)]=master.tasks[i,8]
		}
		

//achievements
//name, 1requirement, 2achieved?, 3visible?, 4rarity, 5image, 6seen, 7 progress
		for (i=0; i<array_length(master.achievements); i ++) {
		save_data[? "achievementsachieved"+string(i)]=master.achievements[i,2]
		save_data[? "achievementsvisible"+string(i)]=master.achievements[i,3]
		save_data[? "achievementsseen"+string(i)]=master.achievements[i,6]
		save_data[? "achievementsprogress"+string(i)]=master.achievements[i,7]
		}
		

//collectibles
//name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id
//state: 0 =locked, 1=unlocked, 2=obtained.
		for (i=0; i<array_length(master.collection); i ++) {
		save_data[? "collectionstate"+string(i)]=master.collection[i,1]
		save_data[? "collectionamount"+string(i)]=master.collection[i,2]
		save_data[? "collectionenabled"+string(i)]=master.collection[i,4]
		save_data[? "collectionlevel"+string(i)]=master.collection[i,6]
		save_data[? "collectionseen"+string(i)]=master.collection[i,7]
		save_data[? "collectioninshop"+string(i)]=master.collection[i,19]
		}
		


//shop
//name, 1type, 2bought?, 3price, 4collectionid, 5seen, 6image,id
		for (i=0; i<array_length(master.shop); i ++) {
		save_data[? "shopbought"+string(i)]=master.shop[i,2]
		save_data[? "shopseen"+string(i)]=master.shop[i,5]
		}
		
		if master.tutorial>2 {
		save_data[? "tutorial"]=master.tutorial
		} else {
			save_data[? "tutorial"]=0
		}
save_data[? "invisible"]=master.invisible
save_data[? "disconnected"]=master.disconnected//opt out of online play
save_data[? "banned_"]=master.banned//0=no, -1=permaban, 1-inf =how many days.
save_data[? "date_banned"]=master.datebanned
save_data[? "times_banned"]=master.timesbanned
save_data[? "last_online"]=master.last_time_online
save_data[? "last_version_played"]=master.last_version_played
for (var i=0; i<array_length(master.messages); i ++) {
	save_data[? "message_from_"+string(i)]=master.messages[i,0]
	save_data[? "message_"+string(i)]=master.messages[i,1]
	save_data[? "message_read"+string(i)]=master.messages[i,2]
	save_data[? "message_date"+string(i)]=master.messages[i,3]
//[Player From,Message,Read? (-1=N/A 0=not read, 1=notified, 2=read
}
save_data[? "friend_count"]=master.friend_count
for (var i=0; i<array_length(master.friends_list); i ++) {
	save_data[? "friends_list_name_"+string(i)]=master.friends_list[i,0]
	save_data[? "friends_list_id"+string(i)]=master.friends_list[i,1]
	save_data[? "friends_list_date"+string(i)]=master.friends_list[i,2]
	save_data[? "friends_list_best"+string(i)]=master.friends_list[i,3]
//[name, id, date became friends, best friends?]
}

save_data[? "game_progress"]=master.game_progress
for (var i=0; i<array_length(master.planet_log); i ++) {
	save_data[? "planet_log"+string(i)]=master.planet_log[i]
} //0=not visited 1=visited 2=completed
save_data[? "selected_planet"]=master.selectedstage
save_data[? "tasks_complete"]=master.tasks_completed
save_data[? "collect_unlocked"]=master.collectibles_unlocked
save_data[? "dollar_array_have"]=master.dollar_array[0]
save_data[? "dollar_array_spent"]=master.dollar_array[1]
save_data[? "dollar_array_earned"]=master.dollar_array[2]
//[have, spent, earned]
save_data[? "enemy_kc"]=master.enemy_killcount
save_data[? "boss_kc"]=master.boss_killcount
save_data[? "level_end_kc"]=master.levelender_killcount
for (var i=0; i<array_length(master.ind_boss_kills); i ++) {
save_data[? "ind_boss_kills"+string(i)]=master.ind_boss_kills[i]
}
for (var i=0; i<array_length(master.character_levels); i ++) {
	save_data[? "character_levels"+string(i)]=master.character_levels[i]
} //[0-50, 0-50, ..14 times]
save_data[? "name_text_font"]=master.name_text[0]
save_data[? "name_text_color"]=master.name_text[1]
save_data[? "name_text_ocolor"]=master.name_text[2]

//FONTS //0name, 1asset name, 2unlocked?
for (var i=0; i<array_length(master.font_array); i ++) {
save_data[? "font_array"+string(i)]=master.font_array[i,2]
}

save_data[? "permissions"] = master.permissions

//[font = 0;color = 0;outline color]
save_data[? "character_id"]=master.character_id
for (var i=0; i<array_length(master.custom_look); i ++) {
	save_data[? "custom_look"+string(i)]=master.custom_look[i]
}//[Head, Variant, Body, Variant, Trail, Variant, Hat, Variant]
for (var i=0; i<array_length(master.theme_song); i ++) {
	save_data[? "theme_song"+string(i)]=master.theme_song[i]
} //(Theme 19 = custom, bass, drum, keys, vocals,remix?)
save_data[? "login_message"]=master.login_message
for (var i=0; i<array_length(master.clan_info); i ++) {
	save_data[? "clan_info_id"]=master.clan_info[0]
	save_data[? "clan_info_name"]=master.clan_info[1]
	save_data[? "clan_info_rank"]=master.clan_info[2]
	save_data[? "clan_info_rankin"]=master.clan_info[3]
	save_data[? "clan_info_date_joined"]=master.clan_info[4]
	save_data[? "clan_info_dollars"]=master.clan_info[5]
	save_data[? "clan_info_tasks"]=master.clan_info[6]
	save_data[? "clan_info_recruited"]=master.clan_info[7]
	save_data[? "clan_info_position"]=master.clan_info[8]
	save_data[? "clan_info_recruitedby"]=master.clan_info[9]
}
//[Clan ID, 1Clan Name, 2Clan Rank, 3Rank in Clan, 4Date Joined, 
//5Dollars Donated, 6Tasks Completed, 7Members Recruited, 8Position in Clan, 9recruited by]





	}

handleDebugMessage("Saved Game", false);

var save_string = json_encode(save_data);
	ds_map_destroy(save_data);
	save_string = base64_encode(save_string);

	var file = file_text_open_write(working_directory + "yeancatsave.txt");
	file_text_write_string(file, save_string);
	file_text_close(file);
}


