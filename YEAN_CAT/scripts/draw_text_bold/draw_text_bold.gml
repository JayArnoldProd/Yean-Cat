// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_bold(argument0,argument1,argument2,argument3,argument4,argument5,argument6){
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

draw_set_color(col1)
draw_set_font(font)

//draw_text(xx+bold,yy-bold,str)
//draw_text(xx-bold,yy+bold,str)
//draw_text(xx+bold,yy-bold,str)
//draw_text(xx-bold,yy+bold,str)
draw_text(xx-bold/1.8,yy-bold/1.8,str)
draw_text(xx+bold/1.8,yy-bold/1.8,str)
draw_text(xx-bold/1.8,yy+bold/1.8,str)
draw_text(xx+bold/1.8,yy+bold/1.8,str)
draw_set_color(col2)
draw_text(xx,yy,str)
}