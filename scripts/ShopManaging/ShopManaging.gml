function start_day() {
	minutes ++ 
	if (minutes == 60) {
		minutes = 0
		hours ++
	}
	
	if (hours == 18) {
		closed = true
		exit
	} 

		alarm[1] = 10

}