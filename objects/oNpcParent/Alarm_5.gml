// dokud existuje dialog který odkazuje na npc voláme tento alarm
if (instance_exists(oDialog) && oDialog.npc_id == id ) {
	alarm[5] = 1
} else { // pokud máme dva produkty musíme vymazat waypoint kasy na druhém indexu pole waypoints
	if (two_products) {
		array_delete(waypoints, 2, 1)
} else {
		array_delete(waypoints, 1, 1) // pokud ne tak na prvním indexu
}

can_buy = false
is_waiting = false
walked = 0
returning = true

oPultRight.collided = false
oNpcParent.alarm[1] = 1

loop()
}