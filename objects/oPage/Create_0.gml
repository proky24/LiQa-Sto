x_first_product = 192
y_first_product = 74.5
y_add = 32

first_page = [oLiverOfFlame, oBeerC, oBeerC1]
second_page = [oVladimirLevchenko]

products = [
	{
		content: first_page
	},
	{
		content: second_page
	}
]
curr_page = 0
prev_page = 0
for (var p = 0; p < array_length(products[curr_page].content); p++) {
	products[curr_page].content[p].image_alpha = 1
}

products[curr_page + 1].content[0].image_alpha = 0