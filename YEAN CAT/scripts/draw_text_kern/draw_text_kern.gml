// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_kern(argument0,argument1,argument2,argument3){

var tx, ty, txt, kern, ch,tox;
tx = argument0;
ty = argument1;
txt = argument2;
kern = argument3;
tox = tx;

for (i=1;i<=string_length(txt);i+=1){
     ch = string_char_at(txt,i);
     if(ch=="\n"){
          // Change \n to # if using older GM
          ty+=string_height("|");
          tx = tox;
     }else{
          draw_text(tx,ty,ch);
          tx+=string_width(ch);
          tx+=kern;
     }
}
}