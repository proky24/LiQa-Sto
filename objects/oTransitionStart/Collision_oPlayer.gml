 

if (!instance_exists(oTransition)) {
	var tran = instance_create_depth(0, 0, -9999, oTransition)
	tran.target_room = rComputer
	tran.money = oStatus.money
	//tran.player_x = oPlayer.x
	//tran.player_y = oPlayer.y + 1

}