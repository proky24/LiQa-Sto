if(instance_exists(oDialog)) exit

if (instance_exists(oPlayer) && distance_to_object(oPlayer) < 8) {
	can_talk = true
	if (keyboard_check_pressed(input_key)) {
			create_textbox(dialog)
	}
} else {
	can_talk = false
}


