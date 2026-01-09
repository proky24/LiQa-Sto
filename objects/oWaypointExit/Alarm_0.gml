if(!operating && npc != npc1){
	operating = true
	npc = npc1
	
	if (npc.waypoints_len < 4 && npc.waypoints[0] == npc.products[npc.trend_p]) {
		decrease_rep("trend")
		show_debug_message("decreased trend")
	}
	
	if (npc.age < 18 && npc.returning) {
		decrease_rep("age")
		show_debug_message("decreased age")
	} else if (npc.age > 18 && npc.returning) {
		decrease_rep("age_b")
	}
	
	operating = false
}