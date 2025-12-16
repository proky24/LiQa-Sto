/// @param product
/// @param e
function draw_count(product, e){
	var money = oComputer.money

	if (money - product.price >= 0) {
		if (e && product.ordering != product.max_stock) {
			oComputer.money -= product.price 
			product.ordering ++
		} else if (!e && product.ordering > 0) {
			oComputer.money += product.price 
			product.ordering --
		}
	}
} 
