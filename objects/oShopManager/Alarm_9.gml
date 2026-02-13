//get in prison funkce
instance_destroy(oNpcParent)

oPlayer.x = 288
oPlayer.y = 144

rep = 0
arrested_times ++
	
day += arrested_times
if (day = end_trend_day) {set_trend()}
hours = 8
minutes = 0
	
opened = false
image_index = 0
	
oPultRight.collided = false