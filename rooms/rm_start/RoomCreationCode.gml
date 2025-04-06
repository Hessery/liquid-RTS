instance_create_depth(0, 0, 0, obj_dev_console);

if (!file_exists(game_save_id + "option.ini")) {
    
    OptionsSet("BGM Gain", 1, true);
    OptionsSet("Fullscreen", true, true);
    DevConsoleLog("Init options");
    
}

if (OptionsGet("Fullscreen", true) = true) { FullscreenToggle() }

room = rm_menu;