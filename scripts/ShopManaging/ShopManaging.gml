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
	
		alarm[1] = 1
}

function set_trend() {
	var product = products[irandom(array_length(products) - 1)]
	
	trend = product.name
	end_trend_day = day + 3
}