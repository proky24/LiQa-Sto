//pokud už kasa je obsazena nebo NPC pouze prochází nic se neděje
if (collided || abs(other.target_x - x) > 1) {exit}
collided = true
npc = other

other.walked ++
other.is_waiting = true
other.can_buy = true

oNpcParent.alarm[1] = 1 //aktualizujeme cesty ostatním NPC

