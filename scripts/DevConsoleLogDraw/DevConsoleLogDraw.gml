function DevConsoleLogDraw() {
	for (var i = 0; i < array_length(console_log); i ++) {
		draw_text(
			10, 
			y - ((array_length(console_log) - (i - 1)) * 22),
			console_log[i]
		);
	}
}