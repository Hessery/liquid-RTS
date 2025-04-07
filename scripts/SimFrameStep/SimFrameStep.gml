// TODO: Does this need a refactor? 
function SimFrameStep() {
	
	// Calculate current milisecond
	if (
		last_second < current_second || 
		last_second - 59 = current_second
	) { 
		
		last_second = current_second;
		frame_count = 0;
		// DevConsoleLog("Second tick")
		
	}
	
	current_milisecond = frame_count * (1000 / fps);
	frame_count ++
	
	// Calculate if a sim frame has passed
	// Sim frames per second adjustment: 
	// 10  = ~60 sim frames per second
	// 20  = ~50 sim frames per second
	// 80  = ~15 sim frames per second
	// 100 = ~10 sim frames per second
	var sim_frame_adjustment = 10;
	if (round(current_milisecond / sim_frame_adjustment) != last_milisecond) {
		
		last_milisecond = round(current_milisecond / sim_frame_adjustment);
		sim_frame ++
		SimTick();
	}
	
	if (sim_frame = 300 && room = rm_game) { 
		
		with (obj_bgm) {
			
			current_track += 1;
			if (current_track > array_length(bgm_set_list)) { current_track = 0 }
			audio_group_set_gain(audiogroup_bgm, 1, 5000);
			audio_sound_set_track_position(bgm_playing, 0);
			
		}
		
	}
	
}