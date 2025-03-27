function MenuGoto(menu_name) {
    
    switch (menu_name) {
        case "main":    global.menu_state = MENU_MAIN;      break;
        case "lobby":   global.menu_state = MENU_LOBBY;     break;
        case "options": global.menu_state = MENU_OPTIONS;   break;
    }
    
    DevConsoleLog("Switching to menu: " + menu_name);
    
}