function TrackPlaying() {
	
	with (obj_bgm) {
		
		DevConsoleLog("Now playing: " + audio_get_name(bgm_playing));
		
	}
	
}