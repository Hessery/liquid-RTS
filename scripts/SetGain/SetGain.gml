function SetGain(gain_str) {
	
	var gain_percent = string_digits(gain_str)
	var gain = gain_percent / 100;
	
	// var num = audio_get_listener_count();
	// for( var i = 0; i < num; i ++) {
		
	//     var info = audio_get_listener_info(i);
	//     audio_set_master_gain(info[? "index"], gain);
	//     ds_map_destroy(info);
		
	// }
	
	audio_group_set_gain(audiogroup_bgm, gain, 0);
	
	DevConsoleLog("Set gain to " + string(gain_percent) + "%");
	
	OptionsSet("BGM Gain", gain, true);
	
}