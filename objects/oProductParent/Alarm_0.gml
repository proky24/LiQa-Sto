if (yes) { //pokud NPC chce produkt dvakrát odečteme dva produkty
	image_index -= 2
	yes = false

} else {
	image_index --
}
	if (image_index <= 0) { //aby nedocházelo k image_index < 0 dáme ho na nulu
		image_index = 0
	}
npc.is_waiting = false // NPC nečeká a může na další waypoint
npc.alarm[1] = 1 // zavoláme aktualizaci cesty NPC
alarm[1] = 60