// Inherit the parent event
event_inherited();

if (!instance_exists(oTransitionMenu)) {
	file_delete("savedProducts.txt")
	file_delete("savedOrder.txt")
	file_delete("savedRoom.txt")
	file_delete("savedManager.txt")
	
	var tran = instance_create_depth(0, 0, -99999999, oTransitionMenu)
	
	tran.target_room = target_room
}