input_key = vk_space
can_buy = false 
can_talk = false

image_alpha = 0

total_spend = 0

products = oShopManager.products
trend_p = oShopManager.trend_p

waypoints = [0, 0, wp_cashier, wp_exit]
waypoints[0] = products[trend_p]

queue_pos = 999

var product1 = irandom(array_length(products) - 1)
waypoints[1] = products[product1]


target_x = 0
target_y = 0
move_speed = 1

security = false


two_products = true
returning = false

page = 0

is_waiting = false

walked = 0

grid = 0

//50% šance na to že NPC si půjde pro druhý produkt
var rnd = irandom(1) 
if (rnd < 1) {
	array_delete(waypoints, 0, 1)
	two_products = false
	//pokud bude rnd 0 vymažeme product z pole waypoints
}

if (oShopManager.level == 1) {
	var rnd_int = 0
	for (var p = 0; p < 2; p++) {
		switch (waypoints[p]) {
			case oBeer:
			
				rnd_int = random(array_length(oShopManager.duplicate_products_Beer) - 1) 
				if (oShopManager.duplicate_products_Beer[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Beer[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Beer); q++) {
						if (oShopManager.duplicate_products_Beer[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Beer[rnd_int]
							exit
						}
					}
				}
			break;
			
			case oBeer_1:
				rnd_int = random(array_length(oShopManager.duplicate_products_Beer_1) - 1) 
				if (oShopManager.duplicate_products_Beer_1[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Beer_1[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Beer_1); q++) {
						if (oShopManager.duplicate_products_Beer_1[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Beer_1[rnd_int]
							exit
						}
					}
				}
			break;
		}
	}
}
	
if (oShopManager.level == 2) {
	var rnd_int = 0
	for (var p = 0; p < 2; p++) {
		switch (waypoints[p]) {
			case oBeer:
			
				rnd_int = random(array_length(oShopManager.duplicate_products_Beer) - 1) 
				if (oShopManager.duplicate_products_Beer[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Beer[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Beer); q++) {
						if (oShopManager.duplicate_products_Beer[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Beer[rnd_int]
							exit
						}
					}
				}
			break;
			
			case oBeer_1:
				rnd_int = random(array_length(oShopManager.duplicate_products_Beer_1) - 1) 
				if (oShopManager.duplicate_products_Beer_1[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Beer_1[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Beer_1); q++) {
						if (oShopManager.duplicate_products_Beer_1[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Beer_1[rnd_int]
							exit
						}
					}
				}
			break;
			
			case oShelf:
				rnd_int = random(array_length(oShopManager.duplicate_products_Shelf) - 1) 
				if (oShopManager.duplicate_products_Shelf[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Shelf[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Shelf); q++) {
						if (oShopManager.duplicate_products_Shelf[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Shelf[rnd_int]
							exit
						}
					}
				}
			break;
			
			case oDlvSkvost:
				rnd_int = random(array_length(oShopManager.duplicate_products_Dlv) - 1) 
				if (oShopManager.duplicate_products_Dlv[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Dlv[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Dlv); q++) {
						if (oShopManager.duplicate_products_Dlv[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Dlv[rnd_int]
							exit
						}
					}
				}
			break;
			
			case oKralovskyMok:
				rnd_int = random(array_length(oShopManager.duplicate_products_Kralovsky) - 1) 
				if (oShopManager.duplicate_products_Kralovsky[rnd_int].image_index != 0) {
					waypoints[p] = oShopManager.duplicate_products_Kralovsky[rnd_int]
				} else {
					
					for (var q = 0; q < array_length(oShopManager.duplicate_products_Kralovsky); q++) {
						if (oShopManager.duplicate_products_Kralovsky[q].image_index != 0) {
							waypoints[p] = oShopManager.duplicate_products_Kralovsky[rnd_int]
							exit
						}
					}
				}
			break;
		}
	}
}
	
	
			
			

waypoints_len = array_length(waypoints)

path = path_add()

alarm[1] = 5
alarm[2] = 5
alarm[0] = 5


