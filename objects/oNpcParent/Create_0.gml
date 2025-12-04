input_key = vk_space
can_buy = false
can_talk = false

image_alpha = 0

total_spend = 0

products = [oShelf, oBeer, oBeer_1]
waypoints = [0, 0, wp_cashier, wp_exit]
target_x = 0
target_y = 0
move_speed = 1

page = 0

is_waiting = false

walked = 0

grid = 0

waypoints_len = array_length(waypoints)

//NPC si náhodně vybere pdoukty
for (var p = 0; p < waypoints_len - 2; p++) {
	var product1 = irandom(array_length(products) - 1)
	waypoints[p] = products[product1]
}

//50% šance na to že NPC si půjde pro druhý produkt
var rnd = irandom(1)
if (rnd < 1) {
	array_delete(waypoints, 1, 1)
	//pokud bude rnd 0 vymažeme product z pole waypoints
}//


path = path_add()

alarm[1] = 5
alarm[2] = 5
alarm[0] = 5