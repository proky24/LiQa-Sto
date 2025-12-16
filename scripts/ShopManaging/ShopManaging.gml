function start_day() {
	minutes ++ 
	if (minutes == 60) {
		minutes = 0
		hours ++
	} else if(delivery_hour == hours && delivery_day == day){
		alarm[3] = 1
	} else if (hours == 18) {
		opened = false
		alarm[0] = 1
		exit
	} 
	
		alarm[1] = 5
}