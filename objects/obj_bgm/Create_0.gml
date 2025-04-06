
audio_group_load(audiogroup_bgm);

bgm_set_list = [ 
	snd_bgm_cast_holy, 
	snd_bgm_deranged_jazz, 
	snd_bgm_desperate_plan, 
	snd_bgm_groove,
	snd_bgm_ominus_monster,
	snd_bgm_past_tense,
	snd_bgm_pensive_facility,
	snd_bgm_ziggurat_of_tech
]

intermission_timer = 0;
current_track = 0;
fading = false;
loops = 2;
gain_set = false;

bgm_set_list = array_shuffle(bgm_set_list);
bgm_playing = -2; 