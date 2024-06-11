// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loadtrack() {
    //if file_exists("dondatrack2.txt") {
    //    var file = file_text_open_read("dondatrack2.txt");
    //    var save_string = file_text_read_string(file);
    //    file_text_close(file);
    //    save_string = base64_decode(save_string);
    //    var save_data = json_decode(save_string);
        
    //    var totalLength = save_data[? "length"];
    //    var currentPos = floor(master.ti / 2014 * totalLength);
    //    var loadRange = ceil(totalLength * 0.05); // 5% ahead of the current position

    //    if instance_exists(stemmanager) {
    //        stemmanager.lcount = save_data[? "lcount"];

    //        // Calculate start and end indices for the loading range
    //        var startIndex = max(0, currentPos);
    //        var endIndex = min(startIndex + loadRange, totalLength);

    //        // Resize the loadedtrack array to fit the new range
    //        array_resize(stemmanager.loadedtrack, endIndex - startIndex);

    //        // Load only the necessary part of the track
    //        for (var i = startIndex; i < endIndex; i++) {
    //            var index = i - startIndex; // Adjusted index for the new array
    //            stemmanager.loadedtrack[index,0] = save_data[? "beat"+string(i)];
    //            stemmanager.loadedtrack[index,1] = save_data[? "bass"+string(i)];
    //            stemmanager.loadedtrack[index,2] = save_data[? "drum"+string(i)];
    //            stemmanager.loadedtrack[index,3] = save_data[? "melody"+string(i)];
    //            stemmanager.loadedtrack[index,4] = save_data[? "vocal"+string(i)];
    //            stemmanager.loadedtrack[index,5] = save_data[? "lyric"+string(i)];
    //            stemmanager.loadedtrack[index,6] = save_data[? "yrics"+string(i)];
    //            stemmanager.loadedtrack[index,7] = save_data[? "duration"+string(i)];
    //        }
    //    }

    //    ds_map_destroy(save_data);
    //}
    
    master.start = 1;
}
