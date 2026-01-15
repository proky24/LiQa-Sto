if(!operating && npc != npc1){
	operating = true
	npc = npc1
	show_debug_message("alarmp[")
	show_debug_message(string(npc))

	if (array_contains(npc.waypoints, npc.products[npc.trend_p], 0, npc.waypoints_len) && npc.total_spend < 10) {
		decrease_rep("trend")
		exit
	}
	
	if (npc.age < 18 && npc.returning) {
		decrease_rep("age")
	} else if (npc.age >= 18 && npc.returning) {
		decrease_rep("age_b")
		show_debug_message("bad age")
	}
	
	operating = false
}