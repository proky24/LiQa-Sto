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
				
			break;
			
			case "player":
				speaker_spr[page_number] = sPortraitPlayer
				text_box_spr[page_number] = sPlayerTextBox
				speaker_side[page_number] = -1
		}
	}
	
	if argument_count > 2 {
		//pokud mluvi hrac prehodime ho na druhou stranu
		speaker_side[page_number] = -1

	}
	
	page_number++
}

/// @param text_id
/// @param npc_id
function scr_game_text(_text_id, _npc_id) { // ulozime text do text[page_number]          
	switch (_text_id){
		case "npc1":
		scr_text("Dobry den", "npc") // prvni parametr = text, durhy parametr = kdo to rika
		
			scr_option("V lihu", "npc1 - 1") // prvni parametr = text, druhy parametr = link k dalsimu dialogu
			scr_automate_options()
			
			break;
				case "npc1 - 1":	
					scr_text("Dneska budete v lihu jo?", "player")
					scr_text("Prokoukl jste me", "npc")
					
					scr_option("Tak vas poprosim " + string(_npc_id.total_spend), "npc1 - 1 - sell")
					scr_automate_options()
				break;
			
			case "npc1 - 1 - sell":
				scr_text("Tak vas poprosim o... " + string(_npc_id.total_spend) , "player")
				scr_text("Hotove", "npc")
				scr_option("Prodat", "sell")

				break; 
			
			case "npc1 - obcanka":
				scr_text("Poprosim vas ukazat obcansy prukaz", "player")
				scr_text("tady ho mate", "npc")
				break;
			
		case "test":
			scr_text("dobry der schanim " + string(_npc_id.waypoints[0].name), "npc")
			
			scr_option("Jdi do prdele", "test - prdel")
			break;
			
				case "test - prdel":
			scr_text("Jdi do prdele ty hromado promrdanyho masa", "player")
			scr_text("Noo tak to si ji nastav nooo", "npc")
			scr_option("Konec", "end")
			break;
			
			case "end":
				instance_destroy(oDialog)
				_npc_id.alarm[2] = 1
				break;
		
		
		case "sell":
			instance_destroy(oDialog)
			
			npc_id.can_buy = false
			npc_id.is_waiting = false
			oStatus.money += _npc_id.total_spend
			
			oPultRight.alarm[1] = 30
	}
}

/// @param option
/// @param link_id
function scr_option(_option, _link_id) { // ukladani moznosti
	option[option_number] = _option
	option_link_id[option_number] = _link_id
	
	option_number++
}

function scr_automate_options() {
	scr_option("Ukazte obcanku", "npc1 - obcanka")
	scr_option("Prodat", "sell")
}

function create_textbox(_text_id, _npc_id) { // vytvoreni dialogu s textem
	with (instance_create_depth(0, 0, -9999, oDialog)) {
		oDialog.npc_id = _npc_id
		scr_game_text(_text_id, _npc_id)
	}
}
