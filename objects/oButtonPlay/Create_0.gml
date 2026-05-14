// Inherit the parent event
event_inherited();

target_room = 0
if file_exists("savedManager.txt") {
	var file = file_text_open_read("savedManager.txt")
	var _json = file_text_read_string(file)
		
	var struct = json_parse(_json)
	
	switch (struct.level) {
		case 0:
			target_room = rMain
		break;
		
		case 1:
			target_room = rIntermediateShop
		break;
		
		case 2:
			target_room = rExpertShop
		break;
	}
} else {
	target_room = rMain
}