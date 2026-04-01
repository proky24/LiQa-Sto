//pokud už produkt je obsazen nebo NPC pouze prochází nic se neděje
if (collided || abs(other.target_x - x) > 1) {exit} 


collided = true
npc = other
npc.is_waiting = true

if(npc.thief && instance_exists(oNpcSecurity)) {
	oNpcSecurity.alarm[0] = 1 
}


if(npc.returning) {
	//product_duplicate(npc)
	alarm[10] = 90
} else {
	
	//pokud došli produkty
	if (image_index == 0) {
		if(array_length(npc.waypoints) < 4) { //pokud NPC nemá u sebe jiný produkt nebo nemá vybraný jiný odejde
			npc.walked = array_length(npc.waypoints) - 1
			alarm[3] = 90  
		} else {
			for (var p = 0; p < array_length(npc.waypoints); p++){
				if(npc.waypoints[p] == object_index){
					array_delete(npc.waypoints, p, 1)
					npc.two_products = false
					p = -1
					
					if (array_length(npc.waypoints) == 2) {
						npc.walked ++
					}
				}
			}
		}
		alarm[0] = 90
	
		exit
	} else if (!product_duplicate(npc)) {
		
		//posuneme walked na další waypoint a přičteme cenu produktu
		npc.walked ++
		npc.total_spend += price
		//alarm[0] = 90 
	}
	alarm[0] = 90
}

