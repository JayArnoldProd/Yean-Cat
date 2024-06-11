function scr_game_end(args) {
    var saveGame = false; // Default to not saving
    
    // Check if arguments are provided and valid
    if (args != undefined && (args == "1" || string_lower(args) == "true")) {
        saveGame = true;
    }
    
    // Execute based on saveGame flag
    if (saveGame) {
        scr_save_game();
        handleDebugMessage("Game saved and ending.", true);
    } else {
        handleDebugMessage("Game ending without saving.", true);
    }
    
    // Code to end the game goes here
    game_end();
}
