function update_audio_pitch(Sound_ID, Target_BPM, Duration) {
    var Original_BPM = 115; // Default BPM of the soundtrack
    var Current_BPM = audio_get_bpm(); // Get current BPM
    var Total_Steps = Duration * 256;
    var Step_BPM = (Target_BPM - Current_BPM) / Total_Steps;
    var Pitch_Adjustment = Original_BPM / Current_BPM;
    var Step_Time = 60 / (Current_BPM * 256); // Time per fine step (sec)
    var Accumulated_Time = 0;
    return function(delta_time) {
        Accumulated_Time += delta_time;
        while (Accumulated_Time >= Step_Time) {
            Current_BPM += Step_BPM;
            Pitch_Adjustment = Original_BPM / Current_BPM;
            audio_sound_pitch(Sound_ID, Pitch_Adjustment);
            Accumulated_Time -= Step_Time;
        }
    };
}
