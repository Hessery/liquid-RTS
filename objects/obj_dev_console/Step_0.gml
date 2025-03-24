if (key_check_pressed("Toggle Dev Console")) { open = !open }

var toggle_speed = 10;
var console_height = 200;

if (open) { 
	
	y = min(y + toggle_speed, console_height)
	
} else {
	
	y = max(y - toggle_speed, 0)
	
}