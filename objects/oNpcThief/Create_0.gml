// Inherit the parent event
event_inherited();

var rnd = products[irandom(array_length(products) - 1)]
waypoints = [rnd , wp_exit]

move_speed = 0.5
notyet = false 
thief = true
 
oPlayer.move_speed = 1.2
if (instance_exists(oNpcSecurity)) {
	oNpcSecurity.move_speed = 1.4
	oNpcSecurity.walked = 2
	oNpcSecurity.alarm[1] = 20
}