var tran = instance_create_depth(0, 0, -9999, oTransition)
var _room = oStocksSaving._room

tran.target_room = _room
tran.money = oComputer.money
tran.fast_delivery = false
tran.security_sub = oContract.security_sub
