if (disabled) {exit}
var diff =  oComputer.money - price
oMusicManager.alarm[3] = 1
if (!fast_delivery && oCart.image_index == 1 && diff > 0 ) {
	fast_delivery = true
	image_index ++
	alarm[0] = 10
	oComputer.money -= price
} else if (fast_delivery) {
	fast_delivery = false
	image_index ++
	alarm[1] = 10
	oComputer.money += price
}