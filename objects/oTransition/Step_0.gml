if (room == target_room && image_index < 1) {
	instance_create_depth(0, 0, +11111, oComputer)

	oComputer.idk = asdidk
	oComputer.alarm[0] = 1
	instance_destroy(self)
}