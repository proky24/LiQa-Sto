//pokud už produkt je obsazen nebo NPC pouze prochází nic se neděje
if (collided || abs(other.target_x - x) > 1) {exit}

if(other.returning) {
	collided = true
	npc = other
	
	other.is_waiting = true
	
	product_duplicate()
	alarm[10] = 90
	
} else {
	collided = true
	npc = other
	other.is_waiting = true

	//pokud došli produkty
	if (image_index == 0) {
		if(other.total_spend == 0 || array_length(other.waypoints) < 4) { //pokud NPC nemá u sebe jiný produkt nebo nemá vybraný jiný odejde
			other.walked = array_length(other.waypoints) - 1
		} else {
			other.walked ++
		}
		alarm[0] = 90
	
		exit
	} else {
		if(product_duplicate()) {} else {
		 //posuneme walked na další waypoint a přičteme cenu produktu
			other.walked ++
			other.total_spend += price
		}
		
		 
	
		alarm[0] = 90 
	}
}
