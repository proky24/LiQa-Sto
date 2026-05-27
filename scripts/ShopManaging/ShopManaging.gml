function start_day() {
	
	minutes ++ 
	if (minutes == 60) {
		minutes = 0
		hours ++
	} 
	
	if (hours == 18) {
		opened = false
		alarm[0] = 1
		oMusicManager.alarm[2] = 1
		exit
	} 
	
		alarm[1] = level_speed
}

function set_trend() {
	var rnd = irandom(array_length(products) - 1)
	var product = products[rnd]
	//product.trend = true
	trend_p = rnd
	var name = product.name
	rnd = irandom_range(1, 3)
	end_trend_day = day + rnd
	
	var text = "Do dne " + $"{end_trend_day}" + " je " + $"{name}" + " trendy!"
	trend = text
	
}

/// @param npc_id
function add_money_rep(npc_id) {
	oShopManager.money += npc_id.total_spend
	oShopManager.money_gained += npc_id.total_spend
	
	var rep = 0
	
	if (npc_id.age >= 18) {
		rep = 5
	} else {
		rep = 10
	}
	oShopManager.alarm[7] = 1
	check_rep(rep)
}


/// @param reason
function decrease_rep(reason) {
	var rep = 0
	switch (reason) {
		case "age":
			rep = -5
		break;
		
		case "trend":
			rep = -3
		break;
		
		case "age_b":
			rep = -10
		break;
	}
	//draw_arr_dec()
	oShopManager.alarm[6] = 1
	check_rep(rep)
}

/// @param rep
function check_rep(rep) {
	if (rep < 0 && oShopManager.rep + rep < 0) {
		oShopManager.rep = 0
		oShopManager.rep_gained = 0
	}  else if (oShopManager.rep + rep > oShopManager.max_rep) {
		oShopManager.rep = oShopManager.max_rep
		oShopManager.rep_gained = oShopManager.max_rep
	} else {
		oShopManager.rep += rep
		oShopManager.rep_gained += rep
	}
	
}