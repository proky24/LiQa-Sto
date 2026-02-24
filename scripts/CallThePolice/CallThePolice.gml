function call_the_police(illegal_sells){
	
	var rnd = irandom_range(1, 200)
	
	if (rnd < illegal_sells) {
		oShopManager.called_police = true
		oShopManager.alarm[3] = 30
	}
}