prev_page = curr_page
show_debug_message(string(curr_page))
curr_page += page
show_debug_message(string(curr_page))

if (curr_page < 0) {exit}

for (var p = 0; p < array_length(products[prev_page].content); p++) {
	products[prev_page].content[p].image_alpha = 0
}

if (curr_page == 1) {
	oVladimirLevchenko.image_alpha = 1
}

if (curr_page == 0) {
	products[prev_page].content[0].image_alpha = 1
	products[prev_page].conten[1].image_alpha = 1
	products[prev_page].content[2].image_alpha = 1
}

show_debug_message(string (page) + "  " + string(curr_page) + "  " + string(prev_page))