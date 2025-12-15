 

if (!instance_exists(oTransition)) {
	save_curr_stock()
	
	var tran = instance_create_depth(0, 0, -9999, oTransition)
	tran.target_room = rComputer
	tran.money = oShopManager.money
	
	

}