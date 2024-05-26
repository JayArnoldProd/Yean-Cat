// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function seconds_to_time(P)
/// @param P Total number of seconds
/// @description Converts a total seconds value into hours, minutes, and seconds
/// @return Array with three values: hours (H), minutes (M), and seconds (S)

function instance_nearest_notme(xx, yy, obj) {
    var inst = noone;
    var distClosest = infinity;
    with (obj) {
        var dist = point_distance(x, y, xx, yy);
        if (id != other.id && dist < distClosest) {
            inst = id;
            distClosest = dist;
        }
    }
    return inst;
}