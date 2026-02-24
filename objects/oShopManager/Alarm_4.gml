

var trans = instance_create_depth(0, 0, -9999999999, oTransitionRecap)
trans.target_room = rRecap
var minus = 0
for (var p = 0; p < array_length(products); p++) {
	minus += products[p].image_index * products[p].buy_price
	show_debug_message(string(products[p]) + string(products[p].image_index) + string(products[p].buy_price))
}
trans.profit = money - minus
recap = true
//recapitulation()