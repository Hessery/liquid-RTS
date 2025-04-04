function TrackPos() {
	
	with (obj_bgm) {
		
		if (audio_is_playing(bgm_playing)) {
			
			DevConsoleLog(audio_sound_get_track_position(bgm_playing));
			
		}
		
	}
	
}