if (!opened && recap) {
	opened = true
	recap = false
	rep_gained = 0
	money_gained = 0
	
	with (oProductParent) {
		sold = 0
	}

	day ++
	if (day = end_trend_day && end_trend_day != 0) {set_trend()}
	else if (end_trend_day = 0) {set_trend()}
	if (security_sub) {
		if (money >= 75) {
			instance_create_layer(440, 310, "Instances", oNpcSecurity)
		} else {
			security_sub = false		
		}
	}
	hours = 8
	minutes = 55
	
	start_day()
	
	image_index = 1
	rnd = floor(random(600))
	//show_debug_message("spawn " + string(rnd / 60) +"s")
	alarm[0] = rnd
	oMusicManager.alarm[0] = 1
}