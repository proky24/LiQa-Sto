get_order()

if (!instance_exists(oTransition)) {
	
	var tran = instance_create_depth(0, 0, -9999, oTransition)
	tran.target_room = rMain
	tran.money = oComputer.money
	tran.fast_delivery = fast_delivery
}