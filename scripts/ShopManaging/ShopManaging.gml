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
	
		alarm[1] = 10
}

function set_trend() {
	var rnd = irandom(array_length(products) - 1)
	var product = products[rnd]
	trend_p = rnd
	
	var name = product.name
	end_trend_day = day + 3
	
	var text = "Do dne " + $"{end_trend_day}" + " je " + $"{name}" + " trendy!"
	trend = text
	
}