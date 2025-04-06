function OptionsSet(key, value, value_is_real) {
    
    ini_open(game_save_id + "option.ini");
    
    if (value_is_real) {
        ini_write_real("options", key, value);
    } else {
        
        var str = string(value)
        ini_write_string("options", key, str);
        
    }
    ini_close();
    
} 