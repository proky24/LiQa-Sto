
if (room == target_room && image_index < 1) {
	
	if(room == rPrison) {
		instance_create_depth(0, 0, -99999, oPrisonTimer)
	}
	instance_destroy(self)

}
