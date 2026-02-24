if (!opened && recap) {
	opened = true
	recap = false
	
	day ++
	if (day = end_trend_day && end_trend_day != 0) {set_trend()}
	else if (end_trend_day = 0) {set_trend()}
	hours = 8
	minutes = 0
	
	start_day()
	
	image_index = 1
	rnd = floor(random(600))
	//show_debug_message("spawn " + string(rnd / 60) +"s")
	alarm[0] = rnd

}