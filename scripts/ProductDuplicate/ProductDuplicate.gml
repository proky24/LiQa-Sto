function product_duplicate() {
	 if (other.waypoints[0] == other.waypoints[1]) { //pokud má NPC stejný produkt dvakrát
			other.walked += 2	
			 if (image_index < 2) {
				other.total_spend += price //přičteme cenu pouze jednoho produktu pokud je jich méně než dva	 
			} else {
				other.total_spend += (price * 2)
			}
			yes = true
			return true
	 } 
}