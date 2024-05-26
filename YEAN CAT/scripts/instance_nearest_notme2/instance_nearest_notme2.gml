// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_nearest_notme2(argument0,argument1,argument2){
var xx, yy, obj, nearest; xx = argument0; yy = argument1;
obj = argument2;
nearest = noone;
dist = -1;
for (ii=0; ii<instance_number(obj); ii+=1) {
      var o, d; 
      o = instance_find(obj, ii);
      d = point_distance(xx, yy, o.x, o.y);
      if (o != id) {
               if (nearest == noone || d < dist) { nearest = o; dist = d; }
      }  
}
return nearest;
}