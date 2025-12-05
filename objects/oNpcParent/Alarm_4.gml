show_debug_message("showing obcanka")

var id_height = sprite_get_height(card_id)
var id_width = sprite_get_width(card_id)

_x = (_x + offsetX)
_y = _y - (id_height) - 2

var id_card = instance_create_depth(_x, _y, -99999, oNpcId)
id_card.sprite_index = card_id 



/*_x += id_height * 2

var checked = instance_create_depth(_x, _y, -99999, oChecked)

_x += 64

var denied = instance_create_depth(_x, _y, -99999, oDenied)*/
