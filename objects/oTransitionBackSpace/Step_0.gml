if (room == target_room && image_index < 1) {
	oShopManager.money = money
	oShopManager.security_sub = security_sub

	instance_destroy(self)
}
