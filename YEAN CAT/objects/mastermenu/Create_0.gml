/// @description Insert description here
// You can write your code in this editor
if !audio_group_is_loaded(agMusic) {
	audio_group_load(agMusic);
}
audio_group_load(agSFX);
audio_group_load(agUI);
audio_group_load(agDialouge);
audio_group_load(agVocals);
audio_group_load(agMelodies);
audio_group_load(agDrums);
audio_group_load(agBass);
master_cutoff=20000
instance_create_layer(room_width/2+1500,room_height/2,"player",obj_start);
master_reverb=0
start=0;
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


sg = audio_create_sync_group(true);
sound1=dondavocals
sound2=dondamelody
sound3=dondadrums
sound4=dondabass




global.pause=0
global.upg=0

audioui= [
unlocksound1,unlocksound2,unlocksound3
]

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

speedd=10
magnet=100
time=0
vert=0
horz=0
ti=0
//window_set_fullscreen(true);

level=1
xp=0
xpto=6

spawnthings=false;

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
if !instance_exists(stemmanager) {
	instance_create_layer(0,0,"stars",stemmanager)
}

camscale=1

cam=view_camera[0]

spawnitem=0
dondaunlocked=0
donda3=0
track=1

loop=0
delta_second = 1000000;
second=0;
minute=0;
hour=0;
lower=0


startmusic=-1;
soundscream=audio_play_sound(nothingsound,0,0);
music=audio_play_sound(nothingsound,0,0);
audio_stop_all();

mobfreqset=100
mobfreq=mobfreqset

foodfreqset=450
foodchance=30
foodfreq=mobfreqset

//0object, 1spawning?, 2size (1 normal), 3resistance (none,0-1,invincible), 4damage (1 normal),5speed (1 normal),6xp(0none,1,normal),7rarity
//mob = [
//[ghost,1,1,0,1,1,1,1],
//[stardavid,0,1,0,1,1,1,1],
//[razziA,0,1,0,1,1,1,1]
//];

//0object, 1has spawned, 2collected?,
items = [
[penny,1,0,0,20,0,0],
[dondadollar,1,0,0,1,1,1],
[bigmac,1,0,0,1,0,1],
[bigmac,0,0,0,10,1,1],
[defcon,1,0,0,20,1,1],
[defcon,0,0,0,50,2,1],
[defcon,0,0,0,100,3,1],
[defcon,0,0,0,200,4,1],
[defcon,0,0,0,400,5,1],
[shades,0,0,0,500,0,1],
[obj_oxycontin,0,0,0,10,1,1],
[obj_oxycontin,0,0,0,20,2,1],
[obj_oxycontin,0,0,0,30,3,1],
[obj_oxycontin,0,0,0,40,4,1],
[obj_oxycontin,0,0,0,50,5,1],
[obj_passiveitem,0,0,0,50,0,1],
[obj_passiveitem,0,0,0,50,1,1],
[obj_passiveitem,0,0,0,50,2,1],
[obj_passiveitem,0,0,0,50,3,1],
[obj_passiveitem,0,0,0,50,4,1],
[obj_passiveitem,0,0,0,50,5,1],
[obj_passiveitem,0,0,0,50,6,1],
[obj_passiveitem,0,0,0,50,7,1],
[obj_passiveitem,0,0,0,50,8,1],
[obj_passiveitem,0,0,0,50,9,1],
[obj_passiveitem,0,0,0,50,10,1],
[obj_passiveitem,0,0,0,50,11,1],
[obj_passiveitem,0,0,0,50,12,1],
[obj_passiveitem,0,0,0,50,13,1],
[obj_passiveitem,0,0,0,50,14,1],
[obj_passiveitem,0,0,0,50,15,1],
[obj_passiveitem,0,0,0,50,16,1],
[obj_passiveitem,0,0,0,50,17,1],
[obj_passiveitem,1,0,0,50,18,1],
[obj_passiveitem,0,0,0,50,19,1],
[obj_passiveitem,0,0,0,50,20,1],
[obj_passiveitem,0,0,0,50,21,1],
[obj_passiveitem,0,0,0,50,22,1],
[obj_passiveitem,0,0,0,50,23,1],
[obj_passiveitem,0,0,0,50,24,1],
[obj_passiveitem,0,0,0,50,25,1],
[obj_passiveitem,0,0,0,50,26,1],
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


//every how many frames a star spawns
starfreqset=25
starfreq=starfreqset





//collectibles (EVERY ITEM GOES HERE)
//0item
//1discovered
//2type | 
