draw_set_colour(c_white)

cursor = 0

positionx = 502
positiony = 60

hours = 8
minutes = 0
day = 0

level = 0
products = [oShelf, oBeer_1, oBeer]

opened = false
security_sub = false

level_speed = 5

count = 0
duplicate_count = 0

money = 0
money_gained = 0

fast_delivery = false
delivery_day = 0

max_spawn = [2, 3, 6]
spawn_cor = [
	{
		_x: 440,
		_y: 310
	},
	{
		_x: 440,
		_y: 310
	},
	{
		_x: 520,
		_y: 344
	}
]
queue_waypoints = [
	{
		queue: [oWaypoint]
	},
	{
		queue: [oWaypoint, oWaypoint_1]
	},
	{
		queue: [oWaypoint, oWaypoint_1, oWaypoint_2, oWaypoint_3, oWaypoint_4]
	}
]

array = []
struct = {
	content: array 
}

duplicate_products_Beer = []
duplicate_products_Beer_1 = []
duplicate_products_Shelf = []
duplicate_products_Kralovsky = []
duplicate_products_Dlv = []


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

npcs = [oNpc, oNpc2, oNpc3, oNpc4, oNpc5, oNpc6]

illegal_sells = 0

recap = true

spawned = 0
randomise()