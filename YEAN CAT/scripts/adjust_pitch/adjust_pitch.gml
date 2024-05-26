function adjust_pitch(delta_time) {
    var bpm_difference = global.target_bpm - global.current_bpm;
    var step_bpm = bpm_difference / global.pitch_duration;  // Change in BPM per step
    var step_time = global.room_speed_set / global.current_bpm / global.pitch_duration;  // Time per step in seconds

    // Update the current BPM based on the time that has passed
    global.current_bpm += step_bpm * delta_time / step_time;
    
    // Corrected pitch calculation: Original BPM divided by New Current BPM
    global.pitch = global.current_bpm / 115;  // Assuming 115 is the BPM of the music file

    // Apply the new pitch to the sound
    audio_sound_pitch(music, global.pitch);
}

