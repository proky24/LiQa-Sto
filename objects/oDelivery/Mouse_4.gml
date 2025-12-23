if (disabled) {exit}
var diff =  oComputer.money - price
if (!fast_delivery && oCart.image_index == 1 && diff > 0 ) {
	fast_delivery = true
	image_index = 1
	oComputer.money -= price
} else if (fast_delivery) {
	fast_delivery = false
	image_index = 0
	oComputer.money += price
}