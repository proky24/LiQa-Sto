spawned = 2
if(instance_exists(oNpcParent)) {
	alarm[3] = 90
} else if(!instance_exists(oNpcPolice) && !instance_exists(oNpcPoliceF)) {
	spawned = 2
	
	instance_create_depth(422, 322, 0, oNpcPolice)
	
	instance_create_depth(400, 352, 0, oNpcPoliceF)
	
	illegal_sells = 0
	
}