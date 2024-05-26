// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.res_width = 1920;
global.res_height = 1080;

var _ratio = global.res_width / global.res_height;
var _display_ratio = display_get_width() / display_get_height();

if (_display_ratio < _ratio){
    global.res_height = 1920; // Optional

    global.res_width = global.res_height * _display_ratio;
}