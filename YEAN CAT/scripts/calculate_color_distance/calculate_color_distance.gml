/// Calculate the distance between two colors in HSV space
function calculate_color_distance(h1, s1, v1, h2, s2, v2) {
    var dh = min(abs(h1 - h2), 360 - abs(h1 - h2)) / 180.0;
    var ds = abs(s1 - s2);
    var dv = abs(v1 - v2);
    return sqrt(dh * dh + ds * ds + dv * dv);
}