/// @param product
/// @param e
function draw_count(product, e){
	var money = oComputer.money
	if (e && product.ordering != product.max_stock && money - product.price >= 0) {
		oComputer.money -= product.price 
		product.ordering ++
	} else if (!e && product.ordering > 0) {
		oComputer.money += product.price 
		product.ordering --
	}
} 
