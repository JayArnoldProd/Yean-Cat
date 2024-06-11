// Create Event of obj_Server

// Global variables for logging
global.sessionLogFileName = "SessionLog_" + string_replace_all(string(date_current_datetime()), ":", "-") + ".txt";
global.masterLogFileName = "MasterLog.txt";
global.logDebugMessagesToFile = true; // By default, log debug messages to the file


// Initialize command-related variables
global.debugCommand = "";
commandBuffer = "";  // This will store the input from the user
isActive = true;  // To check if command input is active
sendHeartbeat = false; // Control sending of heartbeat messages


//Other Variables
global.showDebugMessages = true; // Enable debug messages by default
global.maximumMessages=2000;
maxDisplayMessages = 25; // Number of debug messages to display at once

//Scrolling Variables
scrollIndex = 0; // Initialize scroll position
baseScrollSensitivity = 0.1; // Base sensitivity, how much the index changes initially per mouse wheel movement
maxScrollSensitivity = 1.0; // Maximum sensitivity after continuous scrolling
sensitivityIncrement = 0.05; // How much the sensitivity increases with continuous scrolling
sensitivityDecrement = 0.01; // How much the sensitivity decreases when not scrolling
global.scrollSensitivity = baseScrollSensitivity; // Current sensitivity, starts at base sensitivity
global.isScrolling = false; // Tracks if the user is currently scrolling

// Server Configuration
global.serverPort = "5555";
global.maxClients = 4;
global.heartbeatBPM = 60; // Beats per minute for the heartbeat
global.lastHeartbeatTime = current_time; // Store the current time
broadcastInterval = 60000 / global.heartbeatBPM; // Time between heartbeats in milliseconds

// Initialize server state and structures
isServerRunning = false;
connectedClients = 0;
socketlist = ds_list_create();
debugMessages = ds_list_create();
global.socketToUniqueID = ds_map_create();
global.clientIDs = ds_map_create();

// Attempt to create the server
server_socket = network_create_server(network_socket_tcp, global.serverPort, global.maxClients);
if (server_socket < 0) {
    handleDebugMessage("Failed to initialize server on port " + string(global.serverPort) + ".", false);
} else {
    isServerRunning = true;
    handleDebugMessage("Server initialized successfully on port " + string(global.serverPort) + ".", false);
}

//GPT Variables
gpt_enabled=false;
//only run when gpt is enabled
if gpt_enabled = true {
var API_KEY = "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"
var _headers = ds_map_create();
//ds_map_add(_headers, "Host", "https://api.openai.com/v1/chat/completions");
ds_map_add(_headers, "Authorization", "Bearer "+API_KEY);
ds_map_add(_headers, "Content-Type", "application/json");
var _data = {
     "model": "gpt-3.5-turbo",
     "prompt": "Say this is a test",
	 "max_tokens": int64(30),
     "temperature": int64(0.7)
   }

var data = json_stringify(_data)

request = http_request("https://api.openai.com/v1/chat/completions", "POST", _headers, data);

handleDebugMessage("RequestSent",true);
handleDebugMessage(request,true);
handleDebugMessage(data,true);

ds_map_destroy(_headers);
}