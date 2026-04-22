if (!called_police) {
	var trans = instance_create_depth(0, 0, -9999999999, oTransitionRecap)
	trans.target_room = rRecap
	var minus = 0
	for (var p = 0; p < array_length(products); p++) {
		minus += products[p].image_index * products[p].buy_price
	}
	if (security_sub) {
		if (money >= 75) {
			minus += 75
		} else {
			trans.security_sub_msg = true
		}	
	}
	trans.profit = money - minus 
	trans.money = money
	trans.minus = minus
	trans.day = day
	trans.rep = rep
	trans.rep_gained = rep_gained
	trans.illegal_sells = illegal_sells
	recap = true	
} else {
	alarm[4] = 30
}


//recapitulation()