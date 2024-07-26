    // Function to handle file logging
    function logToFile(filePath, message) {
        var file;
        if (file_exists(filePath)) {
            file = file_text_open_append(filePath);
        } else {
            file = file_text_open_write(filePath);
        }
        file_text_write_string(file, message);
        file_text_close(file);
    }