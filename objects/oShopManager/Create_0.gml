draw_set_colour(c_white)
positionx = 510
positiony = 60

hours = 8
minutes = 0
day = 0

opened = false

money = 100

fast_delivery = false
delivery_day = 0

rnd = 0

rep = 30
max_rep = 90

rep_change = false
subimg = 0

trend = ""
trend_p = 0
end_trend_day = 0

arrested_times = 0

npcs = [oNpc, oNpc2, oNpc3]
products = [oShelf, oBeer_1, oBeer]

spawned = 0
randomise()

result = max_rep / rep
show_debug_message(string(result))

result = rep / max_rep
show_debug_message(string(result))
