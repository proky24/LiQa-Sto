/// @param page
function move_page(_page){
	prev_page = curr_page
	curr_page +=  _page
	
	if (curr_page < 0 || curr_page > array_length(products) - 1)  {
		curr_page = 0
		prev_page = 0
		exit
	}

	for (var p = 0; p < array_length(products[prev_page].content); p++) {
		products[prev_page].content[p].image_alpha = 0
		
		with (oPlusMinus) {
			if (product == oComputer.products[oComputer.prev_page].content[p]) {
				image_alpha = 0
			}
		}	
	}
	
	for (var p = 0; p < array_length(products[curr_page].content); p++) {
		products[curr_page].content[p].image_alpha = 1
		
		if (curr_page <= 3){
			with (oPlusMinus) {
				if (product == oComputer.products[oComputer.curr_page].content[p]) {
					image_alpha = 1
				}
			}	
		}
	}
}