if (!opened) {
	//recapitulation() 
	// ale zatim takhle 
	
	if (delivery_day == day) {
		oStocksSaving.alarm[1] = 1
	}
	
	image_index = 0

} else {
	if (spawned == 0) { //limit spawnutých NPC, pokud je 2 další NPC nespawnuju
		alarm[0] = 60
		exit
	} 
	
	rnd = irandom(1)

	instance_create_depth(440, 310, 0, npcs[rnd]) //vytvoření random NPC z pole
	spawned ++

	rnd = floor(random(600))
	alarm[0] = rnd

}
