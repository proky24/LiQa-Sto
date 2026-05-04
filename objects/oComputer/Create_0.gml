x_first_product = 192
y_first_product = 74.5
y_add = 32

page = 0
curr_page = 0
prev_page = 0

first_page = [oLiverOfFlame, oBeerC, oBeerC1]
second_page = [oDlvSkvost, oSpanikovice, oKralovskyMok]
third_page = [oVladimirLevchenko, oSecondShopProduct, oThirdShopProduct]

level = oStocksSaving.level
products = []

switch (level) {
	case 0:
		products = [
			{
				content: first_page
			},
			{
				content: third_page
			}
		]
	break;
	
	case 1:
		products = [
			{
				content: first_page
			},
			{
				content: second_page
			},
			{
				content: third_page
			}
		]
	break;
	
	case 2:
		products = [
			{
				content: first_page
			},
			{
				content: second_page
			},
			{
				content: third_page
			}
		]
	break;
}

