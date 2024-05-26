
// CREATE EVENT of obj_controlhs
// Create Event of obj_controlhs or similar persistent object
if !variable_instance_exists(global, "data") {
    global.data = [];
}
scroll_speed=256 //(1 beat)
scroll_counter=0

pwr=.4//variable for tweaking player drawing
time=0
slw=.7//variable for tweaking player drawing
blw=1//variable for tweaking player drawing
global.isListening=false
//onboard=0
brrk=0
scale=1 //scale of the characters drawn on the leaderboard
facing=1 //direction character faces on the leaderboard
root= "highscores"; //the name of the collection in firebase
selected=0 // currently selected player id to dispplay on leaderboard
playeridd=master.playerid//locally store the player id from the master object
listener = FirebaseFirestore(root).Listener();
selectplayer=0
anicount=0 //animation variable for drawing characters on leaderboard
rateset=5 //framerate of animation
rate=rateset //animation counting variable
global.data= -1 //will become an array if theres data in the firebase
synked=0; //whether or not the player has been added or updated to the leaderboard this game.
fadein=0 //variable for fading in the alpha of things in draw event


