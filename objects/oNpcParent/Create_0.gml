input_key = vk_space
can_buy = false 
can_talk = false

image_alpha = 0

total_spend = 0

products = [oShelf, oBeer_1, oBeer]
waypoints = [0, 0, wp_cashier, wp_exit]
target_x = 0
target_y = 0
move_speed = 1

//waypoints[0] = products[0]
//waypoints[1] = products[1]

for (var p = 0; p < 2; p++) {
	var product1 = irandom(array_length(products) - 1)
	show_debug_message(string(products[product1]) + " chosen product")
	waypoints[p] = products[product1]
	show_debug_message(string(waypoints[p]) + " written in waypoints index " + string(p))
}
two_products = false
returning = false

page = 0

is_waiting = false

walked = 0

grid = 0

waypoints_len = array_length(waypoints)

//50% šance na to že NPC si půjde pro druhý produkt
var rnd = irandom(1)
if (rnd < 1) {
	array_delete(waypoints, 1, 1)
	show_debug_message("deleted")
	//pokud bude rnd 0 vymažeme product z pole waypoints
}// 
else {
	two_products = true
}


path = path_add()

alarm[1] = 5
alarm[2] = 5
alarm[0] = 5