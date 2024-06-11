///CREATE EVENT for yeancat

i=0
tallness=0
centerfade=0
trailalph=1
rotatebody=0
onground=0
facing=1
flying=1
rising=0
movingg=0
jumping=0
canjump=1
jumpheight=1
jumptotal=2
jumptotallast=jumptotal
jumpcount=2
s_emit= audio_emitter_create();
audio_max_distance_to_be_heard = 1800;
audio_starts_to_drop_at = 200;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(s_emit,x,y,0);
audio_emitter_falloff(s_emit,audio_starts_to_drop_at,audio_max_distance_to_be_heard, 1);
sndmanid=0
image_indexprev=0
responding=-1
soundscream=audio_play_sound(nothingsound,0,0);
walksound=audio_play_sound(nothingsound,0,0);
soundxtra=audio_play_sound(nothingsound,0,0);

responses=load_responses()//loads sound effects, different characters will hear different things.
speaking=0

image_speed=0
frame=0
oxy=0
rateset=5
rate=rateset
anicount=0
c_cat=c_white
scale=1
pick=noone;
xpnote=0
delta_second=1000000
positionplace=0
spawned=0;
mermin=60*1000000
healsec=5*1000000;
healsecount=healsec;
merc=0
merctimeset=5
merctime=0
time=0
damageframe=3
damageframeset=3
dam=noone;
oxydamage=1
oxyspeed=1
oxyresistance=0
oxyrate=1
breakheart=0
hurtsnd=audio_play_sound(nothingsound,0,0);
hurtsnd2=audio_play_sound(nothingsound,0,0);
invincible=0
gunsnd=audio_play_sound(nothingsound,0,0);
stemrange=1
stemrate=1
stemdamage=1
stemresistance=0
rage=0
ragemax=10

gunrot=0
gundir=1

def=0

gunrateset=10
gunrotrate=1
gunrate=gunrateset
menumove=choose(-1,1)
menudir=choose(-1,1)
sitting=0
damaged=0
redcount[0]=0
redcount[1]=0
redcount[2]=0
redcount[3]=0
redcount[4]=0
redcount[5]=0
redcount[6]=0
redcount[7]=0
redcount[8]=0
redcount[9]=0
redcount[10]=0
redcount[11]=0
redcount[12]=0
redcount[13]=0
redcount[14]=0
redcount[15]=0
redcount[16]=0
redcount[17]=0
redcount[18]=0
redcount[19]=0
redcount[20]=0
redcount[21]=0
redcount[22]=0
redcount[23]=0
redcount[24]=0
redcount[25]=0
redcount[26]=0
redcount[27]=0
redcount[28]=0
redcount[29]=0
redcount[30]=0
redcount[31]=0
redcount[32]=0
redcount[33]=0
redcount[34]=0
redcount[35]=0
redcount[36]=0
redcount[37]=0
redcount[38]=0
redcount[39]=0
redcount[40]=0
redcount[41]=0
redcount[42]=0
redcount[43]=0
redcount[44]=0
redcount[45]=0
redcount[46]=0
redcount[47]=0
redcount[48]=0
redcount[49]=0
redcount[50]=0
redcount[51]=0

deaths=0
dodge=-1

//responding
//1=RazziA
respond=0

_hspeed=0
_vspeed=0

hspeedmax=6
vspeedmax=5

accel=.2

healthh=10
maxhealth=10
healthlast=healthh

//lower number stop quicker
frict=1

shade=0

xpsound=audio_play_sound(nothingsound,0,0)
speak=audio_play_sound(nothingsound,0,0)
levelupsnd=audio_play_sound(nothingsound,0,0)

maxSpeed = 10
timeToMax = 2
overMaxSpeed = 3
timeToOverMax = 3
resjump=0
master.vert=menudir
master.horz=menumove