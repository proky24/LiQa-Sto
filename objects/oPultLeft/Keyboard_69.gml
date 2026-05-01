if (oShopManager.level > 0 && distance_to_object(oPlayer) < 8 && !instance_exists(oTransition) &&  !oShopManager.opened) {
	save_curr_stock() 
	
	var tran = instance_create_depth(0, 0, -9999, oTransition)
	tran.target_room = rComputer // mistnost do ktere chceme jit
	tran.money = oShopManager.money // posleme penize
	tran.security_sub = oShopManager.security_sub
}