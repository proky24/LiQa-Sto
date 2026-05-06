if (!instance_exists(oTransitionMenu)) {
	var tran = instance_create_depth(0, 0, -99999999, oTransitionMenu)
	
	tran.target_room = target_room
}