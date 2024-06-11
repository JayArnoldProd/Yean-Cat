// Global identifier constants

global.IDENTIFIER_HEARTBEAT = 1; // Example identifier for heartbeat packet
global.IDENTIFIER_UNIQUE_ID = 2; // Example identifier for unique ID packet
global.IDENTIFIER_TEST_MESSAGE = 3; // Example identifier for unique ID packet
global.IDENTIFIER_CHAT_MESSAGE = 4;
// In the Create Event of a control object or the first room's creation code
global.refreshData = true;  // Allows an initial load from Firestore when relevant events are triggered

// Initialize other global variables if not already done
global.data = -1;  // Assuming global.data also needs initialization

global.target_bpm = 100;  // Desired BPM you want to transition to
global.current_bpm = 115; // Starting BPM of the track
global.pitch = 1;         // Starting pitch based on the original track BPM
global.pitch_duration = 2096;  // Fixed number of steps to adjust pitch per beat
global.last_frame_time = current_time;  // Initialize the last frame time using built-in variable