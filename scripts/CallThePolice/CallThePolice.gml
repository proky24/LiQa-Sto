function call_the_police(illegal_sells){
	
	var rnd = 1//irandom_range(1, illegal_sells)
	
	if (rnd < illegal_sells) {
		oShopManager.called_police = true
		oShopManager.alarm[3] = 30
	}
}