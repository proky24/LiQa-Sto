if (!opened) {
	opened = true
	
	day ++
	if (day = end_trend_day && end_trend_day != 0) {set_trend()}
	else if (end_trend_day = 0) {set_trend()}
	hours = 8
	minutes = 0
	
	start_day()
	
	image_index = 1
	rnd = floor(random(600))
	alarm[0] = rnd
}