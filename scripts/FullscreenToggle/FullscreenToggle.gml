function FullscreenToggle() {
    
    DevConsoleLog("Toggling fullscreen");
    
    global.fullscreen = !global.fullscreen;
    
    if (global.fullscreen) {
        window_set_position(0, 0);
        window_set_size(display_get_width(), display_get_height());
    } else {
        window_set_size(global.window_width, global.window_height);
        window_center()
    }
    
}