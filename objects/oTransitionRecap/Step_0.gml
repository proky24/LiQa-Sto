if (room == target_room && image_index < 1) {
	if (room == rRecap) {
		oRecap.profit = profit
		oRecap.money = money
		oRecap.day = day
		oRecap.rep_gained = rep_gained
		oRecap.illegal_sells = illegal_sells
		oRecap.minus = minus
	}
	instance_destroy(self)
}
