// obj_Client setup Create Event
global.sessionLogFileName = "SessionLog_" + string_replace_all(string(date_current_datetime()), ":", "-") + ".txt";
global.masterLogFileName = "MasterLog.txt";
global.logDebugMessagesToFile = true; // By default, log debug messages to the file
global.serverAddress = "127.0.0.1"; // Example server address
// Initialize the data structure globally if not already initialized
global.chatLogs=-1
global.bubble_send_to_log=1
global.message_is_bubble=0
if (!ds_exists(global.chatLogs, ds_type_list)) {
    global.chatLogs = ds_list_create();
}
time=0
// Global Variable Initialization (usually in some global script or create event)
global.typingSpeedCalcDuration = 60; // Default to 60 seconds
global.lastWPMUpdateTime = 0; // Timestamp of the last WPM update
global.WPMUpdateInterval = 5000; // Minimum time between updates in milliseconds (e.g., 5000ms = 5 seconds)
lastUpdateTime = -1;
updateInterval = 60; // Run every 60 seconds
//input
input_cursor_coord_space_set(INPUT_COORD_SPACE.ROOM, 0);
//input_mouse_capture_set(true, 1);
window_set_cursor(cr_none)
instance_create_depth(room_width/2,room_height/2,-1000000,obj_Cursor);
// Global time offset initialized
global.timeOffset = 0;
global.inputDisplayEnabled = false;  // Initialize the variable at an appropriate place in your game startup code

// Adding command details
// Global initialization script or create event
global.commandDetails = ds_map_create();
add_command("goto_planet(", 1, [["string", "real"]], true);  // Requires '(' visually
add_command("jump_planet(", 1, [["string", "real"]], true);  // Requires '(' visually
add_command("toggle_server", 3, [[]], false);  // Does not require '(' visually
add_command("toggle_debug", 1, [[]], false);  // Does not require '(' visually
add_command("list_clients", 1, [[]], false);  // Does not require '(' visually
add_command("enable_heartbeat", 2, [[]], false);  // Does not require '(' visually
add_command("disable_heartbeat", 2, [[]], false);  // Does not require '(' visually
add_command("toggle_log_debug", 2, [[]], false);  // Does not require '(' visually
add_command("set_my_permission(", 0, [["string", "real"]], true);
add_command("save_game", 0, [[]], false);  // Does not require "(" visually
add_command("game_end(", 0, [["string", "real"]], true); 
add_command("list_commands", 0, [[]], false); // No arguments, accessible at all permission levels
add_command("show_lines(", 0, [["real"]], true);
add_command("set_variable(", 2, [["string"],["string","real"]],true)
add_command("level_up(", 1, [["real"]], true);  // Command requires '(' visually and a real number argument
add_command("show_wpm", 0, [[]], false);  // Does not require '(' visually, level 0 permission
add_command("chat_bubble(", 1, [["string"],["string"]],true); // Chat bubble command
add_command("save_macros", 1, [[]], false);  // Add the command to save macros
add_command("list_variables", 2, [[]], false);
add_command("add_action(", 2, [["string"],["string"],["array"]],true);
add_command("save_actions", 2, [], false);
add_command("list_actions", 2, [], false);
add_command("execute_action(", 2, [["string"]], true);
add_command("show_variable(", 2, [["string"]], true);
add_command("return_controller", 1, [[]], false);
add_command("toggle_input_display", 1, [[]], false);
add_command("show_gamepad_mapping", 1, [[]], false);
add_command("chat_bubble_choices(", 1, [["string"], ["string"], ["string", "string"]], true);
add_command("add_chat_bubble_action(", 2, [["string"], ["string"], ["string"], ["array"]], true);
// Initialize global action details
global.actionDetails = ds_map_create();



//add_command("spawn_boss(", 2, [["string"]], true);

//0name //1health //2resistance0-1invincible /3/rate //4attackset //5damage //6moveset //7image //8appearance [0=character,1=boss] //9appearanceid
//add_boss("Drake",6666666,.666,1,1,1,4,spr_boss1,1,0]

// You can add new commands or modify existing ones easily with the `add_command` function.
global.variableDetails = ds_map_create();
add_variable("Level", "level", 1, master, "real", 1, 100000, [], [], "Player");
add_variable("BPM", "target_bpm", 115, global, "real", 1, 100000, [], [], "Gameplay");
add_variable("Time", "ti", 0, master, "real", 0, 99999999, [], [], "Gameplay");
add_variable("WPM Window", "typingSpeedCalcDuration", 60, global, "real", 1, 600, [], [], "Social");
add_variable("CharacterLimit", "character_limit", 1, global, "real", 0, 1000, [], [], "Social");
add_variable("Macro1", "macro1", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro2", "macro2", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro3", "macro3", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro4", "macro4", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro5", "macro5", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro6", "macro6", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro7", "macro7", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro8", "macro8", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro9", "macro9", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("Macro10", "macro10", 1, global, "real", -99999999, 99999999, [], [], "Global");
add_variable("ControllerType", "control_type", 1, global, "real", -99999999, 99999999, [], [], "Global");
global.debugCommand = "";
//global.character_limit
// Ensure commandBuffer is initialized
global.commandBuffer = "";
slash_typed=false //whether or not a command is being typed
// Initialize a global variable for text color
c_pink = make_color_hsv(0,58,255);
global.defaultTextColor = c_black;
global.textColor = global.defaultTextColor;
// Global Variable Initialization (usually in some global script or create event)
global.typingSpeedCalcDuration = 60; // Default to 60 seconds
 // This will store the input from the user
isActive = true;  // To check if command input is active
sendHeartbeat = false; // Control sending of heartbeat messages
_yy=0
pasting=0;
global.longestmessage=200;
global.c_chat2=c_black
global.c_chat1=c_white
fnt_chat=Font4
global.borderwidth=8 //bg width
global.bg_alpha=.4 //bg alpha
global.bg_color=c_black //background color
global.o_color=c_white //outline color
global.wrapWidth = 2350; // Adjust this value based on your chat box
global.character_limit=300;//character limit for chat
global.lastSpaceIndex = -1;

//Other Variables
global.showDebugMessages = true; // Enable debug messages by default
global.maximumMessages=2000;
maxDisplayMessages = 5; // Number of debug messages to display at once
// Initialize max visible lines for the chat box
global.max_visible_lines = maxDisplayMessages;  // You can adjust this number based on your needs

global.debugMessages = ds_list_create();
fnt_chat_id=0
// Global settings for text wrapping
global.chat_threshold = 2350;  // Threshold to start considering wrapping
global.chat_text_limit = 2350; // Maximum pixel width of text before wrapping
global.chat_line_height = 50; // Height of each line of text in pixels
global.min_width = 110;  // Minimum width of the chat box
global.max_width = 1000;  // Maximum width of the chat box, adjust according to your UI design
// Adjust these values to tweak where the text wraps
global.chat_threshold = global.chat_threshold * 1.66;  // Increase the threshold
global.chat_text_limit = global.chat_text_limit * 1.66;  // Increase the width limit

//Scrolling Variables
scrollIndex = 0; // Initialize scroll position
baseScrollSensitivity = 0.1; // Base sensitivity, how much the index changes initially per mouse wheel movement
maxScrollSensitivity = 1.0; // Maximum sensitivity after continuous scrolling
sensitivityIncrement = 0.05; // How much the sensitivity increases with continuous scrolling
sensitivityDecrement = 0.01; // How much the sensitivity decreases when not scrolling
global.scrollSensitivity = baseScrollSensitivity; // Current sensitivity, starts at base sensitivity
global.isScrolling = false; // Tracks if the user is currently scrolling

// Server Configuration
show_server_status=false
global.serverPort = "5555";
global.maxClients = 4;
global.heartbeatBPM = 115; // Beats per minute for the heartbeat
global.lastHeartbeatTime = current_time; // Store the current time
broadcastInterval = 60000 / global.heartbeatBPM; // Time between heartbeats in milliseconds

global.clientUniqueID = ""; // Initialize to an empty string
global.reconnectTimer = 0; // Time to attempt a reconnect
global.reconnectInterval = 2000; // Interval between reconnect attempts
global.isConnected = false; // Connection status
global.IDENTIFIER_UNIQUE_ID = 2; // Ensure this matches server expectation
global.uniqueIDSent = false; // Prevent re-sending

// Initialize server state and structures
isServerRunning = false;
connectedClients = 0;

// Generate or load the unique ID
if (!file_exists(working_directory + "client_id.txt")) {
    // For a new ID
    global.clientUniqueID = string(irandom_range(100000, 999999));
    var file = file_text_open_write(working_directory + "client_id.txt");
    file_text_write_string(file, global.clientUniqueID);
    file_text_close(file);
} else {
    // For an existing ID
    var file = file_text_open_read(working_directory + "client_id.txt");
    global.clientUniqueID = file_text_read_string(file);
    file_text_close(file);
}

// Client Initialization and Connection
global.client_socket = network_create_socket(network_socket_tcp);
var status = network_connect(global.client_socket, global.serverAddress, global.serverPort);
if (status >= 0) {
    // Successful connection
    show_debug_message("[Client] Successfully connected and ID sent.");
	isServerRunning = true;
    var buffer = buffer_create(256, buffer_grow, 1);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, global.IDENTIFIER_UNIQUE_ID);
    buffer_write(buffer, buffer_string, global.clientUniqueID);
    network_send_packet(global.client_socket, buffer, buffer_tell(buffer));
    buffer_delete(buffer);
} else {
    // Handle connection failure
    show_debug_message("[Client] Connection failed.");
}

show_chatbox=false
depth-=10; //ensure at top or front of view

global.backspaceTimer = 0;
global.backspaceDelay = 15; // Initial delay before rapid deletion
global.backspaceSpeed = 1;  // Delay between rapid deletions

global.recall_list = ds_list_create();  // List to store past messages and commands
global.recall_max = 20;  // Maximum number of entries to remember
global.recall_index = -1;  // Index for navigating through the recall list

shake_angle=0 //angle to shake text when character limit reached.

load_actions()
