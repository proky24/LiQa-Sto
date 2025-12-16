if (fast_delivery) {
	delivery_day = day + 1
} else {
	delivery_day = day + 2
}

delivery_hour = irandom(18) 

fast_delivery = false

show_debug_message(string(delivery_day) + " day")
show_debug_message(string(delivery_hour) + " hour")