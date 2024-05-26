// STEP Event of obj_controlhs
if master.spawnthings=1 and !instance_exists(restar) {
	exit
}

//makes characters oscillate on the leaderboard (draw event stuff)
blw = .8+.4*(0.5 * sin(pi*3/2+ 2 * pi * (time/15) / 15) + 0.5)
time+=.5
// Animation logic
if rate > 0 {
    rate -= 0.5 + 0.5 * abs(20) / 20;
} else {
    rate = rateset;
    anicount += 1;
}

if anicount == 5 {
    anicount = 0;
}

// Fade in logic
if instance_exists(obj_achievments) {
    if obj_achievments.onscreen != 0 {
        if fadein < 100 {
            fadein += 1;
        } else {
            fadein = 100;
        }
    } else {
        if fadein > 0 {
            fadein -= 1;
        } else {
            fadein = 0;
        }
    }
} else {
    if fadein > 0 {
        fadein -= 1;
    } else {
        fadein = 0;
    }
}


// Keyboard input for leaderboard navigation
if instance_exists(obj_achievments) {
if (input_check_pressed("right")) {
    selected = (selected < array_length(global.data) - 1) ? selected + 1 : 0;
}

if (input_check_pressed("left")) {
    selected = (selected > 0) ? selected - 1 : array_length(global.data) - 1;
}

if (input_check("right")) {
	scroll_speed-=4*global.room_speed_set/1000000*delta_time
	if scroll_speed<=0 {
		if scroll_counter<4 {
		scroll_speed=256
		} else {
			if scroll_counter<12 {
				scroll_speed=128
			} else {
				if scroll_counter<28 {
					scroll_speed=64
				} else {
					scroll_speed=32
				}
			}
		}
		selected = (selected < array_length(global.data) - 1) ? selected + 1 : 0;
		scroll_counter+=1
	}
} else {
	if input_check_released("right") {
		scroll_speed=256 //(1 beat)
		 scroll_counter=0
	}
}

if (input_check("left")) {
	scroll_speed-=4*global.room_speed_set/1000000*delta_time
	if scroll_speed<=0 {
		if scroll_counter<4 {
		scroll_speed=256
		} else {
			if scroll_counter<12 {
				scroll_speed=128
			} else {
				if scroll_counter<28 {
					scroll_speed=64
				} else {
					scroll_speed=32
				}
			}
		}
		scroll_counter+=1
		selected = (selected > 0) ? selected - 1 : array_length(global.data) - 1;
	}
} else {
	if input_check_released("left") {
		scroll_speed=256 //(1 beat)
		scroll_counter=0
	}
}
}



// Calculating player's strongest character and combined level
var hcl = 0;
var hc = 0;
var cl = 0;
for (var dd = 0; dd < array_length(master.characters); dd++) {
    if master.characters[dd, 0] = 1 {
        if master.characters[dd, 2] > hcl {
            hcl = master.characters[dd, 2];
            hc = dd;
        }
        cl += master.characters[dd, 2];
    }
}
	var mess_am=0;
		var _from=["",""];
		var _message=["",""];
		var _read=[-1,-1];
		var _date=[0,0];
		var fr_name_ = [""]
		var fr_id_ = [-1]
		var fr_date_ = [0]
		var fr_best_ = [0]
			for (var po=0;po<array_length(master.messages);po++) {
				if master.messages[po,2] !=-1 {
				mess_am+=1
				}
			}
			for (var poo=0;poo<mess_am;poo++) {
				_from[poo]=master.messages[poo,0]
				_message[poo]=master.messages[poo,1]
				_read[poo]=master.messages[poo,2]
				_date[poo]=master.messages[poo,3]
			}
			for (var fr=0;fr<array_length(master.friends_list);fr++) {
				fr_name_[fr] = master.friends_list[fr,0]
				fr_id_[fr] = master.friends_list[fr,1]
				fr_date_[fr] = master.friends_list[fr,2]
				fr_best_[fr] = master.friends_list[fr,3]
			}
			
// Player data update/addition logic

var onboard = 0;
if os_is_network_connected(){

	//check to update
if master.playername != "" and master.playerid > 0 and synked = 0 {
	//needs update
	
	
   show_debug_message("Checking for player update or addition");
   var docb = global.data;
     // Reset onboard status each step
    for (var ij = 0; ij < array_length(docb); ij++) {
		if !(global.data == -1) {
        var _doc =docb[ij];
		if _doc.playerid == master.playerid {
			
			show_debug_message("Updating existing player data for ID: " + string(master.playerid));
			var idf = _doc.id

			var _doc_ = {
            named: master.playername,
            kills: master.overallkills,
            highestlevel: master.recordlevel,
            combinedlevel: cl, 
            playtime: master.playtime,
            strongestcharacter: hc,
            strongestlevel: hcl,
            longestgame: master.recordtime,
            mostkills: master.recordkill,
            playerid: master.playerid,
			playernumber: master.playernumber,
            email: master.email,
			lversion: master.legacyversion,
			tw_dollars: {
				da_have: master.dollar_array[0],
				db_spent: master.dollar_array[1],
				dc_earned: master.dollar_array[2]
			},//[have,spent,earned]
			u_password: master.password,
			u_invisible: master.invisible,
			u_disconnected: master.disconnected,//opt out of online play
			u_banned: master.banned,//0=no -1=permaban, 1-inf =how many days.
			u_datebanned: master.datebanned,
			u_timesbanned: master.timesbanned,
			u_last_time_online: master.last_time_online,
			u_last_version_played: master.last_version_played,
			u_messages: {
					a_from: _from,
					b_message: _message,
					c_read: _read,
					d_date: _date
			},//[Player From,Message,Read? (-1=N/A 0=not read, 1=read
			u_friend_count: master.friend_count,//
			u_friends_list: {
				f_name: fr_name_,
				f_id: fr_id_,
				f_date: fr_date_,
				f_best: fr_best_
			}, //[name,id,date became friends,best friends?]
			u_game_progress: master.game_progress,
			u_planet_log: {
				_earth: master.planet_log[0],
				_goldmines: master.planet_log[1],
				_university: master.planet_log[2],
				_icyheart: master.planet_log[3],
				_fantasia: master.planet_log[4],
				_kingdom: master.planet_log[5],
				_lucy: master.planet_log[6],
				_yetopia: master.planet_log[7],
				_pablo: master.planet_log[8],
				_divine: master.planet_log[9],
				_ghost: master.planet_log[10],
				_stormy: master.planet_log[11],
				_vulture: master.planet_log[12],
				_endonda: master.planet_log[13]
			},//[0,0,0,0,0,0,0,0,0,0,0,0,0,0] 1=visited 2=completed
			u_planet_on: master.selectedstage,//
			u_tasks_completed: master.tasks_completed,
			u_collectibles_unlocked: master.collectibles_unlocked,
			u_enemy_killcount: master.enemy_killcount,
			u_boss_killcount: master.boss_killcount,
			u_ind_boss_kills: {
				_taylorswan: master.ind_boss_kills[0],
				_futurtle: master.ind_boss_kills[1],
				_kimk: master.ind_boss_kills[2],
				_traviss: master.ind_boss_kills[3],
				_beeyonce: master.ind_boss_kills[4],
				_tekashi: master.ind_boss_kills[5],
				_lilhump: master.ind_boss_kills[6],
				_rehino: master.ind_boss_kills[7],
				_emunem: master.ind_boss_kills[8],
				_twentyone: master.ind_boss_kills[9],
				_lilsheep: master.ind_boss_kills[10],
				_squidcudi: master.ind_boss_kills[11],
				_kidboo: master.ind_boss_kills[12],
				_dracoon: master.ind_boss_kills[13],
				_bianca: master.ind_boss_kills[14],
				_fourbats: master.ind_boss_kills[15],
				_pumat: master.ind_boss_kills[16],
				_toastmalone: master.ind_boss_kills[17],
				_tydolla: master.ind_boss_kills[18],
				_finalboss: master.ind_boss_kills[19]
			}, //[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
			u_levelender_killcount: master.levelender_killcount,
			u_character_levels: {
				_taylorswan_: master.character_levels[0],
				_futurtle_: master.character_levels[1],
				_kimk_: master.character_levels[2],
				_traviss_: master.character_levels[3],
				_beeyonce_: master.character_levels[4],
				_tekashi_: master.character_levels[5],
				_lilhump_: master.character_levels[6],
				_rehino_: master.character_levels[7],
				_emunem_: master.character_levels[8],
				_twentyone_: master.character_levels[9],
				_lilsheep_: master.character_levels[10],
				_squidcudi_: master.character_levels[11],
				_kidboo_: master.character_levels[12],
				_dracoon_: master.character_levels[13],
				_bianca_: master.character_levels[14],
				_fourbats_: master.character_levels[15],
				_pumat_: master.character_levels[16],
				_toastmalone_: master.character_levels[17],
				_tydolla_: master.character_levels[18],
				_custom_char_: master.character_levels[19]
			}, //[0-50,0-50,..14 times]
			u_name_text: {
				n_font: master.name_text[0],
				n_col_one: master.name_text[1],
				n_col_out: master.name_text[2]
			}, //[font,color,outline color]
			u_character_id: master.character_id,//0-19, 20=custom)
			u_custom_look: {
				cus_head: master.custom_look[0],
				cus_head_type: master.custom_look[1],
				cus_body: master.custom_look[2],
				cus_body_type: master.custom_look[3],
				cus_trail: master.custom_look[4],
				cus_trail_type: master.custom_look[5],
				cus_hat: master.custom_look[6],
				cus_hat_type: master.custom_look[7]
			},//[Head, Variant, Body, Variant, Trail, Variant]
			u_theme_song: {
				cus_theme: master.theme_song[0],
				cus_bass: master.theme_song[1],
				cus_drums: master.theme_song[2],
				cus_keys: master.theme_song[3],
				cus_vocals: master.theme_song[4],
				cus_remix: master.theme_song[5]
			},//(Theme (if not custom), bass, drums, keys, vocals, remix)
			u_login_message: master.login_message,//displays at login then clears
			u_clan_info: {
				clan_id: master.clan_info[0],
				clan_name: master.clan_info[1],
				clan_rank: master.clan_info[2],
				clan_rank_in: master.clan_info[3],
				clan_date: master.clan_info[4],
				clan_donated: master.clan_info[5],
				clan_tasks: master.clan_info[6],
				clan_mr: master.clan_info[7],
				clan_position: master.clan_info[8],
				clan_rb: master.clan_info[9]
			},// master.clan_info,//[Clan ID, Clan Name, Clan Rank, Rank in Clan, Date Joined, Dollars Donated, Tasks Completed, Members Recruited, Position in Clan, recruited by]
			u_donda_3_unlocked: master.dondaunlocked,
			v_permissions: master.permissions//
        }
		_doc_.id=idf
		global.data[ij]=_doc_
		_doc=_doc_
		var _doc_s=json_stringify(_doc_)

			
			
			var updateResponse = idf
			root="highscores"+"/"+string(_doc_.id)
			listenerId=FirebaseFirestore(root).Update(_doc_s);  // Update Firebase
			show_debug_message("Update Response: " + string(updateResponse));
            onboard = 1;
            synked = 1;
			//brrk = 1
			exit;
   
			
		}
		}
		
		if ij >= array_length(docb) {
			onboard=2
			show_debug_message("Player ID: " + string(master.playerid) + ", Synked: " + string(synked) + ", Onboard: " + string(onboard));
			
		}
		if onboard=2 {
			break
			}
		show_debug_message("Player ID: " + string(master.playerid) + ", Synked: " + string(synked) + ", Onboard: " + string(onboard));
	if onboard=2 {
		break
	}
	}
		//break;
	//}


    if (onboard = 2) {
			
        var dt=real(string(date_current_datetime()))*100
		show_debug_message("Adding new player data for ID: " + string(dt));
		var idd = array_length(global.data)+1
			master.playernumber=idd
			master.playerid=dt
        var _doc = {
            named: master.playername,
            kills: master.overallkills,
            highestlevel: master.recordlevel,
            combinedlevel: cl,
            playtime: master.playtime,
            strongestcharacter: hc,
            strongestlevel: hcl,
            longestgame: master.recordtime,
            mostkills: master.recordkill,
            playerid: dt,
			playernumber: master.playernumber,
            email: master.email,
			lversion: master.legacyversion,
			tw_dollars: {
				da_have: master.dollar_array[0],
				db_spent: master.dollar_array[1],
				dc_earned: master.dollar_array[2]
			},//[have,spent,earned]
			u_password: master.password,
			u_invisible: master.invisible,
			u_disconnected: master.disconnected,//opt out of online play
			u_banned: master.banned,//0=no -1=permaban, 1-inf =how many days.
			u_datebanned: master.datebanned,
			u_timesbanned: master.timesbanned,
			u_last_time_online: master.last_time_online,
			u_last_version_played: master.last_version_played,
			u_messages: {
					a_from: _from,
					b_message: _message,
					c_read: _read,
					d_date: _date
			},//[Player From,Message,Read? (-1=N/A 0=not read, 1=read
			u_friend_count: master.friend_count,//
			u_friends_list: {
				f_name: fr_name_,
				f_id: fr_id_,
				f_date: fr_date_,
				f_best: fr_best_
			}, //[name,id,date became friends,best friends?]
			u_game_progress: master.game_progress,
			u_planet_log: {
				_earth: master.planet_log[0],
				_goldmines: master.planet_log[1],
				_university: master.planet_log[2],
				_icyheart: master.planet_log[3],
				_fantasia: master.planet_log[4],
				_kingdom: master.planet_log[5],
				_lucy: master.planet_log[6],
				_yetopia: master.planet_log[7],
				_pablo: master.planet_log[8],
				_divine: master.planet_log[9],
				_ghost: master.planet_log[10],
				_stormy: master.planet_log[11],
				_vulture: master.planet_log[12],
				_endonda: master.planet_log[13]
			},//[0,0,0,0,0,0,0,0,0,0,0,0,0,0] 1=visited 2=completed
			u_planet_on: master.selectedstage,//
			u_tasks_completed: master.tasks_completed,
			u_collectibles_unlocked: master.collectibles_unlocked,
			u_enemy_killcount: master.enemy_killcount,
			u_boss_killcount: master.boss_killcount,
			u_ind_boss_kills: {
				_taylorswan: master.ind_boss_kills[0],
				_futurtle: master.ind_boss_kills[1],
				_kimk: master.ind_boss_kills[2],
				_traviss: master.ind_boss_kills[3],
				_beeyonce: master.ind_boss_kills[4],
				_tekashi: master.ind_boss_kills[5],
				_lilhump: master.ind_boss_kills[6],
				_rehino: master.ind_boss_kills[7],
				_emunem: master.ind_boss_kills[8],
				_twentyone: master.ind_boss_kills[9],
				_lilsheep: master.ind_boss_kills[10],
				_squidcudi: master.ind_boss_kills[11],
				_kidboo: master.ind_boss_kills[12],
				_dracoon: master.ind_boss_kills[13],
				_bianca: master.ind_boss_kills[14],
				_fourbats: master.ind_boss_kills[15],
				_pumat: master.ind_boss_kills[16],
				_toastmalone: master.ind_boss_kills[17],
				_tydolla: master.ind_boss_kills[18],
				_finalboss: master.ind_boss_kills[19]
			}, //[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
			u_levelender_killcount: master.levelender_killcount,
			u_character_levels: {
				_taylorswan_: master.character_levels[0],
				_futurtle_: master.character_levels[1],
				_kimk_: master.character_levels[2],
				_traviss_: master.character_levels[3],
				_beeyonce_: master.character_levels[4],
				_tekashi_: master.character_levels[5],
				_lilhump_: master.character_levels[6],
				_rehino_: master.character_levels[7],
				_emunem_: master.character_levels[8],
				_twentyone_: master.character_levels[9],
				_lilsheep_: master.character_levels[10],
				_squidcudi_: master.character_levels[11],
				_kidboo_: master.character_levels[12],
				_dracoon_: master.character_levels[13],
				_bianca_: master.character_levels[14],
				_fourbats_: master.character_levels[15],
				_pumat_: master.character_levels[16],
				_toastmalone_: master.character_levels[17],
				_tydolla_: master.character_levels[18],
				_custom_char_: master.character_levels[19]
			}, //[0-50,0-50,..14 times]
			u_name_text: {
				n_font: master.name_text[0],
				n_col_one: master.name_text[1],
				n_col_out: master.name_text[2]
			}, //[font,color,outline color]
			u_character_id: master.character_id,//0-19, 20=custom)
			u_custom_look: {
				cus_head: master.custom_look[0],
				cus_head_type: master.custom_look[1],
				cus_body: master.custom_look[2],
				cus_body_type: master.custom_look[3],
				cus_trail: master.custom_look[4],
				cus_trail_type: master.custom_look[5],
				cus_hat: master.custom_look[6],
				cus_hat_type: master.custom_look[7]
			},//[Head, Variant, Body, Variant, Trail, Variant]
			u_theme_song: {
				cus_theme: master.theme_song[0],
				cus_bass: master.theme_song[1],
				cus_drums: master.theme_song[2],
				cus_keys: master.theme_song[3],
				cus_vocals: master.theme_song[4],
				cus_remix: master.theme_song[5]
			},//(Theme (if not custom), bass, drums, keys, vocals, remix)
			u_login_message: master.login_message,//displays at login then clears
			u_clan_info: {
				clan_id: master.clan_info[0],
				clan_name: master.clan_info[1],
				clan_rank: master.clan_info[2],
				clan_rank_in: master.clan_info[3],
				clan_date: master.clan_info[4],
				clan_donated: master.clan_info[5],
				clan_tasks: master.clan_info[6],
				clan_mr: master.clan_info[7],
				clan_position: master.clan_info[8],
				clan_rb: master.clan_info[9]
			},// master.clan_info,//[Clan ID, Clan Name, Clan Rank, Rank in Clan, Date Joined, Dollars Donated, Tasks Completed, Members Recruited, Position in Clan, recruited by]
			u_donda_3_unlocked: master.dondaunlocked,
			v_permissions: master.permissions//
        };
        //FirebaseFirestore(root).Set(json_stringify(_doc));  // Add to Firebase
		root="highscores"
		listenerId = FirebaseFirestore(root).Set(json_stringify(_doc));
		var setResponse = string(listenerId)
		//show_debug_message("Set Response: " + setResponse);
		
	
        
			with (master) {
scr_save_game();
}
synked = 1;
onboard=-1;
exit;
	}
}


}     





