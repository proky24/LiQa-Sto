if (room == target_room && image_index < 1) {
	if (room == rRecap) {
		oRecap.profit = profit
		oRecap.day = day
		oRecap.alarm[0] = 1
	}
	instance_destroy(self)
}
