if (room == target_room && image_index < 1) {
	if (room == rRecap) {
		oRecap.profit = profit
		oRecap.money = money
		oRecap.day = day
		oRecap.rep_gained = rep_gained
		oRecap.illegal_sells = illegal_sells
		oRecap.minus = minus
		oRecap.rep = rep
		oRecap.security_sub_msg = security_sub_msg
		
		oRecapTimer.alarm[0] = 600
		oRecapTimer.target_room = recap_timer_room
	}
	instance_destroy(self)
}
