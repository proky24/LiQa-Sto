if (oStocksSaving.level < 2) {
	if (image_index = 0 && image_alpha == 1 && oComputer.money >= 500) {
		image_index = 1
	
		shop_upgrade = true
		oComputer.money -= price

	} else if (image_index == 1){
		image_index = 0
	
		shop_upgrade = false
		oComputer.money += price
	}
}