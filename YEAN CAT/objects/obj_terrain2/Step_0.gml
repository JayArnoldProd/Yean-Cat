/// @description Insert description here
//step

//yeancat is defined as the player object
//the player is confined within a region half the scale of the room centered in the room's center
//the world moves around the player to give the illusion of player movement.
//playerpos is set by the yeancat object when the player pushes the horizontal boundary of the game view
//when xoffset changes when playerpos is moved a certain amount to cycle the array through the multi sin function for terrain[i]
//this array draws the terrain as grass rectangle textures scaled to fit the distance between each point in the array, defined by 'spacing'
//the player's x position does not reflect the playerpos variable as this variable just defines the shift in the array
//the player's x position is a value between 0 and room_width, confined to an area centered around room_width/2 based on the view scale.
//i need to calculate what the player's height is relative to the function that defines terrain[i], if it were to be calculated for values between values of i.
//this is so that i can calculate the players height at a high resolution instead of the resolution of 'spacing'
if global.pause=1 {
	exit
} else {
cloudx=obj_terrain.cloudx
xoffset=obj_terrain.xoffset
hilloffset=obj_terrain.hilloffset
cloudoffset=obj_terrain.cloudoffset
lowecloud=obj_terrain.lowercloud
planetblend=obj_terrain.planetblend
playerpos=obj_terrain.playerpos
col1=obj_terrain.col1
col2=obj_terrain.col2
playeraltitude=obj_terrain.playeraltitude
player_angle_onground=obj_terrain.player_angle_onground
player_height_fromground=obj_terrain.player_height_fromground
ground_yvalue_belowplayer=obj_terrain.ground_yvalue_belowplayer
systemposition=obj_terrain.systemposition
planet=obj_terrain.planet
d2plan=obj_terrain.d2plan
xx=obj_terrain.xx
yy=obj_terrain.yy
backgroundcolor=obj_terrain.backgroundcolor
x=obj_terrain.x
y=obj_terrain.y
}
