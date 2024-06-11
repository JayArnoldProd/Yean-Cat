// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//x,y,width,height,thickness,amount,backcolor,mincol,maxcol,showback
function draw_healthbar_border(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9){
var xx=argument0
var yy=argument1
var width=argument2
var height=argument3
var thickness=argument4
var amount=argument5
var backcolor=argument6
var mincol=argument7
var maxcol=argument8
var showback=argument9
//top
draw_healthbar(xx-width/2-thickness/2,yy-height/2-thickness/2,xx+width/2+thickness/2,yy-height/2+thickness/2,clamp(amount,0,.25)/.25*100,backcolor,mincol,merge_color(mincol,maxcol,.25),0,showback,0)
//right
draw_healthbar(xx+width/2-thickness/2,yy-height/2-thickness/2,xx+width/2+thickness/2,yy+height/2+thickness/2,clamp(amount-.25,0,.25)/.25*100,backcolor,merge_color(mincol,maxcol,.25),merge_color(mincol,maxcol,.5),2,showback,0)
//bottom
draw_healthbar(xx-width/2-thickness/2,yy+height/2-thickness/2,xx+width/2+thickness/2,yy+height/2+thickness/2,clamp(amount-.5,0,.25)/.25*100,backcolor,merge_color(mincol,maxcol,.5),merge_color(mincol,maxcol,.75),1,showback,0)
//left
draw_healthbar(xx-width/2-thickness/2,yy-thickness/2-height/2,xx-width/2+thickness/2,yy+height/2+thickness/2,clamp(amount-.75,0,.25)/.25*100,backcolor,merge_color(mincol,maxcol,.75),maxcol,3,showback,0)
}