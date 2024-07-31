/// @function scr_save_macros()
/// @description Saves all macro values to a .txt file named macros.txt
function scr_save_macros() {
    var filePath = working_directory + "Macros.txt";
    var file = file_text_open_write(filePath);  // Open for writing directly (overwriting mode)

    var macros = [
        "macro1", "macro2", "macro3", "macro4", "macro5",
        "macro6", "macro7", "macro8", "macro9", "macro10"
    ];

    for (var i = 0; i < array_length(macros); i++) {
        var macroName = macros[i];
        var macroValue = string(variable_global_get(macroName));
        file_text_write_string(file, macroName + ": " + macroValue + "\n");
    }

    file_text_close(file);
    handleDebugMessage("Macros saved to Macros.txt", false);
}

