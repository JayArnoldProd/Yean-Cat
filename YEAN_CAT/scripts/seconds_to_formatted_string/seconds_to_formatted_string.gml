// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function seconds_to_formatted_string(argument0) {
	var seconds = argument0
    var years = floor(seconds / (365 * 24 * 60 * 60));
    var days = floor((seconds % (365 * 24 * 60 * 60)) / (24 * 60 * 60));
    var hours = floor((seconds % (24 * 60 * 60)) / (60 * 60));
    var minutes = floor((seconds % (60 * 60)) / 60);
    var secs = seconds % 60;

    // Formatting hours, minutes, and seconds with leading zeros if needed
    var hours_str = string(hours);
    var minutes_str = string(minutes);
    var seconds_str = string(secs);

    if (hours < 10) hours_str = "0" + hours_str;
    if (minutes < 10) minutes_str = "0" + minutes_str;
    if (secs < 10) seconds_str = "0" + seconds_str;

    // Building the result string
    var result = "";
    if (years > 0) {
        result += string(years) + " YEARS\n";
    }
    if (days > 0 || years > 0) {
        result += string(days) + " DAYS\n";
    }
    result += "HH : MM : SS\n" + hours_str + " : " + minutes_str + " : " + seconds_str;

    return result;
}