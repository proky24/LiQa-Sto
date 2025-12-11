/// @param npc
function product_duplicate(npc) {
	 if (npc.waypoints[0] == npc.waypoints[1]) { //pokud má NPC stejný produkt dvakrát
		 show_debug_message("found duplicate heres details")
		 show_debug_message(npc.waypoints)
		 show_debug_message(npc.waypoints[0])
		 show_debug_message(npc.waypoints[1])
			npc.walked += 2	
			 if (image_index < 2) {
				npc.total_spend += price //přičteme cenu pouze jednoho produktu pokud je jich méně než dva	 
			} else {
				npc.total_spend += (price * 2)
			}
			yes = true
			return true
	 } 
}