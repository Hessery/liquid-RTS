loops --
if (loops = 0) {
	
	intermission_timer = (5 + irandom(10)) * 60;
	DevConsoleLog("Intermission: " + string(intermission_timer / 60));
	
} else {
	
	bgm_playing = audio_play_sound(bgm_set_list[current_track], 1, false);
	
}

// #event draw_gui
// var track_length = audio_sound_length(bgm_playing)
// var track_pos = audio_sound_get_track_position(bgm_playing)
// var time_left = track_length - track_pos;
// draw_text(32, 32, time_left);