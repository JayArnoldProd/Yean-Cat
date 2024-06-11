function get_delta_time() {
    var _delta_time = (current_time - global.last_frame_time) / 1000.0;  // Convert milliseconds to seconds
    global.last_frame_time = current_time;
    return _delta_time;
}