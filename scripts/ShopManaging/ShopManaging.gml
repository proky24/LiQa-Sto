function startDay() {
	minutes ++ 
	if (minutes == 60) {
		minutes = 0
		hours ++
	}
	
	if (hours == 18) {
		endDay()
		exit
	} 

		alarm[1] = 10

}

function endDay() {
	show_debug_message("zlutas10")
}