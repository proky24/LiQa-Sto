
/// @param product
function draw_count(product){
	var money = oComputer.money
	if (money - product.price < 0 || product.ordering >= product.max_stock) {
		return
	} else {
		oComputer.money -= product.price 
		product.ordering ++
		
	}
	//draw_text(_x, _y, )
	
}