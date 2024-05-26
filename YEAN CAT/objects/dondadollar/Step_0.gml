/// @description Insert description here
// You can write your code in this editor
if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	vspeed=0
	speed=0
	}
	
	exit
} else {
if instance_exists(yeancat) {
		fly=yeancat.flying
}
}
if audio_emitter_exists(myEmitter) {
	audio_emitter_position(myEmitter,x,y,0)
}
if rate>0 {
	rate-=1
} else {
	rate=rateset
	anicount+=1
}

//if x>1950 and x<2200 {
//	y = random(room_height+1000)-500
//}

if fly=0 {
if y>room_height/2+100 {
var clop=((600-obj_terrain.lowercloud)/600)
worldd=obj_terrain.terrain
var spaci=obj_terrain.spacing
var playerpos=obj_terrain.playerpos
var terrainheight=obj_terrain.terrainheight
var arl=array_length(obj_terrain.terrain)
var index1 = 1+floor((x+spaci*(sign(playerpos)*(abs(playerpos/spaci)-floor(abs(playerpos/spaci))))) / spaci);
var index2 = 1+ceil((x+spaci*(sign(playerpos)*(abs(playerpos/spaci)-floor(abs(playerpos/spaci))))) / spaci);
var fract = frac((x+spaci*(sign(playerpos)*(abs(playerpos/spaci)-floor(abs(playerpos/spaci))))) / spaci);
if (index1 >= 0 && index2 < arl) {
    var height1 = worldd[index1] * terrainheight;
    var height2 = worldd[index2] * terrainheight;
    bullet_height_fromground = (obj_terrain.y-spaci*1+lerp(height1, height2, fract) - (y-60))*clop+power(clamp(obj_terrain.playeraltitude+obj_terrain.player_height_fromground,0,99999),.85);

}
}
if bullet_height_fromground<0 {
	y+=bullet_height_fromground
	bullet_height_fromground=0
}
}
var hite= (1/(1+(bullet_height_fromground)/1000))
if bullet_height_fromground>5 {
	onground=0
	if onground=0 {
	if instance_exists(yeancat) {
		if yeancat.flying=0 {
		if gravpull=1 or gravpull=2{
		_vspeed+=master.grav*(global.room_speed_set/1000000*delta_time)*hite*gravstr
		if _vspeed>100*(1-(1/(1+(bullet_height_fromground)/25000)))+10 {
			_vspeed=100*(1-(1/(1+(bullet_height_fromground)/25000)))+10
		}
	}
	} else {
		
	}
	}
	if _vspeed>0 {
	y+=_vspeed*(global.room_speed_set/1000000*delta_time)
	}
	}
		
} else {
	bullet_height_fromground=0
	_vspeed=0
	//y=(y+yprevious)/2
	grav=0
	onground=1
}



if anicount=4 {
	anicount = 0
}

if onground=0 {
	
x-=(1+((master.speedd+2)/2)*varispeed*2)*frict
if fly=0 {
if frict>0 {
frict-=.002
}
}
} else {
	
	if frict>0 {
	frict*=.98
	}
	x-=(1+((master.speedd+2)/2)*varispeed*2)*frict
}

if instance_exists(yeancat) {
	if yeancat.flying=0 {
	if onground=0 {
if master.vert != 0 {
	
	y-=(global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)/sqr((fly+1))
}

if master.horz != 0 {
	x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)/sqr((fly+1))
}
	} else {
		x-=(global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)/sqr((fly+1))
	}
	} else {
		onground=0
	x-=(global.room_speed_set/1000000*delta_time)*(master.horz*abs(yeancat._hspeed)/sqr((fly+1))+obj_backg.travelspeed/20)
	y-=(global.room_speed_set/1000000*delta_time)*(master.vert*abs(yeancat._vspeed)/sqr((fly+1)))
	
}
}

if instance_exists(yeancat) {
direction=point_direction(x,y,yeancat.x,yeancat.y-yeancat.tallness)
speed=10*(1-clamp(point_distance(x,y,yeancat.x,yeancat.y+yeancat.tallness)/(master.magnet),0,1))*(master.magnet/100)
}
if instance_exists(dondadollar) {
if instance_number(dondadollar)>1 {
	if point_distance(x,y,instance_nearest_notme2(x,y,dondadollar).x,instance_nearest_notme2(x,y,dondadollar).y) < 500 {
direction=point_direction(x,y,instance_nearest_notme2(x,y,dondadollar).x,instance_nearest_notme2(x,y,dondadollar).y)
speed=5-clamp(point_distance(x,y,instance_nearest_notme2(x,y,dondadollar).x,instance_nearest_notme2(x,y,dondadollar).y)/100,1,5)
	}
}
}

if x<-10 {
	instance_destroy()
}
scale= 0.15 + .075 * (log10(valuee) - log10(1));
image_xscale=scale
image_yscale=scale
if x>room_width/2-1/2*room_width*master.camscale or x<room_width/2+1/2*room_width*master.camscale or y>room_height/2-room_height*1/2*master.camscale or y<room_height/2+room_height*1/2*master.camscale {		
if time > 10000 {
	instance_destroy();
}
}

//move on screen
if x>room_width/2-1/2*room_width*master.camscale or x<room_width/2+1/2*room_width*master.camscale or y>room_height/2-room_height*1/2*master.camscale or y<room_height/2+room_height*1/2*master.camscale {		
	x+=lengthdir_x(point_distance(x,y,room_width/2,room_height/2)/200,point_direction(x,y,room_width/2,room_height/2))
	y+=lengthdir_y(point_distance(x,y,room_width/2,room_height/2)/200,point_direction(x,y,room_width/2,room_height/2))
	
}