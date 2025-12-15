/// @param product
/// @param e
function draw_count(product, e){
	var money = oComputer.money
	if (money - product.price < 0) {
		if (e == "plus") {
			oComputer.money -= product.price 
			product.ordering ++
		}
	} else {
		 else {
			oComputer.money += product.price 
			product.ordering --
		}
	} 
}