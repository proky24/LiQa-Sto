inventory = oNpcThief.waypoints[0].id
show_debug_message(string(inventory))

oNpcThief.stealing = false
oNpcThief.caught = false
oNpcThief.is_waiting = false

oNpcThief.alarm[1] = 1