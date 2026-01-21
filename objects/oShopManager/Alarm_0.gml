if (!opened) {
	//recapitulation() 
	// ale zatim takhle 
	
	if (delivery_day == day) {
		oStocksSaving.alarm[1] = 1
		delivery_day = 0
	}
	
	
	image_index = 0

} else {
	if (spawned == 2) { //limit spawnutých NPC, pokud je 2 další NPC nespawnuju
		alarm[0] = 60
		exit
	} 
	
	rnd = irandom(2)

	instance_create_depth(440, 310, 0, npcs[rnd]) //vytvoření random NPC z pole
	spawned ++
	
	
	var spawn_rate = lerp(2, 1, rep / max_rep)
	//show_debug_message(string(spawn_rate))
	rnd = irandom(600)
	alarm[0] = rnd * spawn_rate
	//show_debug_message("next spawn " + string(rnd / 60) + "s")

}
