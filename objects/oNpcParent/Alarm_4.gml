show_debug_message("showing obcanka")
var id_width = sprite_get_height(card_id)
var _x = (oDialog.textbox_x + oDialog.text_box_x_offset[page]) * 3
var _y = (oDialog.textbox_y - id_width) - 4
var id_card = instance_create_depth(_x, _y, -99999, oNpcId)
id_card.sprite_index = card_id 