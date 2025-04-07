// audio_sound_length()
// audio_group_set_gain()

if (!gain_set && audio_group_is_loaded(audiogroup_bgm)) { 
	
	gain_set = true;
	SetGain(string(OptionsGet("BGM Gain", true)));
	
	audio_play_sound(bgm_set_list[current_track], 1, false);
	DevConsoleLog("Now playing: " + audio_get_name(bgm_set_list[current_track]));
	
}

var track_length = audio_sound_length(bgm_playing)
var track_pos = audio_sound_get_track_position(bgm_playing)
var time_left = track_length - track_pos;

if (time_left < 5 && loops <= 1 && !fading) {
	audio_group_set_gain(audiogroup_bgm, 0, 5000);
	// DevConsoleLog("Fading music");
	fading = true;
}

if (audio_group_is_loaded(audiogroup_bgm) && bgm_playing = -1) {
	
	bgm_playing = audio_play_sound(bgm_set_list[current_track], 1, false);
	audio_group_set_gain(audiogroup_bgm, 1, 0);
	fading = false;
	loops = 2;
	TrackPlaying();
	
}

if (intermission_timer > 0) {
	
	intermission_timer --
	
	if (intermission_timer = 0) {
		
		 current_track += 1;
		 if (current_track >= array_length(bgm_set_list)) { current_track = 0 }
		 bgm_playing = audio_play_sound(bgm_set_list[current_track], 1, false);
		 fading = false;
		 audio_group_set_gain(audiogroup_bgm, 1, 5000);
		 TrackPlaying();
		 loops = 2;
		
	}
	
}