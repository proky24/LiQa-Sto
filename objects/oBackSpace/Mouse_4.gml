var tran = instance_create_depth(0, 0, -9999, oTransition)
level = oStocksSaving.level
var _room = 0
switch (level) {
	case 0:
		_room = rMain
	break;
	
	case 1:
		_room = rIntermediateShop
	break;
	
	case 2:
	break;
}
tran.target_room = _room
tran.money = oComputer.money
tran.fast_delivery = false
tran.security_sub = oContract.security_sub
