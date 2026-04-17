//zastavíme NPC
if (!collided && abs(other.target_x - x) < 1) {
	collided = true
	other.is_waiting = true
	other.walked = 1
	
	var rnd = irandom_range(1, 1200)
	
	other.alarm[1] = rnd + 10000000000
	alarm[1] = rnd + 100
}