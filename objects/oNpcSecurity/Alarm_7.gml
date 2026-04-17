inventory = oNpcThief.waypoints[0]
show_debug_message(string(inventory))

oNpcThief.stealing = false
oNpcThief.caught = false
oNpcThief.is_waiting = false

oNpcThief.alarm[1] = 1

handeling = false
returning = true
waypoints[3] = inventory
walked = 3
alarm[1] = 1