/// @param npc
function product_duplicate(npc) {
	 if (npc.waypoints[0] == npc.waypoints[1]) { //pokud má NPC stejný produkt dvakrát

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