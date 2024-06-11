// Function to calculate next spawn time based on BPM
function nextSpawnTime(bpm) {
    var secondsPerBeat = 60 / bpm;
    return currentSyncedTime() + secondsPerBeat;
}