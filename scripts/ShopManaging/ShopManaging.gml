function start_day() {
	minutes ++ 
	if (minutes == 60) {
		minutes = 0
		hours ++
	} 
	
	if (hours == 18) {
		opened = false
		alarm[0] = 1
		exit
	} 
	
		alarm[1] = 5
}