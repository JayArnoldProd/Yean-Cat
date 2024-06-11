// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_savetrack() {
	//save the game
	//make sure player exists

	// create save data structure
	var save_data = ds_map_create();
	
	if instance_exists(stemmanager) {

		with (stemmanager) {
		save_track=0;
		save_data[? "length"]=array_length(trackk)
		save_data[? "lcount"]=lcount
		for (iii=0; (iii<(array_length(trackk)-1)); iii++) {
			save_data[? "beat"+string(iii)] = trackk[iii,0];
			save_data[? "bass"+string(iii)] = trackk[iii,1];
			save_data[? "drum"+string(iii)] = trackk[iii,2];
			save_data[? "melody"+string(iii)] = trackk[iii,3];
			save_data[? "vocal"+string(iii)] = trackk[iii,4];
			save_data[? "lyric"+string(iii)] = trackk[iii,5];
			save_data[? "yrics"+string(iii)] = trackk[iii,6];
			save_data[? "duration"+string(iii)] = trackk[iii,7];
		}
		}
	}

var save_string = json_encode(save_data);
	ds_map_destroy(save_data);
	save_string = base64_encode(save_string);

	var file = file_text_open_write(working_directory + "dondatrack2.txt");
	file_text_write_string(file, save_string);
	file_text_close(file);

}
