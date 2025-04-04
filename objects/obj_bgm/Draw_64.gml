var track_length = audio_sound_length(bgm_playing)
var track_pos = audio_sound_get_track_position(bgm_playing)
var time_left = track_length - track_pos;
draw_text(32, 32, time_left);