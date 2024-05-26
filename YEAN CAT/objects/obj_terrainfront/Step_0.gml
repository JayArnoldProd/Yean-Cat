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
cloudx+=.75

	if instance_exists(obj_terrain) {
		lowercloud=obj_terrain.lowercloud
		
		xoffset=obj_terrain.xoffset
		hilloffset=obj_terrain.hilloffset
		playerpos=obj_terrain.playerpos
		cloudoffset=sign((playerpos*.65+cloudx))*floor(abs((playerpos*.65+cloudx)/(1000)))
		playeraltitude=obj_terrain.playeraltitude
		player_height_fromground=obj_terrain.player_height_fromground
		x=obj_terrain.x
		y=obj_terrain.y
	}

