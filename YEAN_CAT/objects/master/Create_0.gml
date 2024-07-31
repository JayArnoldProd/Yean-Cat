/// CREATE OF master
global.control_type=0
// In the Create event of your master object
global.lastControllerState = gamepad_is_connected(0);  // Initialize with the current state

wpm=0
shownmessage=0
showad=0
noad=1
init=0
playername= ""
if !instance_exists(obj_Client) {
	instance_create_layer(0,0,"uiitop",obj_Client);
}
playernumber=-1
infouppdate=0
newest_version="Beta 1.5.0"
version=newest_version
legacyversion="Beta 1.5.0"
if os_type=os_ios or os_type=os_android {

AdMob_SetTestDeviceId(); // <----- this is OPTIONAL (development only)

//AdMob_Targeting_UnderAge(false);

//AdMob_Targeting_COPPA(false);

AdMob_Targeting_MaxAdContentRating(AdMob_ContentRating_GENERAL);


AdMob_Initialize();

}
global.target_bpm=100
global.current_bpm=115
global.pitch = 1;          // Pitch starts at 1 (normal speed)
global.pitch_duration = 2096;  // Steps per beat
global.last_frame_time = current_time; 


// WEAPON REVAMP: //"Theory Name", "Length", "Description", duration
rate_array = [
    ["Maxima", "8 Bars", "Eternal Pace", 32],
    ["Longa", "4 Bars", "Prolonged Stride", 16],
    ["Triple Breve", "3 1/2 Bars", "Leisurely Stretch", 14],
    ["Double Breve", "3 Bars", "Expansive Step", 12],
    ["Dotted Breve", "2 1/2 Bars", "Graceful Glide", 10],
    ["Breve", "2 Bars", "Broad Step", 8],
    ["Dotted Whole Note", "1 3/4 Bars", "Measured Sweep", 7],
    ["Whole Note", "1 1/2 Bars", "Wide Leap", 6],
    ["Whole Note Triplet", "1 1/3 Bars", "Smooth Transition", 5.333],
    ["Dotted Half Note", "1 1/4 Bars", "Sustained Pace", 5],
    ["Whole Note", "1 Bar", "Full Stride", 4],
    ["Dotted Half Note", "3/4 Bar", "Extended Beat", 3],
    ["Half Note Triplet", "2/3 Bar", "Harmonious Flow", 2.667],
    ["Half Note", "1/2 Bar", "Steady Beat", 2],
    ["Dotted Quarter Note", "3/8 Bar", "Quick Step", 1.5],
    ["Quarter Note Triplet", "1/3 Bar", "Brisk Stride", 1.333],
    ["Quarter Note", "1/4 Bar", "Regular Step", 1],
    ["Dotted Eighth Note", "3/16 Bar", "Energetic Dash", 3/4],
    ["Eighth Note Triplet", "1/6 Bar", "Agile Movement", 2/3],
    ["Eighth Note", "1/8 Bar", "Swift Move", 1/2],
    ["Dotted Sixteenth Note", "3/32 Bar", "Rapid Motion", 3/8],
    ["Sixteenth Note Triplet", "1/12 Bar", "Fleet Footed", 1/3],
    ["Sixteenth Note", "1/16 Bar", "Fast Pace", 1/4],
    ["Dotted Thirty-Second Note", "3/64 Bar", "Very Fast", 3/16],
    ["Thirty-Second Note Triplet", "1/24 Bar", "Hasty Beats", 1/6],
    ["Thirty-Second Note", "1/32 Bar", "Scurry", 1/8],
    ["Dotted Sixty-Fourth Note", "3/128 Bar", "Blazing Speed", 3/32],
    ["Sixty-Fourth Note Triplet", "1/48 Bar", "Ultra Rapid", 1/12],
    ["Sixty-Fourth Note", "1/64 Bar", "Lightning Fast", 1/16],
    ["Dotted One Hundred Twenty-Eighth Note", "3/256 Bar", "Fleeting", 3/64],
    ["One Hundred Twenty-Eighth Note Triplet", "1/96 Bar", "Instant Flicker", 1/24],
    ["One Hundred Twenty-Eighth Note", "1/128 Bar", "Almost Instant", 1/32],
    ["Dotted Two Hundred Fifty-Sixth Note", "3/512 Bar", "Blink Fast", 3/128],
    ["Two Hundred Fifty-Sixth Note Triplet", "1/192 Bar", "Rapid Twitch", 1/48],
    ["Two Hundred Fifty-Sixth Note", "1/256 Bar", "Immediate", 1/64],
    ["Dotted Five Hundred Twelfth Note", "3/1024 Bar", "Quick Flash", 3/256],
    ["Five Hundred Twelfth Note Triplet", "1/384 Bar", "Micro Beat", 1/96],
    ["Five Hundred Twelfth Note", "1/512 Bar", "Ultra Snap", 1/128],
    ["SemiHemiDemiSemiHemiDemiSemiQuaver", "1/768 Bar", "Whirlwind", 1/192],
    ["SemiHemiDemiSemiHemiDemiSemiQuaver", "1/1024th Bar", "Instantaneous", 1/256]
];






// Note: Adjustments made for clarity and logical progression in gameplay. 
//       Descriptions and terms are simplified to aid player understanding.




reviving=0
osc=0

master_cutoff=48000
master_highpass=0
master_reverb=0
start=0;
window_set_fullscreen(true);
upslide=0
splash=[
"Playing since Beta 1.0.0",
"Jewish Lives Matter",
"Not the 6 God, but close enough!",
"Kissing Through the Phone",
"Cloning... 99% complete!",
"Not a Dropout",
"I'm Feline Good",
"Beta 1.0.0",
"That's Not Nice!",
"More Colors than 6ix9ine's Hair!",
"Stronger, better, faster, meow-er!",
"I Miss the old Ye",
"Rainbows don't Die",
"Open on Sundays",
"Rap-Tarts",
"Hurry up with my damn croissants!",
"Yean Season Approaching!",
"16,777,216 Different Colors!",
"It's the Dawn of the New Wave",
"I'm not a shark, I'm a blowfish.",
"Beyoncé be dancing in heels and shit.",
"I am the number one human being in music",
"Not #2",
"I'm like a machine. I'm a robot",
"What's a B+ mean?",
"George Bush Doesn't Care About This Game.",
"People look at me like im insane.",
"Kim doesn’t understand what a blessing I am to her.",
"Pimpin’ is whatev… Love is that shit!",
"I am a proud nonreader of books",
"I'm like a tree",
"I'm a pop enigma",
"I'm a go get that",
"Yo Taylor, I'm really happy for you",
"Please corporations. Can you please support me, please?",
"Just for 3 million dollars",
"What's my public rating right now?",
"Are people liking me again?",
"You may be talented, but you’re not Kanye West",
"The media crucify me like they did Christ",
"Im owed some Chex, Cereal"
]

splashtime=0
scaleg=1
scalegg=scaleg



debugvar=.6
debugvar2=29
splashangle=13
splashalpha=0
countdi=0
soundmanager=[
//character sounds
[0,0,0,0,0,0],
//star sounds
[0,0,0,0,0,0],
//Razi A sounds
[0,0,0,0,0,0],
//bear sounds
[0,0,0,0,0,0],
//Razi B sounds
[0,0,0,0,0,0],
//5 Music Executive
[0,0,0,0,0,0],
//6
[0,0,0,0,0,0],
//7
[0,0,0,0,0,0],
//8
[0,0,0,0,0,0],
//9music executive
[0,0,0,0,0,0],
//10
[0,0,0,0,0,0],
//11
[0,0,0,0,0,0],
//12
[0,0,0,0,0,0],
//13
[0,0,0,0,0,0],
//14
[0,0,0,0,0,0],
//15
[0,0,0,0,0,0],
//16
[0,0,0,0,0,0],
//17
[0,0,0,0,0,0],
//18
[0,0,0,0,0,0],
//19
[0,0,0,0,0,0],
//20
[0,0,0,0,0,0],
//21
[0,0,0,0,0,0],
//22
[0,0,0,0,0,0],
//23
[0,0,0,0,0,0],
//24
[0,0,0,0,0,0],
//25
[0,0,0,0,0,0],
//26
[0,0,0,0,0,0],
//27
[0,0,0,0,0,0],
//28
[0,0,0,0,0,0],
//29
[0,0,0,0,0,0],
//30
[0,0,0,0,0,0],
//31
[0,0,0,0,0,0],
//32
[0,0,0,0,0,0],
//33
[0,0,0,0,0,0],
//34
[0,0,0,0,0,0],
//35
[0,0,0,0,0,0],
//36
[0,0,0,0,0,0],
//37
[0,0,0,0,0,0],
//38
[0,0,0,0,0,0],
//39
[0,0,0,0,0,0],
//40
[0,0,0,0,0,0],
//41
[0,0,0,0,0,0],
//42
[0,0,0,0,0,0],
//43
[0,0,0,0,0,0],
//44
[0,0,0,0,0,0],
//45
[0,0,0,0,0,0],
//46
[0,0,0,0,0,0],
//47
[0,0,0,0,0,0],
//48
[0,0,0,0,0,0],
//49
[0,0,0,0,0,0],
//50
[0,0,0,0,0,0],
//51
[0,0,0,0,0,0],
//52
[0,0,0,0,0,0],
//53
[0,0,0,0,0,0],
//54
[0,0,0,0,0,0],
//55
[0,0,0,0,0,0],
//56
[0,0,0,0,0,0],
//57
[0,0,0,0,0,0],
//58
[0,0,0,0,0,0],
//59
[0,0,0,0,0,0],
//60
[0,0,0,0,0,0],
//61
[0,0,0,0,0,0],
//62
[0,0,0,0,0,0],
//63
[0,0,0,0,0,0],
//64
[0,0,0,0,0,0],
//65
[0,0,0,0,0,0],
//66
[0,0,0,0,0,0],
//67
[0,0,0,0,0,0],
//68
[0,0,0,0,0,0],
//69
[0,0,0,0,0,0],
//70Other sounds
[0,0,0,0,0,0],
//71boss1
[0,0,0,0,0,0],
//72
[0,0,0,0,0,0],
//73
[0,0,0,0,0,0],
//74
[0,0,0,0,0,0],
//75
[0,0,0,0,0,0],
//76
[0,0,0,0,0,0],
//77
[0,0,0,0,0,0],
//78
[0,0,0,0,0,0],
//79
[0,0,0,0,0,0],
//80
[0,0,0,0,0,0],
//81
[0,0,0,0,0,0],
//82
[0,0,0,0,0,0],
//83
[0,0,0,0,0,0],
//84
[0,0,0,0,0,0]
]

responsecount=[
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0]
]

//snds=[
////yeancat
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
////ghost
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
////stardavid
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
////razzia
//[razziA1,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[razziA2,razziA2,razziA2,razziA2,razziA2,razziA2,razziA2,razziA2,razziA2,razziA2,razziA2,razziA2],
//[razziA5,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[razziA4,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[razziA6,razziA6,razziA6,razziA6,razziA6,razziA6,razziA6,razziA6,razziA6,razziA6,razziA6,razziA6],
//[razziA3,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
////razzib
//[razziF2,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,razziF1,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,razziF3,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[razziF4,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
////blackball
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound],
//[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound]
global.threedee=0
global.camera_zoom=1;
//MACRO Variables
global.macro1 = 1;     // Camera movement speed
global.macro2 = 1;   // Zoom level
global.macro3 = 0;     // 3D effect intensity (0 for no effect, negative for normal orientation)
global.macro4 = 1;     // Not used, can be repurposed
global.macro5 = -1920;  // Horizontal offset for 3D objects
global.macro6 = -1080;     // Vertical offset for 3D objects
global.macro7 = 0;      // Not used, can be repurposed if needed
global.macro8 = 0;      // Not used, can be repurposed if needed
global.macro9 = 1;      // Not used, can be repurposed if needed
global.macro10 = 1;     // Not used, can be repurposed if needed

audio_listener_orientation(0,1,0,0,0,1);

camscale=1
focusonboss=0
focustime=0
camovx=0
camovy=0
focusonbosss=0
camovxx=0
camovyy=0
moby=0

if !instance_exists(obj_camera) {
	var camra=instance_create_depth(room_width/2,room_height/2,0,obj_camera)
camra.cam =view_camera[0];
cam=camra.cam;
}

global.room_speed_set=60
rspeed=60
loading=2
if !audio_group_is_loaded(agMusic) {
	audio_group_load(agMusic);
}
if !audio_group_is_loaded(agSFX) {
audio_group_load(agSFX);
}
if !audio_group_is_loaded(agUI) {
audio_group_load(agUI);
}
if !audio_group_is_loaded(agDialouge) {
audio_group_load(agDialouge);
}
if !audio_group_is_loaded(agVocals) {
audio_group_load(agVocals);
}
if !audio_group_is_loaded(agMelodies) {
audio_group_load(agMelodies);
}
if !audio_group_is_loaded(agDrums) {
audio_group_load(agDrums);
}
if !audio_group_is_loaded(agBass) {
audio_group_load(agBass);
} else {
	start=1
}
music_emitter = audio_emitter_create();
music_bus = audio_bus_create();
audio_emitter_position(music_emitter,room_width/2,room_height/2,0)
audio_emitter_bus(music_emitter, music_bus);


_hp_effect = audio_effect_create(AudioEffectType.HPF2);
_lp_effect = audio_effect_create(AudioEffectType.LPF2);
_reverb = audio_effect_create(AudioEffectType.Reverb1);

//_comp_effect = audio_effect_create(AudioEffectType.Compressor);
//_comp_effect.gain = -3; // No change to input gain
//_comp_effect.threshold = -6; // -18 dB
//_comp_effect.ratio = 2.5; // 3:1 ratio
//_comp_effect.attack = .020; // 20 ms
//_comp_effect.release = .150; // 150 ms
//_comp_effect.outgain = 3; // +3 dB make-up gain
//_comp_effect.mix = 1; // Assuming 100% is full compression effect
//audio_bus_main.effects[0] = _comp_effect;

//_comp_effect.bypass



_lp_effect.cutoff = master_cutoff;
_hp_effect.cutoff = master_highpass;
_reverb.mix = master_reverb;
music_bus.effects[0] = _hp_effect;
music_bus.effects[1] = _lp_effect;


speedgui=1
slidegui=0
hidecompletedunlocks=0
hidelockedcol=0

//tasks
//what it unlocks, 1requirement,2progress,3completed?,4image,5visible?,6rewardtype, 7collectionid (if item), 8 seen, 9cumulative?,10 instruction, 11 collection id
//requirement id: 0= time survived, 1certain enemy killed
//rewardtype //type: 0=character, 1=weapon, 2=passive, 3=item, 4=stage, 5=music, 6=gamemode, 7=planet, 8=font, 9=trail, 10=body, 11=head, 12=hat, 13=perk unlock, 14=other, 

tasks = [
["Life of the Party","Survive 3 Minutes",0,0,spr_lifeoftheparty,0,2,12,0,0,"You Unlocked a New Ability!"],
["Glory","Survive 10 Minutes\nWith Yean Cat",0,0,spr_album,0,5,0,0,0,"You Unlocked a New Song!"],
["Love","Kill 500 Enemies\nIn 1 Game",0,0,spr_love,0,2,14,0,0,"You Unlocked a New Ability!"],
["Taylor Swan","Defeat Taylor Swan",0,0,spr_love,0,0,1,0,0,"You Unlocked a New Character!"],

["Spectacle","Survive 10 Minutes\nWith Taylor Swan",0,0,spr_graduate,0,2,20,0,0,"You Unlocked a New Ability!"],
["Cancelled","Kill 100 Blackballs",0,0,spr_album,0,5,1,0,0,"You Unlocked a New Song!"],
["Wealth","Kill 100 Gold Diggers",0,0,spr_wealth,0,2,21,0,0,"You Unlocked a New Ability!"],
["Futurtle","Defeat Futurtle",0,0,spr_nyan,0,0,2,0,0,"You Unlocked a New Character!"],

["Graduate","Kill 300 Graduates",0,0,spr_graduate,0,2,8,0,0,"You Unlocked a New Ability!"],
["Water into Drank","Survive 10 Minutes\nWith Futurtle",0,0,spr_album,0,5,2,0,0,"You Unlocked a New Song!"],
["Fame","Kill 3000 Enemies\nWith Futurtle",0,0,spr_fame,0,2,6,0,0,"You Unlocked a New Ability!"],
["Kim Chameleon","Defeat Kim Chameleon",0,0,spr_nyan,0,0,3,0,0,"You Unlocked a New Character!"],

["Law of Attraction","Survive 10 Minutes\nWith Kim Chameleon",0,0,spr_lawofattraction,0,2,11,0,0,"You Unlocked a New Ability!"],
["Winter's Cold","Kill 300 Frozen Hearts\nIn 1 Game",0,0,spr_album,0,5,3,0,0,"You Unlocked a New Song!"],
["Heartbreak","Kill 1000 Broken Rings",0,0,spr_heartbreak,0,2,10,0,0,"You Unlocked a New Ability!"],
["Travis Squawk","Defeat Travis Squawk",0,0,spr_nyan,0,0,4,0,0,"You Unlocked a New Character!"],

["Power","Kill 5000 Enemies\nWith Travis Squawk",0,0,spr_power,0,2,18,0,0,"You Unlocked a New Ability!"],
["Freeing Christ","Survive 15 Minutes\nWith Travis Squawk",0,0,spr_album,0,5,4,0,0,"You Unlocked a New Song!"],
["Monster","Kill 500 Monsters\nIn 1 Game",0,0,spr_monster,0,2,17,0,0,"You Unlocked a New Ability!"],
["Bee-yonce","Defeat Bee-yonce",0,0,spr_nyan,0,0,5,0,0,"You Unlocked a New Character!"],

["Ego","Kill 100,000 Enemies",0,0,spr_ego,0,2,4,0,0,"You Unlocked a New Ability!"],
["Majestic","Survive 15 Minutes\nWith Bee-yonce",0,0,spr_album,0,5,5,0,0,"You Unlocked a New Song!"],
["Wisdom","Amass 2 Hours\nof Play Time",0,0,spr_wisdom,0,2,22,0,0,"You Unlocked a New Ability!"],
["Peacocky 96","Defeat Peacocky 96",0,0,spr_nyan,0,0,6,0,0,"You Unlocked a New Character!"],

["Mercy","Survive 15 Minutes\nWith Peacocky 96",0,0,spr_mercy,0,2,15,0,0,"You Unlocked a New Ability!"],
["Lucille","Kill 200,000 Enemies",0,0,spr_album,0,5,8,0,0,"You Unlocked a New Song!"],
["Donda's Blessing","Amass 3 Hours\nof Play Time",0,0,spr_dondasblessing,0,2,3,0,0,"You Unlocked a New Ability!"],
["Lil Hump","Defeat Lil Hump",0,0,spr_nyan,0,0,7,0,0,"You Unlocked a New Character!"],

["Free Will","Amass 4 Hours\nof Play Time",0,0,spr_freewill,0,2,7,0,0,"You Unlocked a New Ability!"],
["808s and Heartbreaks","Kill 300,000 Enemies",0,0,spr_album,0,5,7,0,0,"You Unlocked a New Song!"],
["Prescription","Survive 15 Minutes\nWith Lil Hump",0,0,spr_prescription,0,2,19,0,0,"You Unlocked a New Ability!"],
["Rehino","Defeat Rehino",0,0,spr_nyan,0,0,8,0,0,"You Unlocked a New Character!"],

["Heart","Survive 15 Minutes\nWith Rehino",0,0,spr_heart,0,2,9,0,0,"You Unlocked a New Ability!"],
["Ella y El","Kill 400,000 Enemies",0,0,spr_album,0,5,6,0,0,"You Unlocked a New Song!"],
["Einstein","Amass 5 Hours\nof Play Time",0,0,spr_einstein,0,2,26,0,0,"You Unlocked a New Ability!"],
["Emunem","Defeat Emunem",0,0,spr_nyan,0,0,9,0,0,"You Unlocked a New Character!"],

["Faith","Survive 20 Minutes\nWith Emunem",0,0,spr_faith,0,2,5,0,0,"You Unlocked a New Ability!"],
["Ye of Little Faith","Kill 500,000 Enemies",0,0,spr_album,0,5,9,0,0,"You Unlocked a New Song!"],
["Miracle","Amass 6 Hours\nof Play Time",0,0,spr_miracle,0,2,16,0,0,"You Unlocked a New Ability!"],
["21 Salamander","Defeat 21 Salamander",0,0,spr_nyan,0,0,10,0,0,"You Unlocked a New Character!"],

["Vanish Mode","Amass 8 Hours\nof Play Time",0,0,spr_vanishmode,0,2,25,0,0,"You Unlocked a New Ability!"],
["Chasing Ghosts","Kill 600,000 Enemies",0,0,spr_album,0,5,10,0,0,"You Unlocked a New Song!"],
["Curse","Survive 20 Minutes\nWith 21 Salamander",0,0,spr_curse,0,2,2,0,0,"You Unlocked a New Ability!"],
["Lil Sheep","Defeat Lil Sheep",0,0,spr_nyan,0,0,11,0,0,"You Unlocked a New Character!"],

["Longevity","Survive 25 Minutes\nWith Lil Sheep",0,0,spr_longevity,0,2,13,0,0,"You Unlocked a New Ability!"],
["40 Years","Kill 750,000 Enemies",0,0,spr_album,0,5,11,0,0,"You Unlocked a New Song!"],
["Bound 2 Fortune","Have $3,000,000\at Once",0,0,spr_bound2fortune,0,2,0,0,0,"You Unlocked a New Ability!"],
["Squid Cudi","Defeat Squid Cudi",0,0,spr_nyan,0,0,12,0,0,"You Unlocked a New Character!"],

["Clone","Amass 10 Hours\nof Play Time",0,0,spr_clone,0,2,24,0,0,"You Unlocked a New Ability!"],
["Praise God","Kill 1,000,000 Enemies",0,0,spr_album,0,5,12,0,0,"You Unlocked a New Song!"],
["Wonder","Survive 25 Minutes\nWith Squid Cudi",0,0,spr_wonder,0,2,23,0,0,"You Unlocked a New Ability!"],
["Kid Boo","Defeat Kid Boo",0,0,spr_nyan,0,0,13,0,0,"You Unlocked a New Character!"],

["Champion","Survive 30 Minutes\nWith Kid Boo",0,0,spr_champion,0,2,1,0,0,"You Unlocked a New Ability!"],
["In the End","Kill 2,000,000 Enemies",0,0,spr_album,0,5,13,0,0,"You Unlocked a New Song!"],
["Dracoon","Defeat Dracoon",0,0,spr_nyan,0,0,14,0,0,"You Unlocked a New Character!"]
]

visitedplanets=[0,0,0,0,0,0,0,0,0,0,0,0,0,0]// store which planets have been visited and unlocked.

//achievements
//name, 1requirement, 2achieved?, 3visible?, 4rarity, 5image, 6seen, 7 progress
//rarity: 1=bronze, 2=silver, 3=gold, 4=platinum
achievements = [
["Through the Wire","Last 10 Minutes in a Game",0,1,1,spr_throwaway,0,0],
["Late Registration","Play for 1 Hour",0,1,1,spr_throwaway,0,0],
["Lyrical Resilience","Die 10 Times",0,1,1,spr_throwaway,0,0],
["Penny for Your Thoughts","Get Hit by 100 Pennies",0,1,1,spr_throwaway,0,0],
["Yeezus Unleashed","Reach Level 100 in a Game",0,1,1,spr_throwaway,0,0]
]

//shop// NOT BEING USED YET. THE CURRENT SHOP ONLY HAS 1 THING FOR PURCHASE: ADDITIONAL WEAPON SLOTS
//name, type, bought?, price, collectionid, seen, image
//rewardtype //type: 0=character, 1=weapon, 2=passive, 3=item, 4=stage, 5=music, 6=gamemode, 7=other, 
shop=[
["Shades", 3, 0, 500, 5,0,spr_shades,4],
["Kim K", 0, 0, 1000, -1,0,spr_kimk,2],
["Bee-yonce", 0, 0, 100000, -1,0,spr_beeyonce,5]
] //UNUTILLIZED
//SHOP RELATED STATS//NOT USED JUST SET UP AS CONCEPT// 
//PLAYERS MIGHT BE ABLE TO CREATE THEIR OWN ARMY OF ENEMIES WHICH PLAYERS CAN TACKLE, ENDED WITH A CUSTOM BOSS. PLAYERS ARE REWARDED WHEN OTHERS FAIL TO BEAT THEIR GAME RULES, AND PENALIED WHEN OTHER PLAYERS SUCCEED.
idle_war= [
[0,0,0,0,0,0],//pid=
[0,0,0,0,0,0],//plvl=
[0,0,0,0,0,0],//wid=
[0,0,0,0,0,0],//wlvl=
[0,0,0,0,0,0],//idle_enem_id
[0,0,0,0,0,0],//idle_enem_rarity
[0,0,0,0,0,0],//idle_enem_lvl
[0,0,0,0,0,0],//idle_enem_modifier
[0,0,0,0,0,0],//idle_enem_health
[0,0,0,0,0,0],//idle_enem_damage
[0,0,0,0,0,0],//idle_enem_rate
[0,0,0,0,0,0]//idle_enem_resistance
] //UNUTILLIZED

max_character=0 //UNUTILLIZED
max_char_level=0 //UNUTILLIZED

idle_war_herolvl=1 //UNUTILLIZED
idle_war_champion=0 //UNUTILLIZED

lasttimedefeated=0 //UNUTILLIZED
lastvictory=0 //UNUTILLIZED

//options
mastervol=.9
mastervolset=.9
uiscale=1
musicvol=.7
sfxvol=.8
dialougevol=.8
uivol=.8

optionarray=[
["mastervolset","MASTER VOLUME",master],
["musicvol","MUSIC VOLUME",master],
["sfxvol","SFX VOLUME",master],
["dialougevol","DIALOUGE VOLUME",master],
["uivol","UI VOLUME",master],
["uiscale","UI SCALE",master]
]

damagenumbers=1
moneynumbers=1
muteall=0

dollarhide=0
specialfx=1
//mobile
joystick=0
if os_type=os_ios or os_type=os_android {
joystick=1
}
joystickx=0
joysticky=0
joystickon=0
joydist=0
joyangle=0
joysticksize=2.5

//0discovered:0no1yes,2YES  1unlocked: 0no, 1yes, 2,YES, 2level,3levelcap
notice=[
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,-1],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,-1],
[0,0,0,3],
[0,0,0,10],
[0,0,0,10],
[0,0,0,-1],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,10],
[0,0,0,3],
[0,0,0,10],
[0,0,0,25]
]

upgradetot=0;

mainmenu=1
//looking for trouble (hard mode)
lookingfortrouble=0
//No cap (unlimited upgrade)
nocap=0
//no time limit
endurance=0
//spawnitems
cantgivemenothing=0

dondadollars=0;
dondadollarsprevious=dondadollars;
dolcen=display_get_gui_width()/2
choiceluck=10
luck=1
dollarfade=1
modes=[
1,
1,
1,
1
]

//stages
//0name,1id, 2xp mult, 3dollar mult, 4enemy quantity, 5enemy health,6length seconds, 7 unlocked?
//8 desc
stages=[
["Yean Cat",1,1,1,1,1,1800,1,""],
["Donda 3",2,1,1,1,1,2013,1,""]
]
fullscreen=1
selectedstage=0

if mainmenu=1 {
	instance_create_layer(room_width, room_height/2-50, "uii", obj_start);
	instance_create_layer(room_width, room_height/2-350, "uiitop", obj_logo);
	instance_create_layer(0, 0, "uiitop", obj_gear);
	instance_create_layer(0, 0, "uiitop", quit_button);
		instance_create_layer(0, 0, "uiitop", obj_stats);
	instance_create_layer(0, 0, "uiitop", obj_grammyicon);
	
	instance_create_layer(room_width, room_height/2+125, "uii", obj_upgrade);
	instance_create_layer(room_width, room_height/2+300, "uii", obj_unlock);
}


tiprev=0;
stemplay=0
stemtime=0
record=0;

if record=1 {
drumvol=1
bassvol=1
melodyvol=1
vocalvol=1
} else {
drumvol=0
bassvol=0
melodyvol=0
vocalvol=0
}
checkwep=0

sg = audio_create_sync_group(true);
sound1=dondavocals
sound2=dondamelody
sound3=dondadrums
sound4=dondabass

damef=0
damgro=1
fadedam=0
gwidth = display_get_gui_width()
gheight = display_get_gui_height()
sss=1

global.pause=0
global.upg=0


sfx=[
eatsound,gun1,gun2,gun3,flash1,flash2,flash3,hurt1,hurt2,hurt3,levelupsound,xp1,xp2,xp3,xp4,xp5,xp6,xp7,yehurt1,yehurt2,yehurt3
]
musik=[
yeancat_music_intro,yeancat_music_loop,yeealittle,winterscold,waterintodrank,praisegod,majestic,lucille,intheend,heartache,glory,freeingchrist,fourtyyears,ellayel,chasingghosts,cancelled
]

track1=glory
track2=cancelled
track3=waterintodrank
track4=winterscold
track5=freeingchrist
track6=majestic
track7=ellayel
track8=heartache
track9=lucille
track10=yeealittle
track11=chasingghosts
track12=fourtyyears
track13=praisegod
track14=intheend

dialouge=[
pennyhitsound,pennymisssound,defconscream,kanyreremark1,kanyreremark2,kanyreremark3,kanyreremark4,kanyreremark5,kanyreremark6,kanyreremark7,
razziA1,razziA2,razziA3,razziA4,razziB1,razziB2,razziB3,razziB4,razziF1,razziF2,razziF3,razziF4
]

vocal=[dondavocals]
melody=[dondamelody]
drum=[dondadrums]
bass=[dondabass]

control = false
sfx_loaded=false;
stems_loaded=false;
revani=0
speedd=10
magnet=100
time=0
vert=0
horz=0
ti=0


level=1
levellast=level;
xp=0
xpprev=0
xpto=2
xpcount=0
xpbuff=0;

spawnthings=false;
spawnenemies=false;

//key for xp
keypitch=1
key=0
//F#Major/EbMinor
//key=0
//GMajor/EMinor
//key=1
//G#Major/FMinor
//key=2
//AMajor/F#Minor
//key=3
//A#Major/GMinor
//key=4
//BMajor/G#Minor
//key=5
//CMajor/AMinor
//key=6
//DbMajor/A#Minor
//key=7
//DMajor/BMinor
//key=8
//EbMajor/CMinor
//key=9
//EMajor/C#Minor
//key=10
//FMajor/DMinor
//key=11

dollarslide=0

devmode=0
bboo=0




spawnitem=0
dondaunlocked=0
donda3=0
track=1

loop=1
delta_second = 1000000;
second=0;
minute=0;
hour=0;
lower=0


startmusic=1;

charscreams=[
defconscream,
nothingsound,
nothingsound,
nothingsound,
nothingsound,
nothingsound,
nothingsound,
nothingsound,
rehinoscream,
emunemscream,
nothingsound,
nothingsound,
nothingsound,
nothingsound
]

soundscream=audio_play_sound(nothingsound,0,0);
music=audio_play_sound(nothingsound,0,0);
bossmusic=audio_play_sound(nothingsound,0,0);
audio_stop_all();

bossp=1

mobfreqset=100
mobfreq=mobfreqset

foodfreqset=450
foodchance=30
foodfreq=foodfreqset

itemfrequencyset=5
rampitem=0;
itemfrequency=itemfrequencyset*1000000

dirmov=0
dirmovs=0
//ENEMIES
//position //1name //2health //3resistance0-1invincible /4/rate //5attacktype //6damage //7movetype //8 //9image //10released //11appearance [0=character,1=boss] //12appearanceid //13planetid
spaceboss=[
[7.5,"Futurtle",1000,.25,1,1,1,4,1,spr_boss1,0,0,2,13],
[27.5,"Travis Squawk",3333,.35,1,1,1,4,1,spr_boss1,0,0,4,12],
[50,"Peacocky 69",6969,.45,1,1,1,4,1,spr_boss1,0,0,6,11],
[70,"Rehino",13000,.65,1,1,1,4,1,spr_boss1,0,0,8,10],
[90,"22 Salamander",22222,.75,1,1,1,4,1,spr_boss1,0,0,10,9],
[122,"Squid Cudi",100000,.85,1,1,1,4,1,spr_boss1,0,0,12,8],
[163,"Dracoon",666666,.9,1,1,1,4,1,spr_boss1,0,0,14,7],
[212,"Kid Boo",111111,.9,1,1,1,4,1,spr_boss1,0,0,13,6],
[257,"Lil Sheep",66666,.8,1,1,1,4,1,spr_boss1,0,0,11,5],
[280,"Emunem",40000,.7,1,1,1,4,1,spr_boss1,0,0,9,4],
[300,"Lil Hump",40000,.6,1,1,1,4,1,spr_boss1,0,0,7,3],
[320,"Bee-Yonce",10000,.5,1,1,1,4,1,spr_boss1,0,0,5,2],
[337,"Kim Chameleon",5000,.4,1,1,1,4,1,spr_boss1,0,0,3,1],
[352,"Taylor Swan",500,.3,1,1,1,4,1,spr_boss1,0,0,1,0]
]


groundboss=[
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0]
]

//0object, 1spawning?, 2size (1 normal), 3resistance (none,0-1,invincible), 4damage (1 normal),5speed (1 normal),6xp(0none,1,normal),7rarity,8 dollars,9health,	
//10=direction 0=left,1r,2u,3d,4dl,5ul,6ru,7rd,8random
//11=gravity?
//12: 1=onlylr,2=only ud
//13:flying
	mob = [
		[ghost,1,.75,0,1,1,1,1,1,1,0,0,0,1],
		[stardavid,1,.6,0,1,1.5,1,3,1,1,3,0,0,1],
		[razziA,1,1,0,1,.5,1,10,1,1,8,1,1,0],
		[razziF,1,1,0,.7,.7,1,10,1,1,8,1,1,0],
		[ghost,1,.75,0,1,1,1,1,1,1,0,0,0,1],
		[stardavid,1,.6,0,1,1.5,1,3,1,1,3,0,0,1],
		[razziA,1,1,0,1,.5,1,10,1,1,8,1,1,0],
		[razziF,1,1,0,.7,.7,1,10,1,1,8,1,1,0],
		[ghost,1,.75,0,1,1,1,1,1,1,0,0,0,1],
		[stardavid,1,.6,0,1,1.5,1,3,1,1,3,0,0,1]
	];
	mobarray = [		//SP? SZ,R	,Dam,Speed	,XP	,Rar,Dol,HP	,Dir,Grv,H/V,Fly?
	//earth
		[stardavid		,1,.6	,0	,1	,1.5	,1	,3	,1	,1	,3	,0	,0	,1],//0
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[bearenemy		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//goldmines
		[grammyenemy	,1,.75	,0	,1	,1		,1	,1	,1	,2	,0	,0	,0	,1],//5
		[taylorfan		,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[golddigger		,1,1.1	,.2	,.7	,.6		,1	,10	,1	,4	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,3	,8	,0	,0	,1],
		[musicexec		,1,1.1	,.3	,1.2,.7		,1	,20	,2	,4.5,8	,1	,1	,0],//REPLACE with x boyfriend
	//university
		[capenemy		,1,.75	,0	,1	,1		,1	,1	,1	,3	,0	,0	,0	,1],//10
		[graduateenemy	,1,1.1	,.2	,1	,.5		,1	,10	,1	,4	,8	,1	,1	,0],
		[fiftycent		,1,.75	,0	,1	,1		,1	,1	,1	,3	,0	,0	,0	,1],
		[fpaper			,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[professor		,1,1.1	,.3	,1.2,.7		,1	,20	,2	,6	,8	,1	,1	,0],
	//icyheart
		[frozenrose		,1,.6	,0	,1	,1.5	,1	,3	,1	,3	,3	,0	,0	,1],//15
		[frozenheart	,1,.75	,0	,1	,1		,1	,1	,1	,4	,0	,0	,0	,1],
		[graduateenemy	,1,1.1	,.2	,1	,.5		,1	,10	,1	,6	,8	,1	,1	,0],//replace
		[brokenring		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,3	,8	,0	,0	,1],
		[surgeon		,1,1.1	,.2	,.7	,.6		,1	,10	,1	,7	,8	,1	,1	,0],		
	//fantasia
		[monsterenemy	,1,1.1	,.2	,1	,.5		,1	,10	,1	,5	,8	,1	,1	,0],//20
		[liquorbottle	,1,.75	,0	,1	,1		,1	,1	,1	,4	,0	,0	,0	,1],
		[devilinadress	,1,1.1	,.2	,1	,.5		,1	,10	,1	,7	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,4	,8	,0	,0	,1],//replace
		[nightdemon		,1,1.1	,.2	,.7	,.6		,1	,10	,1	,8	,8	,1	,1	,0],	
	//kingdom
		[monsterenemy	,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],//25
		[liquorbottle	,1,.75	,0	,1	,1		,1	,1	,1	,1	,0	,0	,0	,1],
		[devilinadress	,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],//replace
		[nightdemon		,1,1.1	,.2	,.7	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
	//lucy
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//30
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//yetopia
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//35
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//pablo
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//40
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//divinedomain
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//45
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//ghosttown
		[ghost			,1,.75	,0	,1	,1		,1	,1	,1	,1	,0	,0	,0	,1],//50
		[liquorbottle	,1,.75	,0	,1	,1		,1	,1	,1	,1	,0	,0	,0	,1],//REPLACe
		[devilinadress	,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],//replace
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],//replace
		[nightdemon		,1,1.1	,.2	,.7	,.6		,1	,10	,1	,3	,8	,1	,1	,0],//replace
	//stormysand
		[stardavid		,1,.6	,0	,1	,1.5	,1	,3	,1	,2	,3	,0	,0	,1],//55
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//vulture
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//60
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[vulture		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],//61
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//theendonda
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//65
		[razziA			,1,1.1	,.2	,1	,.5		,1	,10	,1	,3	,8	,1	,1	,0],
		[blackball		,1,1	,.8 ,4	,1		,4  ,50 ,4  ,5	,8	,0	,0	,1],
		[razziF			,1,1.1	,.2	,1	,.6		,1	,10	,1	,3	,8	,1	,1	,0],
		[musicexec		,1,1.1	,.3	,2,.7		,1	,20	,2	,4	,8	,1	,1	,0],
	//??
		[cancelledsign	,1,.6	,0	,1	,1.5	,1	,2	,1	,1	,3	,0	,0	,1],//70
						//SP? SZ,R	,Dam,Speed	,XP	,Rar,Dol,HP	,Dir,Grv,H/V,Fly?
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	];
	mobground=[
	[70,1,2,3,4],//earth
	[10,11,12,13,14],//university
	[20,21,22,23,24],//fantasia
	[70,31,32,33,34],//lucy
	[70,41,42,43,44],//pablo
	[70,51,52,53,54],//ghostown
	[70,61,62,63,64],//vulture
	[70,66,67,68,69],//theendonda
	[0,56,57,58,59],//stormysand
	[70,46,47,48,49],//divinedomain
	[70,36,37,38,39],//yetopia
	[70,26,27,28,29],//kingdom
	[15,16,17,18,19],//icyheart
	[5,6,7,8,9],//goldmines
	[70,1,2,3,-1]
	]
//0,5,8,10,12,15,16,18,21,
	mobspace=[
	[70,5,8,70,5],//earth
	[5,8,10,12,8],//university
	[12,5,8,18,21],//fantasia
	[15,16,18,21,5],//lucy
	[5,16,18,21,8],//pablo
	[50,16,50,21,50],//ghostown
	[5,8,50,21,8],//vulture
	[5,50,8,21,8],//theendonda
	[5,8,50,21,70],//stormysand
	[5,8,0,21,8],//divinedomain
	[5,8,50,21,8],//yetopia
	[15,5,18,21,8],//kingdom
	[12,15,16,18,21],//icyheart
	[5,8,10,12,15],//goldmines
	[70,5,8,0,5]
	]
	mobscharacters=[
	[70,1,2,3,0],
	[5,6,7,8,9],
	[10,11,12,13,14],
	[15,16,17,18,19],
	[20,21,22,23,24],
	[25,26,27,28,29],
	[30,31,32,33,34],
	[35,36,37,38,39],
	[40,41,42,43,44],
	[45,46,47,48,49],
	[50,51,52,53,54],
	[55,56,57,58,59],
	[60,61,62,63,64],
	[65,66,67,68,69],
	[70,1,2,3,-1]
	]

//killtrack
//thisrun
runkills= [
0, //0star of david
0, //1razzi Male
0, //2 bear
0, //3razzi female
0, //4blackball
0, //5executive
0,	//6
0,	//7 golddigger
0,	//8 blackball
0,	//9 music exec
0,	//10 cap
0,	//11 graduate
0,	//12 50cent
0,	//13 paper
0,	//14 professor
0,	//15 rose
0,	//16 heart
0,	//17
0,	//18 brokenring
0,	//19 surgeon
0,	//20 monster
0,	//21 liquor
0,	//22 devil in a dress
0,	//23
0,	//24 night demon
0,	//25
0,	//26
0,	//27
0,	//28
0,	//29
0,	//30
0,	//31
0,	//32
0,	//33
0,	//34
0,	//35
0,	//36
0,	//37
0,	//38
0,	//39
0,	//40
0,	//41
0,	//42
0,	//43
0,	//44
0,	//45
0,	//46
0,	//47
0,	//48
0,	//49
0,	//50 ghost
0,	//51
0,	//52
0,	//53
0,	//54
0,	//55
0,	//56
0,	//57
0,	//58
0,	//59
0,	//60
0,	//61
0,	//62
0,	//63
0,	//64
0,	//65
0,	//66
0,	//67
0,	//68
0,	//69
0	//70
]

killrec=0
overallkills=0
overallkillsgame=0
killcount=0
killcountlast=0
kps=0



//alltime
allkills= [
0, //0star of david
0, //1razzi Male
0, //2 bear
0, //3razzi female
0, //4blackball
0, //5executive
0,	//6
0,	//7 golddigger
0,	//8 blackball
0,	//9 music exec
0,	//10 cap
0,	//11 graduate
0,	//12 50cent
0,	//13 paper
0,	//14 professor
0,	//15 rose
0,	//16 heart
0,	//17
0,	//18 brokenring
0,	//19 surgeon
0,	//20 monster
0,	//21 liquor
0,	//22 devil in a dress
0,	//23
0,	//24 night demon
0,	//25
0,	//26
0,	//27
0,	//28
0,	//29
0,	//30
0,	//31
0,	//32
0,	//33
0,	//34
0,	//35
0,	//36
0,	//37
0,	//38
0,	//39
0,	//40
0,	//41
0,	//42
0,	//43
0,	//44
0,	//45
0,	//46
0,	//47
0,	//48
0,	//49
0,	//50 ghost
0,	//51
0,	//52
0,	//53
0,	//54
0,	//55
0,	//56
0,	//57
0,	//58
0,	//59
0,	//60
0,	//61
0,	//62
0,	//63
0,	//64
0,	//65
0,	//66
0,	//67
0,	//68
0,	//69
0	//70
]

recordkill=0
recordtime=0
recordlevel=0

playtime=0
playtimegame=0
chartotalkill=[
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
]
chartotalkillgame=[
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
]
charrecordkill=[
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1
]
charrecordtime=[
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1
]
charrecordlevel=[
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1
]


//CHECKING KILL COUNT OF AN ENEMY

////check total kills
//var enid = "INSERT ID"
//var tarkil = "TARGET NUMBER"
//if runkills[enid]+allkills[enid] >= tarkil {
//	//RUN TASK COMPLETION CODE
//}

////check run kills
//var enid = "INSERT ID"
//var tarkil = "TARGET NUMBER"
//if runkills[enid] >= tarkil {
//	//RUN TASK COMPLETION CODE
//}


//0object,
//1can spawn,
//2has spawned
//3collected?
//4rarity(1=100%,2=50%)
//5variant
//6 good=1, bad=-1; neutral=0 (for determining luck)
ite=noone
xcent=0
centfade=-1
dollarcent=""
//ITEMS
itemsload = [
[penny,1,0,0,20,0,0],
[dondadollar,0,0,0,1,1,1],
[bigmac,1,0,0,10,0,1],
[bigmac,0,0,0,10,1,1],
[defcon,1,0,0,100,1,1],
[defcon,0,0,0,200,2,1],
[defcon,0,0,0,300,3,1],
[defcon,0,0,0,400,4,1],
[defcon,0,0,0,500,5,1],
[shades,0,0,0,600,0,1],
[obj_oxycontin,1,0,0,100,1,1],
[obj_oxycontin,0,0,0,200,2,1],
[obj_oxycontin,0,0,0,300,3,1],
[obj_oxycontin,0,0,0,400,4,1],
[obj_oxycontin,0,0,0,500,5,1],
[obj_passiveitem,0,0,0,250,0,1],
[obj_passiveitem,0,0,0,250,1,1],
[obj_passiveitem,0,0,0,250,2,1],
[obj_passiveitem,0,0,0,250,3,1],
[obj_passiveitem,0,0,0,250,4,1],
[obj_passiveitem,0,0,0,250,5,1],
[obj_passiveitem,0,0,0,250,6,1],
[obj_passiveitem,0,0,0,250,7,1],
[obj_passiveitem,0,0,0,250,8,1],
[obj_passiveitem,0,0,0,250,9,1],
[obj_passiveitem,0,0,0,250,10,1],
[obj_passiveitem,0,0,0,250,11,1],
[obj_passiveitem,0,0,0,250,12,1],
[obj_passiveitem,0,0,0,250,13,1],
[obj_passiveitem,0,0,0,250,14,1],
[obj_passiveitem,0,0,0,250,15,1],
[obj_passiveitem,0,0,0,250,16,1],
[obj_passiveitem,0,0,0,250,17,1],
[obj_passiveitem,0,0,0,250,18,1],
[obj_passiveitem,0,0,0,250,19,1],
[obj_passiveitem,0,0,0,250,20,1],
[obj_passiveitem,0,0,0,250,21,1],
[obj_passiveitem,0,0,0,250,22,1],
[obj_passiveitem,0,0,0,250,23,1],
[obj_passiveitem,0,0,0,250,24,1],
[obj_passiveitem,0,0,0,250,25,1],
[obj_passiveitem,0,0,0,250,26,1],
[obj_weaponitem,0,0,0,100,0,1],
[obj_weaponitem,0,0,0,100,1,1],
[obj_weaponitem,0,0,0,100,2,1],
[obj_weaponitem,0,0,0,100,3,1],
[obj_weaponitem,0,0,0,100,4,1],
[obj_weaponitem,0,0,0,100,5,1],
[obj_weaponitem,0,0,0,100,6,1],
[obj_weaponitem,0,0,0,100,7,1],
[obj_weaponitem,0,0,0,100,8,1],
[obj_weaponitem,0,0,0,100,9,1],
[obj_weaponitem,0,0,0,100,10,1],
[obj_weaponitem,0,0,0,100,11,1],
[obj_weaponitem,0,0,0,100,12,1],
[obj_weaponitem,0,0,0,100,13,1],
[obj_weaponitem,0,0,0,100,14,1],
[obj_weaponitem,0,0,0,100,15,1],
[obj_weaponitem,0,0,0,100,16,1],
[obj_weaponitem,0,0,0,100,17,1],
[obj_weaponitem,0,0,0,100,18,1],
[obj_weaponitem,0,0,0,100,19,1],
[obj_weaponitem,0,0,0,100,20,1],
[obj_weaponitem,0,0,0,100,21,1],
[obj_weaponitem,0,0,0,100,22,1],
[obj_weaponitem,0,0,0,100,23,1],
[obj_weaponitem,0,0,0,100,24,1],
[obj_weaponitem,0,0,0,100,25,1],
[obj_weaponitem,0,0,0,100,26,1],
[obj_weaponitem,0,0,0,100,27,1],
[obj_weaponitem,0,0,0,100,28,1],
[obj_weaponitem,0,0,0,100,29,1],
[obj_weaponitem,0,0,0,100,30,1],
[obj_weaponitem,0,0,0,100,31,1],
[obj_weaponitem,0,0,0,100,32,1],
[obj_weaponitem,0,0,0,100,33,1],
[obj_weaponitem,0,0,0,100,34,1],
[obj_weaponitem,0,0,0,100,35,1],
[obj_weaponitem,0,0,0,100,36,1],
[obj_weaponitem,0,0,0,100,37,1],
[album,0,0,0,1000,1,1],
[album,0,0,0,1000,2,1],
[album,0,0,0,1000,3,1],
[album,0,0,0,1000,4,1],
[album,0,0,0,1000,5,1],
[album,0,0,0,1000,6,1],
[album,0,0,0,1000,7,1],
[album,0,0,0,1000,8,1],
[album,0,0,0,1000,9,1],
[album,0,0,0,1000,10,1],
[album,0,0,0,1000,11,1],
[album,0,0,0,1000,12,1],
[album,0,0,0,1000,13,1],
[album,0,0,0,1000,14,1],
[stemplayer,0,0,0,500,0,1]
]

//collectibles
//0name,1state, 2amount collected, 3amount til next,4enabled,5upgradeprice,6level,7seen,i8mage, 9can disable, 10item id, 11image_index, 12unlocks what, 13 requirement(s) 14text color, 15object type, 16 rarity, 17variant, 18 good or bad, 19 in shop? 
//state: 0 =locked, 1=unlocked, 2=obtained.
//type //type: 0=s, 1=weapon, 2=passive, 3=item, 4=healing, 5=boost, 6=music, 7=collectible, 8=other,9=currency, 10=equipable, 11=drug, 12=questitem

collection=[
["Penny"	,	0,	0,	-1,   1,  -1,		 -1,  0,spr_penny		,0	,0	,0	,1	,-1	,c_orange	,9	,1,		0,	-1, 0],//0
["Dollar"	,	0,	0,	-1,   1,  -1,		-1,  0,spr_dondadollar	,1	,1	,0	,-1	,0	,c_green	,9	,10,	0,	1, 0],
["Cheeseburger"	,0,	0,	50,   1,  -1,		-1,  0,spr_bigmac		,1	,2	,0	,3	,-1	,c_yellow	,4	,2,		0,	1, 0],
["Double Cheeseburger",	0,0,-1,0, -1,		-1,  0,spr_bigmac		,1	,2	,1	,-1	,2	,c_yellow	,4	,2,		1,	1, 0],
["Defcon"	,	0,	0,	5,    1,  100,		-1,  0,spr_defcon		,1	,3	,0	,5	,-1	,c_orange	,5	,50,	1,	1, 0],
["Defcon 2",	0,	0,	10,   0,  1000,		 -1,  0,spr_defcon		,1	,3	,1	,6	,5	,c_red		,5	,100,	2,	1, 0],
["Defcon 3",	0,	0,	25,   0,  10000,	-1,  0,spr_defcon		,1	,3	,2	,7	,6	,c_yellow	,5 	,200,	3,	1, 0],
["Defcon 4",	0,	0,	50,   0,  100000,	 -1,  0,spr_defcon		,1	,3	,3	,8	,7	,c_green	,5	,350,	4,	1, 0],
["Defcon 5",	0,	0,	-1,  0,  -1,		 -1,  0,spr_defcon		,1	,3	,4	,-1	,8	,c_blue		,5	,500,	5,	1, 0],
["Shades",		0,	0,	-1,   1,  -1,		-1,  0,spr_shades		,1	,4	,0	,-1	,-1	,c_black	,10	,50,	0,	1, 0],
["OxyContin",	0,	0,	31,   0,  1000,		 -1,  0,spr_oxy			,1	,5	,0	,11	,-1	,c_white	,11	,100,	1,	1, 0],//10
["OxyContin 2",	0,	0,	31,   0,  10000,		-1,  0,spr_oxy		,1	,5	,0	,12	,10	,c_white	,11	,200,	2,	1, 0],
["OxyContin 3",	0,	0,	31,   0,  100000,		 -1,  0,spr_oxy		,1	,5	,0	,13	,11	,c_white	,11	,300,	3,	1, 0],
["OxyContin 4",	0,	0,	31,   0,  1000000,		 -1,  0,spr_oxy		,1	,5	,0	,14	,12	,c_white	,11	,400,	4,	1, 0],
["OxyContin 5",	0,	0,	-1,   0,  10000000,		 -1,  0,spr_oxy		,1	,5	,0	,-1	,13	,c_white	,11	,500,	5,	1, 0],
["Bound to Fortune", 0, 0, -1, 0, -1, -1, 0, spr_bound2fortune, 1, 6, 0, -1, -1, c_white, 2, 50, 0, 1, 0],
["Champion", 0, 0, -1, 0, -1, -1, 0, spr_champion, 1, 6, 0, -1, -1, c_white, 2, 50, 1, 1, 0],
["Curse", 0, 0, -1, 0, -1, -1, 0, spr_curse, 1, 6, 0, -1, -1, c_white, 2, 50, 2, 1, 0],
["Donda's Blessing", 0, 0, -1, 0, -1, -1, 0, spr_dondasblessing, 1, 6, 0, -1, -1, c_white, 2, 50, 3, 1, 0],
["Ego", 0, 0, -1, 0, -1, -1, 0, spr_ego, 1, 6, 0, -1, -1, c_white, 2, 50, 4, 1, 0],
["Faith", 0, 0, -1, 0, -1, -1, 0, spr_faith, 1, 6, 0, -1, -1, c_white, 2, 50, 5, 1, 0],//20
["Fame", 0, 0, -1, 0, -1, -1, 0, spr_fame, 1, 6, 0, -1, -1, c_white, 2, 50, 6, 1, 0],
["Free Will", 0, 0, -1, 0, -1, -1, 0, spr_freewill, 1, 6, 0, -1, -1, c_white, 2, 50, 7, 1, 0],
["Graduate", 0, 0, -1, 0, -1, -1, 0, spr_graduate, 1, 6, 0, -1, -1, c_white, 2, 50, 8, 1, 0],
["Heart", 0, 0, -1, 0, -1, -1, 0, spr_heart, 1, 6, 0, -1, -1, c_white, 2, 50, 9, 1, 0],
["Heartbreak", 0, 0, -1, 0, -1, -1, 0, spr_heartbreak, 1, 6, 0, -1, -1, c_white, 2, 50, 10, 1, 0],
["Law of Attraction", 0, 0, -1, 0, -1, -1, 0, spr_lawofattraction, 1, 6, 0, -1, -1, c_white, 2, 50, 11, 1, 0],
["Life of the Party", 0, 0, -1, 0, -1, -1, 0, spr_lifeoftheparty, 1, 6, 0, -1, -1, c_white, 2, 50, 12, 1, 0],
["Longevity", 0, 0, -1, 0, -1, -1, 0, spr_longevity, 1, 6, 0, -1, -1, c_white, 2, 50, 13, 1, 0],
["Love", 0, 0, -1, 0, -1, -1, 0, spr_love, 1, 6, 0, -1, -1, c_white, 2, 50, 14, 1, 0],
["Mercy", 0, 0, -1, 0, -1, -1, 0, spr_mercy, 1, 6, 0, -1, -1, c_white, 2, 50, 15, 1, 0],//30
["Miracle", 0, 0, -1, 0, -1, -1, 0, spr_miracle, 1, 6, 0, -1, -1, c_white, 2, 50, 16, 1, 0],
["Monster", 0, 0, -1, 0, -1, -1, 0, spr_monster, 1, 6, 0, -1, -1, c_white, 2, 50, 17, 1, 0],
["Power", 0, 0, -1, 0, -1, -1, 0, spr_power, 1, 6, 0, -1, -1, c_white, 2, 50, 18, 1, 0],
["Prescription", 0, 0, -1, 0, -1, -1, 0, spr_prescription, 1, 6, 0, -1, -1, c_white, 2, 50, 19, 1, 0],
["Spectacle", 0, 0, -1, 0, -1, -1, 0, spr_spectacle, 1, 6, 0, -1, -1, c_white, 2, 50, 20, 1, 0],
["Wealth", 0, 0, -1, 0, -1, -1, 0, spr_wealth, 1, 6, 0, -1, -1, c_white, 2, 50, 21, 1, 0],
["Wisdom", 0, 0, -1, 0, -1, -1, 0, spr_wisdom, 1, 6, 0, -1, -1, c_white, 2, 50, 22, 1, 0],
["Wonder", 0, 0, -1, 0, -1, -1, 0, spr_wonder, 1, 6, 0, -1, -1, c_white, 2, 50, 23, 1, 0],
["Clone", 0, 0, -1, 0, -1, -1, 0, spr_clone, 1, 6, 0, -1, -1, c_white, 2, 50, 24,1, 0],
["Nerd Blaster", 0, 0, -1, 0, -1, -1, 0, spr_nerdblaster, 1, 7, 0, -1, -1, c_white, 1, 100, 0, 1, 0],//40
["Nerd Blaster 3000", 0, 0, -1, 0, -1, -1, 0, spr_nerdblaster3000, 1, 7, 0, -1, -1, c_white, 1, 100, 1, 1, 0],
["Cellphone", 0, 0, -1, 0, -1, -1, 0, spr_cellphone, 1, 7, 0, -1, -1, c_white, 1, 100, 2, 1, 0],
["2 Phones", 0, 0, -1, 0, -1, -1, 0, spr_2phones, 1, 7, 0, -1, -1, c_white, 1, 100, 3, 1, 0],
["Gospel Choir", 0, 0, -1, 0, -1, -1, 0, spr_gospelchoir, 1, 7, 0, -1, -1, c_white, 1, 100, 4, 1, 0],
["Symphony", 0, 0, -1, 0, -1, -1, 0, spr_symphony, 1, 7, 0, -1, -1, c_white, 1, 100, 5, 1, 0],
["808 Drum", 0, 0, -1, 0, -1, -1, 0, spr_808drum, 1, 7, 0, -1, -1, c_white, 1, 100, 6, 1, 0],
["RoboCop", 0, 0, -1, 0, -1, -1, 0, spr_robocop, 1, 7, 0, -1, -1, c_white, 1, 100, 7, 1, 0],
["Chains", 0, 0, -1, 0, -1, -1, 0, spr_chains, 1, 7, 0, -1, -1, c_white, 1, 100, 8, 1, 0],
["Gold Chains", 0, 0, -1, 0, -1, -1, 0, spr_goldchains, 1, 7, 0, -1, -1, c_white, 1, 100, 9, 1, 0],
["Holy Water", 0, 0, -1, 0, -1, -1, 0, spr_holywater, 1, 7, 0, -1, -1, c_white, 1, 100, 10, 1, 0],//50
["Blood of Christ", 0, 0, -1, 0, -1, -1, 0, spr_bloodofchrist, 1, 7, 0, -1, -1, c_white, 1, 100, 11, 1, 0],
["Yeezus", 0, 0, -1, 0, -1, -1, 0, spr_yeezus, 1, 7, 0, -1, -1, c_white, 1, 100, 12, 1, 0],
["Chakra", 0, 0, -1, 0, -1, -1, 0, spr_chakra, 1, 7, 0, -1, -1, c_white, 1, 100, 13, 1, 0],
["Yandhi", 0, 0, -1, 0, -1, -1, 0, spr_yandhi, 1, 7, 0, -1, -1, c_white, 1, 100, 14, 1, 0],
["The Storm", 0, 0, -1, 0, -1, -1, 0, spr_thestorm, 1, 7, 0, -1, -1, c_white, 1, 100, 15, 1, 0],
["Hurricane", 0, 0, -1, 0, -1, -1, 0, spr_hurricane, 1, 7, 0, -1, -1, c_white, 1, 100, 16, 1, 0],
["Pisces", 0, 0, -1, 0, -1, -1, 0, spr_pisces, 1, 7, 0, -1, -1, c_white, 1, 100, 17, 1, 0],
["Moon", 0, 0, -1, 0, -1, -1, 0, spr_moon, 1, 7, 0, -1, -1, c_white, 1, 100, 18, 1, 0],
["M1911", 0, 0, -1, 0, -1, -1, 0, spr_m1911, 1, 7, 0, -1, -1, c_white, 1, 100, 19, 1, 0],
["Golden M1911", 0, 0, -1, 0, -1, -1, 0, spr_goldenm1911, 1, 7, 0, -1, -1, c_white, 1, 100, 20, 1, 0],//60
["Saint Pablo Shield", 0, 0, -1, 0, -1, -1, 0, spr_saintpabloshield, 1, 7, 0, -1, -1, c_white, 1, 100, 21, 1, 0],
["Saint Pablo Sword", 0, 0, -1, 0, -1, -1, 0, spr_saintpablosword, 1, 7, 0, -1, -1, c_white, 1, 100, 22, 1, 0],
["Fire", 0, 0, -1, 0, -1, -1, 0, spr_fire, 1, 7, 0, -1, -1, c_white, 1, 100, 23, 1, 0],
["Self-Immolation", 0, 0, -1, 0, -1, -1, 0, spr_selfimmolation, 1, 7, 0, -1, -1, c_white, 1, 100, 24, 1, 0],
["Gemini", 0, 0, -1, 0, -1, -1, 0, spr_gemini, 1, 7, 0, -1, -1, c_white, 1, 100, 25, 1, 0],
["Sun", 0, 0, -1, 0, -1, -1, 0, spr_sun, 1, 7, 0, -1, -1, c_white, 1, 100, 26, 1, 0],
["Wolf", 0, 0, -1, 0, -1, -1, 0, spr_wolf, 1, 7, 0, -1, -1, c_white, 1, 100, 27, 1, 0],
["Wolves", 0, 0, -1, 0, -1, -1, 0, spr_wolves, 1, 7, 0, -1, -1, c_white, 1, 100, 28, 1, 0],
["Flashing Lights", 0, 0, -1, 0, -1, -1, 0, spr_flashinglights, 1, 7, 0, -1, -1, c_white, 1, 100, 29, 1, 0],
["Ultralight Beam", 0, 0, -1, 0, -1, -1, 0, spr_ultralightbeam, 1, 7, 0, -1, -1, c_white, 1, 100, 30, 1, 0],//70
["All of the Lights", 0, 0, -1, 0, -1, -1, 0, spr_allofthelights, 1, 7, 0, -1, -1, c_white, 1, 100, 31, 1, 0],
["Fantasy", 0, 0, -1, 0, -1, -1, 0, spr_fantasy, 1, 7, 0, -1, -1, c_white, 1, 100, 32, 1, 0],
["Dark Fantasy", 0, 0, -1, 0, -1, -1, 0, spr_darkfantasy, 1, 7, 0, -1, -1, c_white, 1, 100, 33, 1, 0],
["Sunday Service", 0, 0, -1, 0, -1, -1, 0, spr_sundayservice, 1, 7, 0, -1, -1, c_white, 1, 100, 34, 1, 0],
["I am a God", 0, 0, -1, 0, -1, -1, 0, spr_iamagod, 1, 7, 0, -1, -1, c_white, 1, 100, 35, 1, 0],
["Ultimate Gemini", 0, 0, -1, 0, -1, -1, 0, spr_ultimategemini, 1, 7, 0, -1, -1, c_white, 1, 100, 36, 1, 0],
["Mirage Breaker", 0, 0, -1, 0, -1, -1, 0, spr_miragebreaker, 1, 7, 0, -1, -1, c_white, 1, 100, 37, 1, 0],
["Glory",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,0	,-1	,-1	,c_white	,6	,1000,		0,	1, 0],
["Cancelled",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,1	,-1	,-1	,c_white	,6	,1000,		1,	1, 0],
["Water Into Drank",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,2	,-1	,-1	,c_white	,6	,1000,		2,	1, 0],//80
["Winter's Cold",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,3	,-1	,-1	,c_white	,6	,1000,		3,	1, 0],
["Freeing Christ",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,4	,-1	,-1	,c_white	,6	,1000,		4,	1, 0],
["Majestic",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,5	,-1	,-1	,c_white	,6	,1000,		5,	1, 0],
["Ella y El",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,6	,-1	,-1	,c_white	,6	,1000,		6,	1, 0],
["808s and Heartaches",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,7	,-1	,-1	,c_white	,6	,1000,		7,	1, 0],
["Lucille",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,8	,-1	,-1	,c_white	,6	,1000,	 8,	1, 0],
["Yee a Little Faith",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,9	,-1	,-1	,c_white	,6	,1000,		9,	1, 0],
["Chasing Ghosts",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,10	,0	,-1	,-1	,c_white	,6	,1000,		10,	1, 0],
["40 Years",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,11	,-1	,-1	,c_white	,6	,1000,		11,	1, 0],
["Praise God",	0,	0,	-1,   0,  -1, -1,  0,spr_album,0	,0	,12	,-1	,-1	,c_white	,6	,1000,		12,	1, 0],//90
["In the End",	0,	0,	-1,   0,  1000, -1,  0,spr_album,0	,0	,13	,-1	,-1	,c_white	,6	,1000,		13,	1, 0],
["Stem Player",	0,	0,	-1,   0,  -1, -1,  0,spr_stemplayer,0	,0	,0	,-1	,-1	,c_white	,7	,500,		0,	1, 0]//92
]

//0name, 1how to unlock, 2description, 3Effect
collectiontext=[
["Penny","Collect this Item","Somebody Just Threw\na F**kin' Penny at Me","Valued at 1 Cent"],
["Dollar","Collect this Item","In Ye We Trust","Currency"],
["Cheeseburger","Collect this Item","Can I Get Uhhhhh","Heals 3 Health"],
["Double Cheeseburger","Collect this Item","Can I Get Uhhhhh","Heals 6 Health"],
["Defcon","","As soon as I wake up\nthey're gonna get it","Pulls out an AK-47"],
["Defcon 2","","This is the last Straw","Pulls out an AK-47"],
["Defcon 3","","I meant hop on stream\nand play COD","Pulls out an AK-47"],
["Defcon 4","","I meant hop on stream\nand play COD","Pulls out an AK-47"],
["Defcon 5","","I meant hop on stream\nand play COD","Pulls out an AK-47"],
["Shades","","Tiny Sunglasses are Going to be Huge","Take Half Damage from Papparazzi"],
["OxyContin","","That's the good stuff","Slower Time, Faster Attack"],
["OxyContin 2","","That's the good stuff","Slower Time, Faster Attack"],
["OxyContin 3","","That's the good stuff","Slower Time, Faster Attack"],
["OxyContin 4","","That's the good stuff","Slower Time, Faster Attack"],
["OxyContin 5","","That's the good stuff","Slower Time, Faster Attack"],
["Bound to Fortune","","",""],
["Champion","","",""],
["Curse","","",""],
["Donda's Blessing","","",""],
["Ego","","",""],
["Faith","","",""],
["Fame","","",""],
["Free Will","","",""],
["Graduate","","",""],
["Heart","","",""],
["Heartbreak","","",""],
["Law of Attraction","","",""],
["Life of the Party","","mhm, 'til I almost Cry","Increases Attack Speed"],
["Longevity","","",""],
["Love","","",""],
["Mercy","","",""],
["Miracle","","",""],
["Monster","","",""],
["Power","","I'm tripping off the power","Increases Damage"],
["Prescription","","",""],
["Spectacle","","",""],
["Wealth","","",""],
["Wisdom","","",""],
["Wonder","","",""],
["Clone","","",""],
["Nerd Blaster","Max this Weapon","Stand up to those 'Nerd Ass' Jocks","Fires Projectiles"],
["Nerd Blaster 3000","","",""],
["Cellphone","","",""],
["2 Phones","","",""],
["Gospel Choir","","",""],
["Symphony","","",""],
["808 Drum","","",""],
["RoboCop","","",""],
["Chains","","",""],
["Gold Chains","","",""],
["Holy Water","","",""],
["Blood of Christ","","",""],
["Yeezus","","",""],
["Chakra","","",""],
["Yandhi","","",""],
["The Storm","","",""],
["Hurricane","","",""],
["Pisces","","",""],
["Moon","","",""],
["M1911","","",""],
["Golden M1911","","",""],
["Saint Pablo Shield","","",""],
["Saint Pablo Sword","","",""],
["Fire","","",""],
["Self-Immolation","","",""],
["Gemini","","",""],
["Sun","","",""],
["Wolf","","",""],
["Wolves","","",""],
["Flashing Lights","","",""],
["Ultralight Beam","","",""],
["All of the Lights","","",""],
["Fantasy","","",""],
["Dark Fantasy","","",""],
["Sunday Service","","",""],
["I am a God","","",""],
["Ultimate Gemini","","",""],
["Mirage Breaker","","",""],
["Glory","","",""],
["Cancelled","","",""],
["Water Into Drank","","",""],
["Winter's Cold","","",""],
["Freeing Christ","","",""],
["Majestic","","",""],
["Ella y El","","",""],
["808s and Heartaches","","",""],
["Lucille","","",""],
["Yee a Little Faith","","",""],
["Chasing Ghosts","","",""],
["40 Years","","",""],
["Praise God","","",""],
["In the End","","",""],
["Stem Player","","",""],
]


								
items = [
[penny,1,0,0,20,0,0],
[dondadollar,1,0,0,1,1,1],
[bigmac,1,0,0,1,0,1],
[bigmac,0,0,0,10,1,1],
[defcon,1,0,0,100,1,1],
[defcon,0,0,0,200,2,1],
[defcon,0,0,0,300,3,1],
[defcon,0,0,0,400,4,1],
[defcon,0,0,0,500,5,1],
[shades,0,0,0,500,0,1],
[obj_oxycontin,0,0,0,10,1,1],
[obj_oxycontin,0,0,0,20,2,1],
[obj_oxycontin,0,0,0,30,3,1],
[obj_oxycontin,0,0,0,40,4,1],
[obj_oxycontin,0,0,0,50,5,1],
[obj_passiveitem,0,0,0,250,0,1],
[obj_passiveitem,0,0,0,250,1,1],
[obj_passiveitem,0,0,0,250,2,1],
[obj_passiveitem,0,0,0,250,3,1],
[obj_passiveitem,0,0,0,250,4,1],
[obj_passiveitem,0,0,0,250,5,1],
[obj_passiveitem,0,0,0,250,6,1],
[obj_passiveitem,0,0,0,250,7,1],
[obj_passiveitem,0,0,0,250,8,1],
[obj_passiveitem,0,0,0,250,9,1],
[obj_passiveitem,0,0,0,250,10,1],
[obj_passiveitem,0,0,0,250,11,1],
[obj_passiveitem,0,0,0,250,12,1],
[obj_passiveitem,0,0,0,250,13,1],
[obj_passiveitem,0,0,0,250,14,1],
[obj_passiveitem,0,0,0,250,15,1],
[obj_passiveitem,0,0,0,250,16,1],
[obj_passiveitem,0,0,0,250,17,1],
[obj_passiveitem,0,0,0,250,18,1],
[obj_passiveitem,0,0,0,250,19,1],
[obj_passiveitem,0,0,0,250,20,1],
[obj_passiveitem,0,0,0,250,21,1],
[obj_passiveitem,0,0,0,250,22,1],
[obj_passiveitem,0,0,0,250,23,1],
[obj_passiveitem,0,0,0,250,24,1],
[obj_passiveitem,0,0,0,250,25,1],
[obj_passiveitem,0,0,0,250,26,1],
[obj_weaponitem,0,0,0,100,0,1],
[obj_weaponitem,0,0,0,100,1,1],
[obj_weaponitem,0,0,0,100,2,1],
[obj_weaponitem,0,0,0,100,3,1],
[obj_weaponitem,0,0,0,100,4,1],
[obj_weaponitem,0,0,0,100,5,1],
[obj_weaponitem,0,0,0,100,6,1],
[obj_weaponitem,0,0,0,100,7,1],
[obj_weaponitem,0,0,0,100,8,1],
[obj_weaponitem,0,0,0,100,9,1],
[obj_weaponitem,0,0,0,100,10,1],
[obj_weaponitem,0,0,0,100,11,1],
[obj_weaponitem,0,0,0,100,12,1],
[obj_weaponitem,0,0,0,100,13,1],
[obj_weaponitem,0,0,0,100,14,1],
[obj_weaponitem,0,0,0,100,15,1],
[obj_weaponitem,0,0,0,100,16,1],
[obj_weaponitem,0,0,0,100,17,1],
[obj_weaponitem,0,0,0,100,18,1],
[obj_weaponitem,0,0,0,100,19,1],
[obj_weaponitem,0,0,0,100,20,1],
[obj_weaponitem,0,0,0,100,21,1],
[obj_weaponitem,0,0,0,100,22,1],
[obj_weaponitem,0,0,0,100,23,1],
[obj_weaponitem,0,0,0,100,24,1],
[obj_weaponitem,0,0,0,100,25,1],
[obj_weaponitem,0,0,0,100,26,1],
[obj_weaponitem,0,0,0,100,27,1],
[obj_weaponitem,0,0,0,100,28,1],
[obj_weaponitem,0,0,0,100,29,1],
[obj_weaponitem,0,0,0,100,30,1],
[obj_weaponitem,0,0,0,100,31,1],
[obj_weaponitem,0,0,0,100,32,1],
[obj_weaponitem,0,0,0,100,33,1],
[obj_weaponitem,0,0,0,100,34,1],
[obj_weaponitem,0,0,0,100,35,1],
[obj_weaponitem,0,0,0,100,36,1],
[obj_weaponitem,0,0,0,100,37,1],
[album,0,0,0,1000,0,1],
[album,0,0,0,1000,1,1],
[album,0,0,0,1000,2,1],
[album,0,0,0,1000,3,1],
[album,0,0,0,1000,4,1],
[album,0,0,0,1000,5,1],
[album,0,0,0,1000,6,1],
[album,0,0,0,1000,7,1],
[album,0,0,0,1000,8,1],
[album,0,0,0,1000,9,1],
[album,0,0,0,1000,10,1],
[album,0,0,0,1000,11,1],
[album,0,0,0,1000,12,1],
[album,0,0,0,1000,13,1],
[stemplayer,0,0,0,500,0,1]
]
deaths=0
adsleft=1


//PASSIVES
//DEM1 = ID;
//0name, 
//1obtained?, 
//2discovered?, 
//3level, 
//4max level, 
//5image, 
//6description
//7unlocked? (found in randomizer)
//8banished
//9can spawn?
//10limitbreak?

//wepcount=0
//pascount=0
//choicecount=3

choiceluck=20//probability of getting extra choice
oxyfrequencyset=60*3
oxyfrequency=0
//levelable stats
ldamage=1
lrate=1
lrange=1
lspeed=1
lsize=1
lcrit=0
lcamount=0
lduration=1
lattract=1
lresist=1 //1.1
lcurse=0
llove=0
lfaith=0
lfreewill=0 //max 1
lheart=0
lwisdom=0
heartseconds=5
lheartbreak=0
lrevives=0
lwealth=1
lchampion=0
lgraduate=1
lvanish=1
lclone=0
lluck=1
leinstein=1;


//internal stats
damage=1; //power
attackrate=1;
wisdom=0
range=1; //fame area of effect
projectilespeed=1; //wonder
projectilesize=1;//spectacle
criticalchance=0; //monster
criticalamount=2;
duration=1;//longevity
attraction=1;
pickuppotency=1; //wisdom
mercy=0; //half damage
resistance=0;//0none 1=invincible
curse=0
freewill=0;
faith=0; //heal damage dealt
love=0; //max health
heart=0; //heal per second
heartbreak=0; //retalitory damage
revives=0; //miracle
prescription=0;
wealth=1; //1=normal 2= twice as frequent
dondasblessing=1; //damage buff when half health
champion=0; //chance to dodge
graduate=1; //xp mult
luck=1; //bound2fortune
clone=0
vanish=0 //1= completely invisible
einstein=1; //all buff boost
boost=0

//0ITEM ID //1planet[i] or space-1, //2playerpos/spacepos, 3//spawned? 4type? 0=n/a 1=passive 2=weapon 3=music 5:moving?
//passives are id +15
//weapons are id +41
//music is +78
arrowright=0
arrowleft=0
worlditems=[
//EARTH
[15+12,0,50000,0,1,0],
[78+0,0,100000,0,3,0],
[15+14,0,-50000,0,1,0],
//GOLD MINES
[15+20,13,60000,0,1,0],
[78+1,13,100000,0,3,0],
[15+21,13,-60000,0,1,0],
//UNIVERSE CITY
[15+8,1,70000,0,1,0],
[78+2,1,100000,0,3,0],
[15+6,1,-70000,0,1,0],
//ICY HEART
[15+11,12,80000,0,1,0],
[78+3,12,100000,0,3,0],
[15+10,12,-80000,0,1,0],
//FANTASIA
[15+18,2,90000,0,1,0],
[78+4,2,100000,0,3,0],
[15+17,2,-90000,0,1,0],
//KINGDOM
[15+4,11,100000,0,1,0],
[78+5,11,150000,0,3,0],
[15+22,11,-100000,0,1,0],
//LUCY
[15+15,3,110000,0,1,0],
[78+8,3,100000,0,3,0],
[15+3,3,-110000,0,1,0],
//YETOPIA
[15+7,10,120000,0,1,0],
[78+7,10,100000,0,3,0],
[15+19,10,-120000,0,1,0],
//PABLO
[15+9,4,130000,0,1,0],
[78+6,4,100000,0,3,0],
[15+26,4,-130000,0,1,0],
//DEVINE DOMAIN
[15+5,9,140000,0,1,0],
[78+9,9,100000,0,3,0],
[15+16,9,-140000,0,1,0],
//GHOST TOWN
[15+25,5,150000,0,1,0],
[78+10,5,100000,0,3,0],
[15+2,5,-150000,0,1,0],
//STORMY SANDS
[15+13,8,160000,0,1,0],
[78+11,8,100000,0,3,0],
[15+0,8,-160000,0,1,0],
//VULTURE VALLEY
[15+24,6,-170000,0,1,0],
[78+12,6,100000,0,3,0],
[15+23,6,170000,0,1,0],
//ENDONDA
[78+13,7,-100000,0,3,0],
[15+1,7,200000,0,1,0]
]

passives=[
["Bound to Fortune", 0, 0, 0, 5, spr_bound2fortune, "+5% Luck", 0,0,0,0],
["Champion", 0, 0, 0, 10, spr_champion, "+5% Chance to Dodge Attacks", 0,0,0,0],
["Curse", 0, 0, 0, 10, spr_curse, "+5%\nEnemy Health, Quantity, & Speed", 0,0,0,0],
["Donda's Blessing", 0, 0, 0, 9, spr_dondasblessing, "+20% Damage\nWhen below half Health", 0,0,0,0],
["Ego", 0, 0, 0, 10, spr_ego, "+5% Damage Resistance", 0,0,0,0],
["Faith", 0, 0, 0, 10, spr_faith, "Heal 2% of Damage Dealt", 0,0,0,0],
["Fame", 0, 0, 0, 10, spr_fame, "+10% Attack Range", 0, 0, 0,0],
["Free Will", 0, 0, 0, 10, spr_freewill, "+10% Movement Handling", 0, 0, 0,0],
["Graduate", 0, 0, 0, 10, spr_graduate, "+5% XP", 0, 0, 0,0],
["Heart", 0, 0, 0, 7, spr_heart, "+1 Heal/ 5 Seconds", 0, 0, 0,0],
["Heartbreak", 0, 0, 0, 10, spr_heartbreak, "5% Widespread Retalitory Damage", 0, 0, 0,0],
["Law of Attraction", 0, 0, 0, 10, spr_lawofattraction, "+10% Attractor Pickup Range", 0, 0, 0,0],
["Life of the Party", 0, 0, 0, 10, spr_lifeoftheparty, "+10% Attack Rate", 0, 0, 0,0],
["Longevity", 0, 0, 0, 10, spr_longevity, "+10% Attack Duration", 0, 0, 0,0],
["Love", 0, 0, 0, 10, spr_love,"+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")", 0, 0, 0,0],
["Mercy", 0, 0, 0, 6, spr_mercy, "Every Minute,\n Take Half Damage for 5 Seconds", 0, 0, 0,0],
["Miracle", 0, 0, 0, 4, spr_miracle, "+1 Revive\nwith half Health", 0, 0, 0,0],
["Monster", 0, 0, 0, 12, spr_monster, "+2% Critical Chance (x2 Damage)", 0, 0, 0,0],
["Power", 0, 0, 0, 10, spr_power, "+10% Damage", 0, 0, 0,0],
["Prescription", 0, 0, 0, 6, spr_prescription, "OxyContin Spawns Every 3 Minutes", 0, 0, 0,0],
["Spectacle", 0, 0, 0, 10, spr_spectacle, "+10% Projectile Size", 0, 0, 0,0],
["Wealth", 0, 0, 0, 10, spr_wealth, "+5% Dollar Drop & Frequency", 0, 0, 0,0],
["Wisdom", 0, 0, 0, 10, spr_wisdom, "Item Pickups:\n+5% Duration & Effect", 0, 0, 0,0],
["Wonder", 0, 0, 0, 10, spr_wonder, "+10% Projectile Speed", 0, 0, 0,0],
["Clone", 0, 0, 0, 3, spr_clone, "+1 Projectile Amount", 0, 0, 0,0],
["Vanish Mode", 0, 0, 0, 10, spr_vanishmode, "-5% Enemy Eyesight", 0, 0, 0,0],
["Einstein", 0, 0, 0, 25, spr_einstein, "+2% Passives' Potency", 0, 0, 0,0]
]

//THIS IS THE ORDER WHICH PLAYERS WILL COME ACROSS ABILITIES
//12. Life of the Party
//14. Love
//20. Spectacle
//21. Wealth
//8.  Graduate
//6.  Fame
//11. Law of Attraction
//10. Heartbreak
//18. Power
//17. Monster
//4. Ego
//22. Wisdom
//15. Mercy
//3.  Donda's Blessing
//7.  Free Will
//19. Prescription
//9. Heart
//26. Einstein
//5. Faith
//16. Miracle
//25. Vanish Mode
//2. Curse
//13. Longevity
//0. Bound 2 Fortune
//24. Clone
//1. Champion

moneyspent=0
lastlogin=0
password=""

limitmaxlevel=[
[[200,100000,200,30],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[200,100000,5,5],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[200,200,200,200],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100,500,100,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,4],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[50,100000,100,50],[100000,100000,100000,100000]],
[[100,100000,100,100],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[200,200,200,200],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[200,200,200,200],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100000,50,50],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,100,50,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[50,50,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]],
[[100000,100000,100000,100000],[100000,100000,100000,100000]]
]



// create array for limit break bonuses stat bonus rotation and cap.
// add calculations for tots
// add effects on weapons
//	text changer arrays	
// add text changer for upgrades
updatetext=1

weapontext=[
["A Toy Gun","+10% Attack Rate\n+33% Aim Speed","x2 Damage","+1 Penetration","+15% Attack Rate\n+33% Aim Speed","+50% Damage","+20 Degrees Range\n+50% Aim Speed","+20% Attack Rate\n+50% Projectile Speed","+25% Projectile Size\n+50% Damage\n+15% Attack Rate","+1 Projectile",""],
["","","","","","","","","","",""],
["The Twitter Machine","x2 Damage","+1 Projectile","+10% Attack Rate\nand + 50% Projectile Speed","Grabs 2 Enemies","x2 Damage","+1 Projectile","+15% Attack Rate","+50% Projectile Size","x2 Damage",""],
["","","","","","","","","","",""],
["Hallelujah","50% Damage\n+1 Harmony","+20% Attack Rate\n+1 Penetration","+1 Harmony\n25% Volume (Size)","+50% Damage\n+33% Duration","+20% Attack Rate\n+1 Harmony","+25% Volume\n+33% Duration","+33% Damage","+1 Harmony\n+1 Penetration","x2 Damage\n+25% Volume",""],
["","","","","","","","","","",""],
["Bass Bumpin'","x1.5 Damage","+33% Range","+50% Rate","+66% Damage","+25% Range","+33% Rate","+50% Damage","+15% Range","x2 Damage",""],
["","","","","","","","","","",""],
["Break Free","+10% Range\n+25% Rotation Speed","+25% Duration\n+10% Rotationspeed","+10% Attack Rate","+25% Damage\n+25% Duration","+25% Rotation Speed","+15% Attack Rate","+50% Damage","+50% Rotation Speed","+25% Range",""],
["","","","","","","","","","",""],
["In the Name of the Father","+10% Rate","+25% Range","+1 Amount","+50% Damage","+25% Range","+15% Rate","+1 Amount","+25% Range","x2 Damage",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["Enter Zen","2nd Chakra\n+50% Damage","3rd Chakra\n+25% Range","4th Chakra","5th Chakra\n+50% Damage","6th Chakra\n+25% Range","7th Chakra","+33% Duration","+50% Orb Speed","+1 Penetration",""],
["","","","","","","","","","",""],
["It's a Brewin'","+25% Range","+25% Damage","+33% Attack Rate","+1 Chain Length","+25% Duration","+50% Damage","+33% Attack Rate","+25% Range","+1 Chain Length",""],
["","","","","","","","","","",""],
["I'm a Sensitive Person","+33% Fish Speed","+25% Duration","+10% Attack Rate","+50% Damage\n+25% Fish Size","+25% Duration","+10% Attack Rate","+33% Fish Speed","+25% Duration\n+10% Attack Rate","+50% Damage\n+25% Fish Size",""],
["I wanna go there","+50% Damage\n+50% Orbit Speed","+25% Radius\n+25% Size","+50% Oscilation Rate\nx2 Oscillation Range","x2 Damage","+25% Radius\n+50% Orbit Speed","+50% Oscilation Rate\nx2 Oscillation Range","x2 Damage","+25% Radius\n+50% Size","x3 Damage",""],
["Blacka Blacka!","+50% Fire Rate","+50% Damage\n+50% Aim Speed","+50% Fire Rate\n+50% Projectile Speed","+1 Penetration","+50% Damage/n+50% Projectile Speed","+50% Fire Rate\n+50% Aim Speed","+50% Projectile Speed\n+50% Fire Rate","+50% Projectile Size\n+20% Attack Rate\n+20% Damage","+50% Fire Rate",""],
["","","","","","","","","","",""],
["Defensive Weapon","20% Move Speed","+25% Range\n+50% Size","+20% Move Speed","Spikes","+25% Range\n+10% Move Speed","+20% Move Speed","More Spikes","+25% Range\n+50% Size","x2 Damage",""],
["Give them Scars","+50% Movement Speed","+25% Range\n+25% Size","+50% Attack Rate\nx2 Range","x2 Damage","+25% Range\n+50% Movement Speed","+50% Attack Rate\nx2 Range","x2 Damage","+25% Range\n+25% Size","x3 Damage",""],
["La Flame","+33% Fire Speed","+25% Duration","+10% Attack Rate","+50% Damage\n+25% Projectile Size","+25% Duration","+15% Attack Rate","+33% Fire Speed","+50% Damage","+25% Size\n+25% Duration",""],
["","","","","","","","","","",""],
["Look in my Eye","+50% Damage\n+10% Move Speed","+25% Range\n+50% Size","+50% Blink Rate","x2 Damage","+25% Range\n+10% Move Speed","+50% Blink Rate","+50% Damage","+25% Range\n+50% Size","x2 Damage",""],
["","","","","","","","","","",""],
["Howl at the Moon","+50% Damage","+50% Duration","+10% Rate","+50% Wolf Speed","+25% Duration","+25% Wolf Speed\n+1 Attack Count","+33% Duration","+10% Rate\n+50% Damage","+33% Wolf Speed\n+1 Attack Count",""],
["","","","","","","","","","",""],
["That S**t is Bright","x2 Damage","+33% Range","+33% Rate","+50% Damage","+25% Range","+33% Rate","+50% Damage","+15% Range","x2 Damage",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["Imagination","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage","+25% Range","+50% Damage",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""],
["","","","","","","","","","",""]
]

//ldamage*(1+(.1*passives[18,3])*einstein)
passivetext=[
"+"+string((((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*(master.passives[0,3]+1))*einstein)-1)-((1+.05*(master.notice[0,2])*leinstein)*(1+(.05*master.passives[0,3])*einstein)-1))*100)+"% Luck\n("+string((((1+.05*(master.notice[0,2])*leinstein)*(1+.05*(master.passives[0,3]+1)*einstein))-1)*100)+"%)",
"+"+string(((1-(1/(1+.02*((master.passives[1,3]+1)*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))-(1-(1/(1+.02*(master.passives[1,3]*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck)))))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/(1+.02*((master.passives[1,3]+1)*einstein*master.luck)+(.02*(master.notice[1,2])*leinstein*master.lluck))))*100)+"%)",
"+"+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*(master.passives[2,3]+1))*einstein)-((1+.05*(master.notice[2,2])*leinstein)*(1+.05*master.passives[2,3])*einstein))*100)+"%\nEnemy Health, Quantity, & Speed\n("+string((((1+.05*(master.notice[2,2])*leinstein)*(1+.05*(master.passives[2,3]+1))*einstein)-1)*100)+"%)",
"Deal +"+string((((master.notice[3,2])*10*leinstein+20*clamp((master.passives[3,3]+1),0,1)+10*(clamp(master.passives[3,3]-1+1,0,99999))*einstein)-(master.notice[3,2]*10*leinstein+20*clamp(master.passives[3,3],0,1)+10*(clamp(master.passives[3,3]-1,0,99999))*einstein)))+"% Damage\nWhen below half Health\n("+string(((master.notice[3,2])*10*leinstein+20*clamp((master.passives[3,3]+1),0,1)+10*(clamp((master.passives[3,3]-1+1),0,99999))*einstein))+"%)",
"+"+string(((1-((1-(.05*(master.passives[4,3]+1)*einstein))/(1+.05*(master.notice[4,2])*leinstein)))-((1-((1-(.05*(master.passives[4,3])*einstein))/(1+.05*(master.notice[4,2])*leinstein)))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(master.passives[4,3]+1)*einstein))/(1+.05*(master.notice[4,2])*leinstein)))*100)+"%)",
"Heal "+string(((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*(master.passives[5,3]+1))*einstein)-1)-(((1+.02*(master.notice[5,2])*leinstein)*(1+.02*master.passives[5,3])*einstein)-1))*100)+"% of Damage Dealt\n("+string((((1+.02*(master.notice[5,2])*leinstein)*(1+.02*(master.passives[5,3]+1))*einstein)-1)*100)+"%)",
"+"+string((((1+.1*(master.notice[6,2])*leinstein)*(1+.1*(master.passives[6,3]+1)*einstein)-1)-((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*master.passives[6,3])*einstein)-1))*100)+"% Weapon & Ability Range\n("+string(((1+.1*(master.notice[6,2])*leinstein)*(1+(.1*(master.passives[6,3]+1))*einstein)-1)*100)+"%)",
"+"+string((((.05*(master.notice[7,2])*leinstein)+(.05*(master.passives[7,3]+1))*einstein)-((.05*(master.notice[7,2])*leinstein)+(.05*master.passives[7,3])*einstein))*100)+"% Movement\nSpeed & Handling ("+string(((.05*(master.notice[7,2])*leinstein)+(.05*(master.passives[7,3]+1))*einstein)*100)+"%)",
"+"+string((((1+.05*(master.notice[8,2])*leinstein)*(1+.05*(master.passives[8,3]+1))*einstein-1)-((1+.05*(master.notice[8,2])*leinstein)*(1+.05*master.passives[8,3])*einstein-1))*100)+"% XP\n("+string(((1+.05*(master.notice[8,2])*leinstein)*(1+.05*(master.passives[8,3]+1))*einstein-1)*100)+"%)",
"(Heal "+string((floor((clamp(master.passives[9,3]+1,0,1)+clamp(master.passives[9,3]-4+1,0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*(master.notice[9,2])*leinstein))))+" HP Every "+string((5-clamp(master.passives[9,3],0,4))/(1+.05*master.notice[9,2]*leinstein))+" Seconds+\n("+string(floor((clamp((master.passives[9,3]+1),0,1)+clamp((master.passives[9,3]-4+1),0,10000)+clamp(master.notice[9,2],0,1))*einstein+(.5*master.notice[9,2]*leinstein))/((5-clamp((master.passives[9,3]+1),0,4))/(1+.05*master.notice[9,2]*leinstein)))+" HP/Second)",
"+"+string(((.02*(master.passives[10,3]+1))*einstein*master.damage+(.02*(master.notice[10,2])*leinstein*master.ldamage)-(.02*master.passives[10,3])*einstein*master.damage+(.02*master.notice[10,2]*leinstein*master.ldamage))*100)+"% Retalitory Damage\n("+string(((.02*(master.passives[10,3]+1))*einstein*master.damage+(.02*(master.notice[10,2])*leinstein*master.ldamage))*100)+"%)",
"+"+string(((.05*(master.notice[11,2])*leinstein*master.lrange)+(1+.05*(master.passives[11,3]+1)*master.range*einstein)-((.05*master.notice[11,2]*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]))*master.range*einstein)))*100)+"% Attractor Pickup Range\n("+string(((.05*(master.notice[11,2])*leinstein*master.lrange)+(1+(.05*(master.passives[11,3]+1))*master.range*einstein)-1)*100)+"%)",
"+"+string((((1+.05*(master.notice[12,2])*leinstein)*(1+.1*(master.passives[12,3]+1)*einstein)-1)-((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*master.passives[12,3])*einstein)-1))*100)+"% Attack Rate\n("+string(((1+.05*(master.notice[12,2])*leinstein)*(1+(.1*(master.passives[12,3]+1))*einstein)-1)*100)+"%)",
"+"+string((((1+.05*(master.notice[13,2])*leinstein)*(1+.1*(master.passives[13,3]+1)*einstein)-1)-((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*master.passives[13,3])*einstein)-1))*100)+"% Attack Duration\n("+string(((1+.05*(master.notice[13,2])*leinstein)*(1+(.1*(master.passives[13,3]+1))*einstein)-1)*100)+"%)",
"+"+string(round(5*leinstein))+" Max Health\n("+string(round(10+master.love+5*leinstein))+"HP)",
"Every Minute,\n Take "+string(round(50/leinstein*100)/100)+"% Damage for "+string(5*(master.passives[15,3]+1))+" Seconds)",
"+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(master.revives+1)+")",
"+"+string(((1-(1/(1+.02*(master.passives[17,3]+1)*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein)))-1)-(1-(1/(1+.02*(master.passives[17,3])*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein)))-1))*100)+"% Critical Chance (x"+string((2*(.95+.05*clamp(master.passives[17,3],1,99999)))*einstein*(((.95+.05*(clamp(master.notice[17,2],1,99999)))*leinstein)))+" Damage)\n["+string((1-(1/(1+.02*(master.passives[17,3]+1)*master.luck*einstein))/(1+(.02*(master.notice[17,2])*leinstein*(1+.05*master.notice[0,2]*leinstein))))*100)+"%]",
"+"+string((((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*(master.passives[18,3]+1))*einstein)-1)-((1+.1*master.notice[18,2]*leinstein)*(1+(.1*master.passives[18,3])*einstein)-1))*100)+"% Damage\n("+string(((1+.1*(master.notice[18,2])*leinstein)*(1+(.1*(master.passives[18,3]+1))*einstein)-1)*100)+"%)",
"OxyContin Spawns\nEvery 3 Minutes",
"+"+string((((1+.05*(master.notice[20,2])*leinstein)*(1+(.05*(master.passives[20,3]+1))*einstein)-1)-((1+.05*(master.notice[20,2])*leinstein)*(1+(.05*master.passives[20,3])*einstein)-1))*100)+"% Projectile Size\n("+string(((1+.05*(master.notice[20,2])*leinstein)*(1+(.05*(master.passives[20,3]+1))*einstein)-1)*100)+"%)",
"+"+string(((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*(master.passives[21,3]+1))*einstein)-1)-((1+.05*(master.notice[21,2])*leinstein)*(1+.05*master.passives[21,3])*einstein-1))*100)+"% Money Value & Frequency\n("+string((((1+.05*(master.notice[21,2])*leinstein)*(1+.05*(master.passives[21,3]+1))*einstein)-1)*100)+"%)",
"Item Pickups:\n+"+string((((1+.05*(master.notice[22,2])*leinstein)*(1+.05*(master.passives[22,3]+1)*einstein)-1)-((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*master.passives[22,3])*einstein)-1))*100)+"% Duration & Effect ("+string(((1+.05*(master.notice[22,2])*leinstein)*(1+(.05*(master.passives[22,3]+1))*einstein)-1)*100)+"%)",
"+"+string(((1+.1*(master.notice[23,2])*leinstein)*(1+.1*(master.passives[23,3]+1)*einstein)-(1+.1*(master.notice[23,2])*leinstein)*(1+(.1*master.passives[23,3])*einstein))*100)+"% Projectile Speed\n("+string(((1+.1*(master.notice[23,2])*leinstein)*(1+(.1*(master.passives[23,3]+1))*einstein)-1)*100)+"%)",
"+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor((master.passives[24,3]+1)*einstein+master.notice[24,2]*leinstein)))+")",
"-"+string(((((1-(.05*(master.passives[25,3]+1)*einstein))/(master.lvanish)))-(((1-(.05*(master.passives[25,3])*einstein))/(master.lvanish+.05*leinstein))))*100)+"% Enemy Eyesight\n("+string((((1-(.05*(master.passives[25,3]+1)*einstein))/(master.lvanish)))*100)+"%)",
]

passivetext2=[
["+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","+"+string(5*einstein)+"% Luck\n("+string((lluck*(luck+.05*einstein)-1)*100)+"%)","",""],
["+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)","+"+string(((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))-(1-(1/((1+.05*(passives[1,3]))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck)))*100)+"% Chance to Dodge Attacks\n("+string((1-(1/((1+.05*(passives[1,3]+1))*einstein*luck))/(1+.05*master.notice[1,2]*leinstein*lluck))*100)+"%)"],
["+"+string(5*einstein)+"%\nEnemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)","+"+string(5*einstein)+"% Enemy Health, Quantity, & Speed\n("+string((lcurse+1)*(.05*(passives[2,3]+1))*einstein*100)+"%)"],
["Deal +"+string(20*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)","Deal +"+string(10*einstein)+"% Damage\nWhen below half Health\n("+string(20+10*(passives[3,3]))+"%)"],
["+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)","+"+string(((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))-(1-((1-(.05*(passives[4,3])*einstein))/(1+.05*master.notice[4,2]*leinstein))))*100)+"% Damage Resistance\n("+string((1-((1-(.05*(passives[4,3]+1)*einstein))/(1+.05*master.notice[4,2]*leinstein)))*100)+"%)"],
["Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)","Heal "+string(2*einstein)+"% of Damage Dealt\n("+string((0+(.02*(passives[6,3]+1))*einstein)*100)+"%)"],
["+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Range\n("+string((range-1+.10*einstein)*100)+"%)","",""],
["+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")","+"+string(5*einstein)+"% Movement\nSpeed & Handling\n("+string((.5*lfreewill*leinstein+(.05*passives[7,3]+1)*einstein)*100)+")"],
["+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)","+"+string(5*einstein)+"% XP\n("+string((lgraduate*(.05*(passives[8,3]+1))*einstein)*100)+"%)",""],
["Heal "+string(1*einstein)+" Health\nEvery "+string(heartseconds)+" Seconds","-1 Second\n(+"+string(heart)+" HP / "+string(heartseconds-1)+" Seconds)","-1 Second\n(+"+string(heart)+" HP / "+string(heartseconds-1)+" Seconds)","-1 Second\n(+"+string(heart)+" HP / "+string(heartseconds-1)+" Second)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)","+"+string(1*einstein)+" Heal/Sec\n(+"+string(heart+1*einstein)+" HP/Sec)"],
["+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","+"+string(5*einstein*damage)+"% Retalitory Damage\n("+string((heartbreak+.05*einstein*damage)*100)+"%)","",""],
["+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.05*(passives[11,3]))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","+"+string(10*einstein*range)+"% Attractor Pickup Range\n("+string((lattract*(1+(.1*(passives[11,3]+1))*range*einstein-1))*100)+"%)","",""],
["+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Rate\n("+string((attackrate-1+.10*einstein)*100)+"%)","",""],
["+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Attack Duration\n("+string((duration-1+.10*einstein)*100)+"%)","",""],
["+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(5*einstein))+" Max Health\n("+string(round(10+love+5*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","+"+string(round(10*einstein))+" Max Health\n("+string(round(10+love+10*einstein))+")","",""],
["Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","Every Minute,\n Take "+string(round(50/einstein*100)/100)+"% Damage for "+string(5*(passives[15,3]+1))+" Seconds","","","","","",""],
["+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","+"+string(1)+" Revive\nWith "+string(clamp((1-(1-.5*einstein)/leinstein)*100,0,100))+"% Health ("+string(revives+1)+")","","","","","","","",""],
["+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]","+"+string((((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))-(1-(1/(1+.02*(passives[17,3]))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein)))*100)+"% Critical Chance (x"+string(2*einstein)+" Damage)\n["+string((1-(1/(1+.02*(passives[17,3]+1))*luck*einstein)/(1+.02*master.notice[17,2]*leinstein))*100)+"%]"],
["+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","+"+string(10*einstein)+"% Damage\n("+string(ldamage*((.1*(passives[18,3]+1))*einstein)*100)+"%)","",""], //power
["OxyContin Spawns\nEvery 3 Minutes","OxyContin Spawns\nEvery 2 Min: 30 Sec","OxyContin Spawns\nEvery 2 Minutes","OxyContin Spawns\nEvery 1 Min: 30 Sec","OxyContin Spawns\nEvery 1 Minute","OxyContin Spawns\nEvery 30 Seconds","","","","","",""],
["+"+string(5*einstein)+"% Projectile Size\n("+string((projectilesize-1+.05*einstein)*100)+"%)","+"+string(5*einstein)+"% Projectile Size\n("+string((projectilesize-1+.05*einstein)*100)+"%)","+"+string(5*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Size\n("+string((projectilesize-1+.10*einstein)*100)+"%)",""],
["+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)","+"+string(5*einstein)+"% Money Value & Frequency\n("+string((lwealth*(1+.05*(passives[21,3]*einstein)))*100)+"% Value & Frequency)"],
["Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")","Item Pickups:\n+"+string(5*einstein)+"% Duration & Effect\n("+string(((passives[22,3]+1)*.05*einstein)*100)+")"],
["+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","+"+string(10*einstein)+"% Projectile Speed\n("+string((projectilespeed-1+.10*einstein)*100)+"%)","",""],
["+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")","+"+string(floor(1*einstein))+" Projectile Amount\n("+string((floor(passives[25,3]+1)*einstein))+")"],
["-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","-"+string(5*einstein)+"% Enemy Eyesight\n("+string((((1-(.05*(passives[25,3]+1)*einstein))/lvanish))*100)+")","",""]
]




eintext=["","","","","","","","","","","","","","","","","","","","","","","","",""]

updatestats=1
limitchosen=-1

//WEAPONS 
//DEM1 = ID;
//0name, 
//1 type, 0=base, 1=evolution, 2=superevo, 3=fusion
//2obtained?, 
//3discovered?, 
//4level, 
//5max level, 
//6passive requirement1, -1 = none
//7passive requirement2, -1 = none 
//8weapon requirement1, -1 = none
//9weapon requirement 2 -1 = none,
//10require max passives? 0 or 1
//11image, 
//12description
//13unlocked? (found in randomizer)
//14banished?
//15can spawn

weapons=[
["Nerd Blaster", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_nerdblaster,"A Toy Gun",0,0,0],
["Nerd Blaster 3000", 1, 0, 0, 0, 10, 18, -1, 0, -1, 0, spr_nerdblaster3000,"Nerd Eradicator",0,0,0],
["Cellphone", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_cellphone,"The Twitter Machine",0,0,0],
["2 Phones", 1, 0, 0, 0, 10, 26, -1, 2, -1, 0, spr_2phones,"",0,0,0],
["Gospel Choir", 0, 0, 1, 0, 10, -1, -1, -1, -1, 0, spr_gospelchoir,"Seranade your Enemies",1,0,0],
["Symphony", 1, 0, 0, 0, 10, 23, -1, 4, -1, 0, spr_symphony,"",0,0,0],
["808 Drum", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_808drum,"It go Boom",0,0,0],
["RoboCop", 1, 0, 0, 0, 10, 10, -1, 6, -1, 0, spr_robocop,"",0,0,0],
["Chains", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_chains,"",0,0,0],
["Gold Chains", 1, 0, 0, 0, 10, 0, -1, 8, -1, 0, spr_goldchains,"",0,0,0],
["Holy Water", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_holywater,"",0,0,0],//10
["Blood of Christ", 1, 0, 0, 0, 10, 16, -1, 10, -1, 0, spr_bloodofchrist,"",0,0,0],
["Yeezus", 2, 0, 0, 0, 10, 15, -1, 11, -1, 0, spr_yeezus,"",0,0,0],
["Chakra", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_chakra,"",0,0,0],
["Yandhi", 1, 0, 0, 0, 10, 7, -1, 13, -1, 0, spr_yandhi,"",0,0,0],
["The Storm", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_thestorm,"",0,0,0],
["Hurricane", 1, 0, 0, 0, 10, 13, -1, 15, -1, 0, spr_hurricane,"",0,0,0],
["Pisces", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_pisces,"",0,0,0],
["Moon", 1, 0, 0, 0, 10, 22, -1, 17, -1, 0, spr_moon,"",0,0,0],
["M1911", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_m1911,"",0,0,0],
["Golden M1911", 1, 0, 0, 0, 10, 21, -1, 19, -1, 0, spr_goldenm1911,"",0,0,0],//20
["Saint Pablo Shield", 0, 0, 1, 0, 10, -1, -1, -1, -1, 0, spr_saintpabloshield,"",1,0,0],
["Saint Pablo Sword", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_saintpablosword,"",0,0,0],
["Fire", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_fire,"",0,0,0],
["Self-Immolation", 1, 0, 0, 0, 10, 20, -1, 23, -1, 0, spr_selfimmolation,"",0,0,0],
["Gemini", 0, 0, 1, 0, 10, -1, -1, -1, -1, 0, spr_gemini,"",1,0,0],
["Sun", 1, 0, 0, 0, 10, 12, -1, 25, -1, 0, spr_sun,"",0,0,0],
["Wolf", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_wolf,"",0,0,0],
["Wolves", 1, 0, 0, 0, 10, 17, -1, 27, -1, 0, spr_wolves,"",0,0,0],
["Flashing Lights", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_flashinglights,"",0,0,0],
["Ultralight Beam", 1, 0, 0, 0, 10, 6, -1, 29, -1, 0, spr_ultralightbeam,"",0,0,0],//30
["All of the Lights", 2, 0, 0, 0, 10, 19, -1, 30, -1, 0, spr_allofthelights,"",0,0,0],
["Fantasy", 0, 0, 0, 0, 10, -1, -1, -1, -1, 0, spr_fantasy,"",0,0,0],
["Dark Fantasy", 1, 0, 0, 0, 10, 2, -1, 32, -1, 0, spr_darkfantasy,"",0,0,0],
["Sunday Service", 3, 0, 0, 0, 10, 5, -1, 5, 11, 0, spr_sundayservice,"",0,0,0],
["I am a God", 3, 0, 0, 0, 10, 4, -1, 14, 12, 0, spr_iamagod,"",0,0,0],
["Ultimate Gemini", 3, 0, 0, 0, 10, 23, -1, 18, 26, 0, spr_ultimategemini,"",0,0,0],
["Mirage Breaker", 3, 0, 0, 0, 10, 2, -1, 21, 22, 0, spr_miragebreaker,"",0,0,0]
]
skipset=3
skips=3
rollset=3
rerolls=3
banishset=3
banishes=3
//0weapon //1passive
banlist= [
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0]
]

//0 never 1 always
randomchoice=0
randomchoiceonce=0
global.madj=1

wepcount=0
maxweapons=2
maxweapset=2
pascount=0
choicecount=3

weap=[
-1,
-1,
-1,
-1,
-1,
-1
]

pass=[
-1,
-1,
-1,
-1,
-1,
-1
]
cansubtract=1
//unlocked //name, //level,//xp,//xpto,//Lyricism (Damage), //Rhythm (AT rate), //Flow (Movement), //Swag (Money Value), variation (evolution?,13 starting weapon 14//height 15//type(0=normal,1=flying) 16;sits? 17unlocktext
characters=[
[1,"Yean Cat",1,0,10 ,1,1,1,1,  0,spr_yehead,spr_nyan,spr_rainbow,0,0,0,0,""],
[0,"Taylor Swan",1,0,10 ,1,1,1,1,  0,spr_taylorswan,spr_swanbody,spr_swanbow,29,33,1,32,""],
[0,"Futurtle",1,0,10 ,1,1,1,1,  0,spr_futurtle,spr_turtlebody,spr_turtlebow,10,0,0,0,""],
[0,"Kim Chameleon",1,0,10 ,1,1,1,1,  0,spr_kimk,spr_kimbody,spr_kimbow,2,0,0,0,""],
[0,"Travis Squawk",1,0,10 ,1,1,1,1,  0,spr_travissquack,spr_travisbody,spr_travisbow,23,0,1,0,""],
[0,"Bee-yonce",1,0,10 ,1,1,1,1,  0,spr_beeyonce,spr_beebody,spr_beetrail,32,15,1,0,""],
[0,"Peacocky 69",1,0,10 ,1,1,1,1,  0,spr_6ixnine,spr_sixninebody,spr_sixninebow,8,30,0,0,""],
[0,"Lil Hump",1,0,10 ,1,1,1,1,  0,spr_lilhump,spr_camelbody,spr_camelbow,15,35,0,0,""],
[0,"Rehino",1,0,10 ,1,1,1,1,  0,spr_rehino,spr_rhinobody,spr_rhinobow,17,35,0,0,""],
[0,"Emunem",1,0,10 ,1,1,1,1,  0,spr_emunem,spr_emubody,spr_emubow,13,30,0,0,""],
[0,"22 Salamander",1,0,10 ,1,1,1,1,  0,spr_21salamander,spr_salamanderbody,spr_21bow,22,0,0,0,""],
[0,"Lil Sheep",1,0,10 ,1,1,1,1,  0,spr_lilsheep,spr_sheepbody,spr_sheepbow,27,20,0,0,""],
[0,"Squid Cudi",1,0,10 ,1,1,1,1,  0,spr_squidcudi,spr_squidbody,spr_squidbow,18,0,0,0,""],
[0,"Kid Boo",1,0,10 ,1,1,1,1,  0,spr_kidboo,spr_boobody,spr_kidbow,6,0,0,0,""],
[0,"Dracoon",1,0,10 ,1,1,1,1,  0,spr_dracoon,spr_racoonbody,spr_racoonbow,19,5,0,0,""]
]
email="youremail@email.com"
tutorial=0
password=""
invisible = 0;
permissions=3; //0 player, 1 mod, 2 dev, 3 owner
disconnected = 0;//opt out of online play
banned = 0;//0=no, -1=permaban, 1-inf =how many days.
datebanned = 0;
timesbanned = 0;
last_time_online = 0;
last_version_played ="";
messages = [
["","",-1,0],
["","",-1,0]
];//[Player From,Message,Read? (-1=N/A 0=not read, 1=read
friend_count = 0;//
friends_list = [
["",0,0,0],
["",0,0,0]
];//[name, id, date became friends, best friends?]
game_progress = 0;
planet_log = [0,0,0,0,0,0,0,0,0,0,0,0,0,0];//0=not visited 1=visited 2=completed
selectedstage = 0;//
tasks_completed = 0;
collectibles_unlocked = 0;
dollar_array = [0,0,0];//[have, spent, earned]
enemy_killcount = 0;
boss_killcount = 0;
ind_boss_kills = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
levelender_killcount = 0;
character_levels = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];//[0-50, 0-50, ..14 times]
name_text = [0,0,1];//[font = 0;color = 0;outline color]
character_id = 0;//0-19, 19=custom)
custom_look = [0,0,0,0,0,0,0,0];//[Head, Variant, Body, Variant, Trail, Variant, Hat, Variant]
theme_song = [0,0,0,0,0,0];//(Theme 19 = custom, bass, drum, keys, vocals,remix?)
login_message = "";//displays at login then clears
clan_info = [-1,"",0,0,0,0,0,0,0,""];//[Clan ID, 1Clan Name, 2Clan Rank, 3Rank in Clan, 4Date Joined, 5Dollars Donated, 6Tasks Completed, 7Members Recruited, 8Position in Clan, 9recruited by]

//store unlocked colors for fonts and other things
color_array=[
[c_white,"White"],
[c_black,"Black"],
[c_red,"Red"],
[c_orange,"Orange"],
[c_yellow,"Yellow"],
[c_lime,"Lime"],
[c_green,"Green"],
[c_aqua,"Aqua"],
[c_blue,"Blue"],
[c_purple,"Purple"]
]

//name, asset name, unlocked?
font_array=[
["Default",Font_Default,1],
["Arcade Classic",Font_ArcadeClassic,0],
["Attack of Monsters",Font_AttackofMonster,0],
["Bruce Forever",Font_BruceForever,0],
["Canterbury",Font_Canterbury,0],
["Crack Man",Font_CrackMan,0],
["DP Comic",Font_DPComic,0],
["Future Timesplitter",Font_FutureTimesplitters,0],
["Game Continue",Font_GameContinue,0],
["Halo",Font_Halo,0],
["Lightning",Font_Lightning,0],
["Perfect Dark",Font_PerfectDark,0],
["Punk",Font_Punk,0],
["Return of Ganon",Font_ReturnofGanon,0],
["Road Rage",Font5,0],
["Saikyo",Font_Saikyo,0],
["Senor Saturno",Font_SenorSaturno,0],
["Star Shield",Font_StarShield,0],
["Thunder",Font_Thunder,0],
["Videophreak",Font_Videophreak,0],
["Vinque",Font_Vinque,0],
["Zero Velocity",Font_ZeroVelocity,0]
]


trackposition=0
character_music=[
[yeancat_music_intro,yeancat_music_loop],
[taylor_music_intro,taylor_music_loop],
[future_music_intro,future_music_loop],
[kim_music_intro,kim_music_loop],
[travis_music_intro,travis_music_loop],
[beyonce_music_intro,beyonce_music_loop],
[sixnine_music_intro,sixnine_music_loop],
[lilpump_music_intro,lilpump_music_loop],
[rihanna_music_intro,rihanna_music_loop],
[eminem_music_intro,eminem_music_loop],
[savage_music_intro,savage_music_loop],
[peep_music_intro,peep_music_loop],
[cudi_music_intro,cudi_music_loop],
[buu_music_intro,buu_music_loop],
[drake_music_intro,drake_music_loop]
]




charsounds=[
[yehurt1,yehurt2,yehurt3],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[rehinohurt1,rehinohurt2,rehinohurt3],
[emuhurt1,emuhurt2,emuhurt3],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound],
[nothingsound,nothingsound,nothingsound]
]

// Make sure x doesn't go below 0 (optional)
x = max(x, 0);

// x now contains the value of x corresponding to the given y

charselect=0



rhythm=1+2*(1-(1-((master.characters[master.charselect,5]-1)/(9+(master.characters[master.charselect,5]-1)))))
flow=1+2*(1-(1-((master.characters[master.charselect,6]-1)/(9+(master.characters[master.charselect,6]-1)))))
lyricism=1+2*(1-(1-((master.characters[master.charselect,7]-1)/(9+(master.characters[master.charselect,7]-1)))))
swag=1+2*(1-(1-((master.characters[master.charselect,8]-1)/(9+(master.characters[master.charselect,8]-1)))))



//PASSIVES
//DEM1 = ID;
//0name, 
//1obtained?, 
//2discovered?, 
//3level, 
//4max level, 
//5image, 
//6description
//7unlocked? (found in randomizer)
//8banished
//9can spawn?
//10limitbreak?

dropgui=0
dolmove=0
heatseconds=10

//add passive to increase projectile penetration
lvlscale=1
lvlscal=1
lc1=c_black
lc2=c_black
lc3=c_black
lc4=c_black
lca=1
levelheat=0
aspeed=0
aspeedshow=0
speedscale=1
speedscal=1
sc1=c_black
sc2=c_black
sc3=c_black
sc4=c_black
sca=1
speedheat=0


//every how many frames a star spawns
starfreqset=50
starfreq=starfreqset


//ITEM SPAWN TABLE

	for (i=0; i<array_length(weapons); i++) {
	diswep[i]=weapons[i,3]
	lockwep[i]=weapons[i,13]
	}
	for (i=0; i<array_length(items); i++) {
	disite[i]=items[i,3]
	}
	for (i=0; i<array_length(passives); i++) {
	dispas[i]=clamp(notice[i,0],0,1)
	lockpas[i]=clamp(notice[i,1],0,1)
	passives[i,7]=lockpas[i]
	}

playerid=-1

if file_exists(working_directory+"yeancatsave.txt") {
scr_load_game();
scr_calculate_spent();
startmusic=0
loop=0
	//for (i=0; i<array_length(weapons); i++) {
	//diswep[i]=weapons[i,3]
	//lockwep[i]=weapons[i,13]
	//}
	//for (i=0; i<array_length(items); i++) {
	//disite[i]=items[i,3]
	//}
	//for (i=0; i<array_length(passives); i++) {
	//passives[i,7]=notice[i,1]
	//dispas[i]=passives[i,2]
	//lockpas[i]=passives[i,7]
	//}
} else {
	scr_save_game();	
	
}
splashchoice=irandom(array_length(splash)-1);
chosensplash=splash[splashchoice]
splashresetset=5000
splashreset=splashresetset
charselectlast=charselect
musicintro=character_music[charselect,0]
musicloop=character_music[charselect,1]
if !instance_exists(obj_controlhs) {
	instance_create_layer(0,0,"uiitop",obj_controlhs)
}
if !instance_exists(stemmanager) {
	instance_create_layer(0,0,"stars",stemmanager)
}
if !instance_exists(obj_terrain) {
	instance_create_layer(room_width/2,room_height,"terrainl",obj_terrain2)
	instance_create_layer(room_width/2,room_height,"terrainlayer",obj_terrain)
	instance_create_layer(room_width/2,room_height,"foreground",obj_terrainfront)
}
	//instance_create_layer(room_width/2,room_height/2,"uii",obj_levelup)
	if shownmessage=0 {
		instance_create_layer(room_width/2,room_height/2,"uiitop",alphamessage)
	}
grav=.981*.9
//flight
flying=1
fromearth=0
	//debugging


distplay=.008
distplay2=584
distplay3=.66
distplay4=.74
distplay5=0.0005
distplay6=1.402
distplay7=3.04
distplay8=2.06
distplay9=0
distplay0=0


F=.7
bdistplay2=-.1
bdistplay3=.3
bdistplay4=50
bdistplay5=16
bdistplay6=.65
bdistplay7=60
bdistplay8=.67
bdistplay9=1.07
bdistplay0=50

if instance_exists(obj_logokill) {
instance_create_depth(room_width/2,room_height/2,-1000,obj_jayarnoldlogo)
with (obj_logokill) {
	instance_destroy()
}
}