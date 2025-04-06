function OptionsGet(key, value_is_real) {
    
    ini_open(game_save_id + "option.ini");
    
    if (value_is_real) {
        var value = ini_read_real("options", key, -1);
    } else {
        var value = ini_read_string("options", key, "");
    }
    
    ini_close();
    
    return value
    
}