DevConsoleToggle()

var toggle_speed = 10;
var console_height = 200;

if (open) { 
	
	y = min(y + toggle_speed, console_height);
	
	if (KeyCheckPressed("Dev Console Commit")) { DevConsoleCommit() }
	
	
} else {
	
	y = max(y - toggle_speed, 0);
	
}

if (keyboard_check(vk_lalt) && keyboard_check_pressed(vk_enter)) {
	
	FullscreenToggle();
	
}
