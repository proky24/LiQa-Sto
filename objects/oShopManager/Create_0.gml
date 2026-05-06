draw_set_colour(c_white)

positionx = 502
positiony = 60

hours = 8
minutes = 0
day = 0

level = 0
products = [oShelf, oBeer_1, oBeer]

opened = false
security_sub = false

money = 500
money_gained = 0

fast_delivery = false
delivery_day = 0

rnd = 0

rep = 0
max_rep = 100
rep_gained = 0

rep_change = false
subimg = 0

trend = ""
trend_p = 0
end_trend_day = 0

arrested_times = 0
called_police = false

npcs = [oNpc, oNpc2, oNpc3]

illegal_sells = 0

recap = true

spawned = 0
randomise()

/*p = 0
beer = []
with (oBeer) {
	show_debug_message(id) 
	oShopManager.beer[oShopManager.p] = id
	show_debug_message(oShopManager.beer)
	oShopManager.p ++
}

p = 0
beer_1 = []
with (oBeer_1) {
	show_debug_message(id) 
	oShopManager.beer_1[oShopManager.p] = id
	show_debug_message(oShopManager.beer_1)
	oShopManager.p ++
}
