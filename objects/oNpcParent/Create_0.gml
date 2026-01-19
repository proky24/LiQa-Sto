input_key = vk_space
can_buy = false 
can_talk = false

image_alpha = 0

total_spend = 0

products = oShopManager.products
trend_p = oShopManager.trend_p

waypoints = [0, 0, wp_cashier, wp_exit]
waypoints[0] = products[trend_p]

var product1 = irandom(array_length(products) - 1)
waypoints[1] = products[product1]


target_x = 0
target_y = 0
move_speed = 1


/*for (var p = 0; p < 2; p++) {
	var product1 = irandom(array_length(products) - 1)
	var rnd1 = irandom_range(1, 2)

	if (rnd1 > 1) {
		show_debug_message("trend hunting")
		show_debug_message(string(p))
		waypoints[p] = products[trend_p]
	} else {
		waypoints[p] = products[product1]
	}
}*/

two_products = false
returning = false

page = 0

is_waiting = false

walked = 0

grid = 0



//50% šance na to že NPC si půjde pro druhý produkt
var rnd = irandom(1) 
if (rnd < 1) {
	array_delete(waypoints, 0, 1)
	//pokud bude rnd 0 vymažeme product z pole waypoints
}// 
else {
	two_products = true
}

waypoints_len = array_length(waypoints)

path = path_add()

alarm[1] = 5
alarm[2] = 5
alarm[0] = 5