/// STEP of obj_terrain

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
		if instance_exists(yeancat) {
	playerpos+=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed);
	}
boostfreq=(.5-abs(clamp(playeraltitude,0,40000)/(40000)-.5))*200

if instance_number(obj_vertboost)<2 {
	if random(2000)<boostfreq {
		instance_create_layer(0,0,"player",obj_vertboost)
	}
}

if master.visitedplanets[planet]=0 {
	if playeraltitude<2000 {
	master.visitedplanets[planet]=1
		for (var tas=0; tas<array_length(master.worlditems); tas++) {
			if master.worlditems[tas,1]=planet {
				//check for passive
				if master.worlditems[tas,4]=1 {
					//unlock task
					for (var tp=0; tp<array_length(master.tasks); tp++) {
					if master.worlditems[tas,0]-15=master.tasks[tp,7] {
						if master.tasks[tp,6]=2 {
						master.tasks[tp,5]=1
						}
					}
					}
				}
				//check for weapon
				if master.worlditems[tas,4]=2 {
					//unlock task
					for (var tp=0; tp<array_length(master.tasks); tp++) {
					if master.worlditems[tas,0]-40=master.tasks[tp,7] {
						if master.tasks[tp,6]=1 {
						master.tasks[tp,5]=1
						}
					}
					}
				}
				//check for music
				if master.worlditems[tas,4]=3 {
					//unlock task
					for (var tp=0; tp<array_length(master.tasks); tp++) {
					if master.worlditems[tas,0]-78=master.tasks[tp,7] {
						if master.tasks[tp,6]=5 {
						master.tasks[tp,5]=1
						}
					}
					}
				}
				
				
			}
	}
	//check for characters
	for (var tc=0; tc<array_length(master.tasks); tc++) {
				if master.tasks[tc,6]=0 {
					for (var sb=0; sb<array_length(master.spaceboss); sb++) {
					if master.tasks[tc,7]=master.spaceboss[sb,12] {
					if planet=master.spaceboss[sb,13] {
						master.tasks[tc,5]=1
					}
					}
					}
				}
				}
	}
}
	
	col1=planets[planet,5]
	planetblend=(planet-(obj_terrain.d2plan/15)+13) % 13
	//star background cross fading
	if obj_terrain.systemposition > 350 {
		col2=merge_color(planets[planet,6],planets[(planet-sign(obj_terrain.d2plan)+13) % 13,6],clamp(abs(obj_terrain.d2plan/15),0,1))
	
	} else {
		col2=merge_color(planets[planet,6],planets[(planet-sign(obj_terrain.d2plan)+13) % 13,6],clamp(abs(obj_terrain.d2plan/15),0,1))
	}
//col2=planets[planet,6]
	pfun1=planets[planet,14]
pfun2=planets[planet,15]
pfun3=planets[planet,16]
pfun4=planets[planet,17]
pfun5=planets[planet,18]
afun1=planets[planet,19]
afun2=planets[planet,20]
afun3=planets[planet,21]
afun4=planets[planet,22]
afun5=planets[planet,23]
terrainheight=planets[planet,27]
}

if lowercloud>0 {
	if instance_exists(master) {
		if master.mainmenu=0 {
			
			lowercloud*=.99;
			if lowercloud<1 {
				lowercloud=0
			}
		} else {
playeraltitude=0
player_height_fromground=0
		}
	}
}
var clop=((600-lowercloud)/600)

//get ground offset (to slide the terrain array values in relation to player x)
cloudx+=1
xoffset=sign(playerpos)*floor(abs(playerpos/(spacing)))
hilloffset=sign((playerpos*.75+hillx))*floor(abs((playerpos*.75+hillx)/(1000)))
cloudoffset=sign((playerpos*.6+cloudx))*floor(abs((playerpos*.6+cloudx)/(1000)))
for (var i=0; i<array_length(terrain); i++) {
	terrain[i]=sin(pi/pfun1 * (xoffset+i)/(partcount))*afun1+sin(pi/pfun2 * (xoffset+i)/(partcount))*afun2+sin(pi/pfun3 * (xoffset+i)/(partcount))*afun3+sin(pi/pfun4 * (xoffset+i)/(partcount))*afun4+sin(pi/pfun5 * (xoffset+i)/(partcount))*afun5
}
var index1 = 1
var index2 = 1
var fract = 0

//calculate player height above ground
if master.mainmenu=0 {
if instance_exists(yeancat) {
	if playeraltitude>40000 {
		player_height_fromground=0
		yeancat.flying=1
		if playeraltitude>60000 {
			playeraltitude=60000
		}
	} else {
		if yeancat.flying=1 and master.ti>10 {
			yeancat._vspeed=0
			yeancat.flying=0
			playeraltitude=39999
		}
		
		//if playeraltitude>0 {
			
		//if playeraltitude<40000 {
		//	yeancat._vspeed=0
			
		//}
		//}
	}
//var ii=(yeancat.x/room_width)*partcount
index1 = 1+floor((yeancat.x+spacing*(sign(playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing))))) / spacing);
index2 = 1+ceil((yeancat.x+spacing*(sign(playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing))))) / spacing);
fract = frac((yeancat.x+spacing*(sign(playerpos)*(abs(playerpos/spacing)-floor(abs(playerpos/spacing))))) / spacing);
if (index1 >= 0 && index2 < array_length(terrain)) {
    var height1 = terrain[index1] * terrainheight;
    var height2 = terrain[index2] * terrainheight;
	if yeancat.flying=0 {
    player_height_fromground = (y-spacing*.9+lerp(height1, height2, fract) - (yeancat.y))*clop;
	} else {
		//player_height_fromground=0
	}
	player_angle_onground=point_direction(0,height1,spacing,height2)

}

ground_yvalue_belowplayer=player_height_fromground+yeancat.y-yeancat._vspeed*(global.room_speed_set/1000000*delta_time)
if ground_yvalue_belowplayer<=0 {
	yeancat.y=yprevious
	yeancat._vspeed=0
}
if yeancat.flying=0 {
	obj_backg.travelspeed*=.995
	if systemposition>(360-7.5) {
		systemposition=(systemposition*99+360)/100
	} else {
	systemposition=(systemposition*99+planets[planet,0])/100
	}
}
//ground_yvalue_belowplayer=y+terrainheight*(sin(pi/pfun1 * (xoffset+ii)/(partcount))*afun1+sin(pi/pfun2 * (xoffset+ii)/(partcount))*afun3+sin(pi/pfun3 * (xoffset+ii)/(partcount))*afun3)-125*scale
//player_height_fromground=ground_yvalue_belowplayer-yeancat.y
}
}
//planets 0location, 1size, 2gravity, 3background, 4clouds, 5skycolor1, 6skycolor2, 7tileid,8 distance
systemposition+=(global.room_speed_set/1000000*delta_time)*travelspeed/10000
if systemposition > 360 {
	systemposition-=360
}
if systemposition < 0 {
	systemposition+=360
}
for (var ii=0; ii<array_length(planets);ii++) {
	//var pdis = shortestAngularDistance(systemposition,planets[i,0])
	//var pdis2 = 0
	//if pdis>(360-7.5) {
	//	pdis2=pdis-360
	//} else {
	//	pdis2=pdis
	//}
	
	planets[ii,8]=angle_distance(systemposition,planets[ii,0])
	
	obj_backg.planets[ii,8]=planets[ii,8];
	if (planets[ii,8] > -7.5) and (planets[ii,8] < 7.5) {
		planet=ii
		if obj_backg.planet!=planet {
			obj_backg.planet=planet
		}
		d2plan=(planets[ii,8])
		if obj_backg.d2plan!=d2plan {
			obj_backg.d2plan=d2plan 
		}
	}
	
}
if playeraltitude<41000 {
	if abs(d2plan)<1 {
		systemposition+=sign(d2plan)*(7.5-abs(d2plan))/10000
	}
	}
//make ground slide in from the bottom when game starts
if instance_exists(master) {
	//mainmenu=0 means game has started
if master.mainmenu=0 {
	
	backgroundcolor=merge_color(col1,col2,sqr(1-(1/(1+(clamp(player_height_fromground+playeraltitude-7000,0,9999999))/1500))));
xx=room_width/2
//makes ground rise to a certain level when game starts
yy=room_height/2+master.camscale*view_get_hport(master.cam)/2-terrainheight*(afun1+afun2+afun3+afun4+afun5)/2-50
} else {
xx=room_width/2
yy=room_height
}
}

//smooth movement
var spdd=.005
if x!=xx {
	x=x+(xx-x)*spdd
} else {
	x=xx
}
if y!=yy {
	y=y+(yy-y)*spdd
} else {
	y=yy
}
//terrainheight=100
//pfun1=3
//pfun2=4
//afun1=.5
//afun2=1