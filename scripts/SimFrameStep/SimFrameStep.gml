// TODO: Does this need a refactor? 
function SimFrameStep() {
	
	// Calculate current milisecond
	if (
		last_second < current_second || 
		last_second - 59 = current_second
	) { 
		
		last_second = current_second;
		frame_count = 0;
		//command_delay_floater --
		
	}
	
	current_milisecond = frame_count * (1000 / fps);
	frame_count ++
	
	// Calculate if a sim frame has passed
	if (round(current_milisecond / 100) != last_milisecond) {
		
		last_milisecond = round(current_milisecond / 100);
		sim_frame ++
		SimTick();
		
	}
	
}