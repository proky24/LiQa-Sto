if (image_index = 0) {
	image_index = 1
	
	oComputer.money -= price
	security_sub = true
} else {
	image_index = 0
	
	oComputer.money += price
	security_sub = false
}