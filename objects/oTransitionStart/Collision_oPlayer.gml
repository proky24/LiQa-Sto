// zacenme prechod pokud mame zavreno
if (!instance_exists(oTransition) && !oShopManager.opened && !ordered) {
	// ulozime momentalni zasoby produktu
	save_curr_stock() 
	
	var tran = instance_create_depth(0, 0, -9999, oTransition)
	tran.target_room = rComputer // mistnost do ktere chceme jit
	tran.money = oShopManager.money // posleme penize
}