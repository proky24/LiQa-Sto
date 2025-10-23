function scr_set_default_for_text(){
	/*line_break_pos[0, page_number] = 999
	line_break_num[page_number] = 0
	line_break_offset[page_number] = 0*/
	
	// defaultni hodnoty pro tyto promene
	
	text_box_spr[page_number] = 0 
	speaker_spr[page_number] = noone
	speaker_side[page_number] = 1	
	//voice_sound[page_number] = voicehigh
}	

/// @param text
/// @param speaker
/// @param
function scr_text(_text) {
	
	scr_set_default_for_text()
	
	//tady se realne vypise text do text boxu
	text[page_number] = _text
	
	
	//character info
	if argument_count > 1 {
		switch(argument[1]) {
			
			//nastavime portrety a textbox
			case "npc": 
				speaker_spr[page_number] = sPortraitNpc
				text_box_spr[page_number] = sNpcTextBox
				//voice_sound[page_number] = Sound2
				
			break;
			
			case "player":
				speaker_spr[page_number] = sPortraitPlayer
				text_box_spr[page_number] = sPlayerTextBox
				speaker_side[page_number] = -1
				//voice_sound[page_number] = Sound2
		}
	}
	
	if argument_count > 2 {
		//pokud mluvi hrac prehodime ho na druhou stranu
		speaker_side[page_number] = -1

	}
	
	page_number++
}

/// @param text_id
function scr_game_text(_text_id) { // ulozime text do text[page_number]          
	switch (_text_id){
		case "npc1":
		scr_text("Mate tady elixir tri per?", "npc") // prvni parametr = text, durhy parametr = kdo to rika
			scr_option("Ne", "npc1 - yes") // prvni parametr = text, druhy parametr = link k dalsimu dialogu
			scr_option("Ukazte obcanku", "npc1 - obcanka")
			scr_option("Prodat", "sell")
			
			break;
				case "npc1 - yes":	
					scr_text("Nemame, bohuzel.", "player")
					scr_text("Achjoo", "npc")
					scr_option("Ale mam pero", "npc1 - yes - pero")
				break;
			
			case "npc1 - yes - pero":
				scr_text("Ale... mam pero co se pocita za tri", "player")
				scr_text("to me... bere... sundejte kalhoty", "npc")
			

				break; 
			
			case "npc1 - obcanka":
				scr_text("Poprosim vas ukazat obcansy prukaz", "player")
				scr_text("tady ho mate", "npc")
				//show_after = true
				break;
			
		case "sell":
			//instance_destroy(Object25)
	}
}

/// @param option
/// @param link_id
function scr_option(_option, _link_id) { // ukladani moznosti
	option[option_number] = _option
	option_link_id[option_number] = _link_id
	
	option_number++
}

function create_textbox(_text_id) { // vytvoreni dialogu s textem
	with (instance_create_depth(0, 0, -9999, oDialog)) {
		scr_game_text(_text_id)
	}
}
