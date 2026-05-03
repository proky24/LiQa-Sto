if (oBuyButton.shop_upgrade) {
	if (!instance_exists(oTransition)) {
	
		var tran = instance_create_depth(0, 0, -9999, oTransition)
		tran.target_room = rIntermediateShop
		tran.money = oComputer.money
		tran.security_sub = oContract.security_sub
	}
}

if (oComputer.previous_money != oComputer.money || oContract.image_index == 1) {
	get_order()
	
	if (!instance_exists(oTransition)) {
	
		var tran = instance_create_depth(0, 0, -9999, oTransition)
		tran.target_room = rMain
		tran.money = oComputer.money
		tran.fast_delivery = fast_delivery
		tran.security_sub = oContract.security_sub
	}
}