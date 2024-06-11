/// @description Insert description here
// You can write your code in this editor
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
    bullet_height_fromground = obj_terrain.playeraltitude+(obj_terrain.y-spaci*.9+lerp(height1, height2, fract) - (y))*clop;

}
}
if bullet_height_fromground<=0 {
	instance_destroy();
}
var hite= (1/(1+(bullet_height_fromground)/1000))
if instance_exists(yeancat) {
	face=yeancat.facing
}

if global.pause=1 {
	if !instance_exists(restar) {
	x=xprevious
	y=yprevious
	speed=0
	exit
	}
	}  else {
			if audio_emitter_exists(s_emit) {
			audio_emitter_position(s_emit,x,y,0);
			}
			if instance_exists(yeancat) {
if master.vert != 0 {
	y-=clamp((global.room_speed_set/1000000*delta_time)*master.vert*abs(yeancat._vspeed)*.8,-10,10)
}

if master.horz != 0 {
	x-=clamp((global.room_speed_set/1000000*delta_time)*master.horz*abs(yeancat._hspeed)*.8,-10,10)
}
	}
		if gravpull=1 or gravpull=2{
		_vspeed+=master.grav*(global.room_speed_set/1000000*delta_time)*hite*gravstr/3
		if _vspeed>100*(1-(1/(1+(bullet_height_fromground)/25000)))+10 {
			_vspeed=100*(1-(1/(1+(bullet_height_fromground)/25000)))+10
		}
	}
	if _vspeed>0 {
	y+=_vspeed*(global.room_speed_set/1000000*delta_time)
	}

	if fading=0 {
	
	speed=projectilespeed*(clamp(time/5,0,6))*clamp(time/(projectilespeed*.75+10),0,2.1)*(global.room_speed_set/1000000*delta_time)/1.5

} else {

}
if stepp<10 {
	stepp+=.1
}
	}
	
	image_angle=point_direction(0,0,lengthdir_x(speed,direction),lengthdir_y(speed,direction)+clamp(_vspeed,0,999));

//image_angle=direction*(1/(1+abs(_vspeed/10)))+point_direction(xprevious,yprevious,x,y)*(1-(1/(1+abs(_vspeed/10))))
time+=1
sx=xprevious-x
sy=yprevious-y
image_xscale=projectilesize/(sprite_get_height(sprite_index)/400)/4*sqr(clamp(time/(100/(projectilespeed+1)),0,1))*.3
image_yscale=image_xscale