// Script load_repsonses
//large array storing the sound effects heard when playing this character for every event// this might need to be optimized or reformatted. im sure theres a better way to do this if some sounds are reused.
//also this might be repurposed to send only the sound effects for the chosen character. [x,0]=the first character sound effects
function load_responses(){
return [
//1
//star david spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//star david random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//star david close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//star david proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//star david hit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//star david death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//2
//razi spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi random
[kanyreremark6,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark6,emuremark6,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi proximity
[kanyreremark5,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark5,emuremark5,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi hit by
[kanyreremark3,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark3,emuremark3,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi death
[kanyreremark7,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark7,emuremark7,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//3 BEAR
// bear spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// bear random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// bear close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//bear proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//bear hit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//bear death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//4
//razi B spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi B random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi B close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi B proximity
[kanyreremark4,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark4,emuremark4,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi B hit by
[kanyreremark1,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark1,emuremark1,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//razi B death
[kanyreremark2,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,rehinoremark2,emuremark2,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//5Executive
//spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//6 grammy
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//7 taylor fan
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//8 gold digger
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//9 blackball
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//10
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//11
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//12
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//13
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//14
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//15
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//16
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//17
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//18
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//19
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//20
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//21
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//22
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//23
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//24
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//25
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//26
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//27
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//28
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//70
// other spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//other random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//other close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//other proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//other ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//other death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//71
// boss1 spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//boss1 random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//boss1 close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//boss1 proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//boss1 ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//boss1 death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//
// spawn
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
// random
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//close to death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//proximity 
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//ghhit by
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound],
//death
[nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound,nothingsound, nothingsound, nothingsound, nothingsound, nothingsound]

]
}