loops --
if (loops = 0) {
	
	intermission_timer = (5 + irandom(10)) * 60;
	DevConsoleLog("Intermission: " + string(intermission_timer / 60));
	
} else {
	
	bgm_playing = audio_play_sound(bgm_set_list[current_track], 1, false);
	
}






