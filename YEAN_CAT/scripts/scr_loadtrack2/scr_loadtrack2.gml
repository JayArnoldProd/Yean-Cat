// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loadtrack2() {
	//scr_load_game
	if file_exists("dondatrack2.txt") {
	var file = file_text_open_read("dondatrack2.txt");
	var save_string = file_text_read_string(file);
	file_text_close(file);
	save_string = base64_decode(save_string);
	var save_data = json_decode(save_string);
	
	if instance_exists(stemmanager) {
		stemmanager.lcount=save_data[? "lcount"]
		array_resize(stemmanager.loadedtrack, clamp(save_data[? "length"],0,100000))
		for (i=0; (i<clamp((save_data[? "length"]),0,99999)); i++) {
			stemmanager.loadedtrack[i,0] = save_data[? "beat"+string(i)];
			stemmanager.loadedtrack[i,1] = save_data[? "bass"+string(i)];
			stemmanager.loadedtrack[i,2] = save_data[? "drum"+string(i)];
			stemmanager.loadedtrack[i,3] = save_data[? "melody"+string(i)];
			stemmanager.loadedtrack[i,4] = save_data[? "vocal"+string(i)];
			stemmanager.loadedtrack[i,5] = save_data[? "lyric"+string(i)];
			stemmanager.loadedtrack[i,6] = save_data[? "yrics"+string(i)];
			stemmanager.loadedtrack[i,7] = save_data[? "duration"+string(i)];
		}
		array_resize(stemmanager.trackk, clamp(save_data[? "length"],0,100000))
		for (ii=0; (ii<clamp((save_data[? "length"]),0,99999)); ii++) {
			stemmanager.trackk[ii,0] = save_data[? "beat"+string(ii)];
			stemmanager.trackk[ii,1] = save_data[? "bass"+string(ii)];
			stemmanager.trackk[ii,2] = save_data[? "drum"+string(ii)];
			stemmanager.trackk[ii,3] = save_data[? "melody"+string(ii)];
			stemmanager.trackk[ii,4] = save_data[? "vocal"+string(ii)];
			stemmanager.trackk[ii,5] = save_data[? "lyric"+string(ii)];
			stemmanager.trackk[ii,6] = save_data[? "yrics"+string(ii)];
			stemmanager.trackk[ii,7] = save_data[? "duration"+string(ii)];
		}
	}



		ds_map_destroy(save_data);
	}
	
	master.start=1
}
