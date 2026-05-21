if (!opened) {
	image_index = 0
	
	if(instance_exists(oNpcParent)) {
		alarm[0] = 30
	} else {
		if (delivery_day == day) {
			oStocksSaving.alarm[1] = 1
			delivery_day = 0
			exit
		}
		
		alarm[4] = 90
	}
	

} else {
	if (spawned == 2) { //limit spawnutých NPC, pokud je 2 další NPC nespawnuju
		alarm[0] = 60
		exit
	} 
	
	rnd = irandom(2)

	instance_create_depth(440, 310, 0, npcs[rnd]) //vytvoření random NPC z pole
	spawned ++
	
	
	var spawn_rate = power(1 - (rep / max_rep), 2)
	//lerp(2, 1, rep / max_rep)
	rnd = irandom(600)
	alarm[0] = rnd * spawn_rate
	//show_debug_message("next spawn " + string(rnd / 60) + "s")

}
