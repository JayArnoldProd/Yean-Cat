// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function calculatePlayerStats(argument0) {
    // Constants - initial values, adjust these in your game
    var k = master.distplay//0.01; // for maxSpeed
    var m = master.distplay2//100; // for maxSpeed
    var a = .66//0.5; // for timeToMax
    var b = .74//2; // for timeToMax
    var p = 0.0005//0.005; // for overMaxSpeed
    var c = 1.402//0.5; // for timeToOverMax
    var d = master.distplay7//3; // for timeToOverMax

    // Calculating maxSpeed
    var maxSpeed = 1000 / (1 + exp(-k * (argument0 - m)));

    // Calculating timeToMax
    var timeToMax = a * ln(argument0) + b;

    // Calculating overMaxSpeed
    var overMaxSpeed = (1000 - maxSpeed) * (1 - exp(-p * argument0));

    // Calculating timeToOverMax
    var timeToOverMax = c * ln(argument0) + d;

    // Return an array or a struct with the calculated values
    return {
        "maxSpeed": maxSpeed,
        "timeToMax": timeToMax,
        "overMaxSpeed": overMaxSpeed,
	 "timeToOverMax": timeToOverMax
    };
}