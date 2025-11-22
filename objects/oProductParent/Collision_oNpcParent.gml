//pokud už produkt je obsazen nebo NPC pouze prochází nic se neděje
if (collided || abs(other.target_x - x) > 1) {exit}
collided = true
npc = other
other.is_waiting = true

//pokud došli produkty
if (image_index == 0) {
	if(other.totalSpend == 0) { //pokud NPC nemá u sebe jiný produkt odejde
		other.walked = array_length(other.waypoints) - 1
	} else {
		other.walked ++
	}
	alarm[0] = 90
	
	exit
} else {
	 if (other.waypoints[0] == other.waypoints[1]) { //pokud má NPC stejný produkt dvakrát
		other.walked += 2	
		 if (image_index < 2) {
			other.totalSpend += price //přičteme cenu pouze jednoho produktu pokud je jich méně než dva	 
		} else {
			other.totalSpend += (price * 2)
		}
		yes = true
	 } else { //posuneme walked na další waypoint a přičteme cenu produktu
		other.walked ++
		other.totalSpend += price
	 }
	
	alarm[0] = 90 
}