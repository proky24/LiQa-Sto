var tran = instance_create_depth(0, 0, -9999, oTransition)
	tran.target_room = rMain
	tran.money = oComputer.money
	tran.fast_delivery = false
	tran.security_sub = oContract.security_sub
