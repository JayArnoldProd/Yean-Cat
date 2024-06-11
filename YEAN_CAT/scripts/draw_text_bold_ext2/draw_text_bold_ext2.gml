// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_bold_ext2(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8) {
//string
//x
//y
//boldness
//font
//col1
//col2
var str =argument0
var xx= argument1
var yy= argument2
var bold=argument3
var font=argument4
var col1=argument5
var col2=argument6
var alp=argument7
var xscale=argument8
var yscale=argument8

draw_set_color(col1)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed_color(xx+bold,yy-bold/2,str,xscale,yscale,0,col1,col1,col1,col1,alp)
draw_text_transformed_color(xx-bold,yy+bold/2,str,xscale,yscale,0,col1,col1,col1,col1,alp)
draw_text_transformed_color(xx+bold/2,yy-bold,str,xscale,yscale,0,col1,col1,col1,col1,alp)
draw_text_transformed_color(xx-bold/2,yy+bold,str,xscale,yscale,0,col1,col1,col1,col1,alp)
draw_set_color(col2)
draw_text_transformed_color(xx,yy,str,xscale,yscale,0,col2,col2,col2,col2,alp)
}