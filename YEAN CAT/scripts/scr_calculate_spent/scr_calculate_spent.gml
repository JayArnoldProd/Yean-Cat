// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calculate_spent(){
	//shop
	var maxweapse = master.maxweapset
	 if (maxweapse <= 2) {
        return 0;
    } else {
        var baseValue = 100; // Starting value for maxweapset = 3
        var result = 0;
        for (var i = 3; i <= maxweapse; i++) {
            result += baseValue;
            baseValue *= 10; // Increase baseValue by a factor of 10 for the next iteration
        }
    }
	//upgrades
	result+=((master.upgradetot + 1) / 2) * (200 + 100 * master.upgradetot);
	master.dollar_array[1]=result
}