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
/// @param npc_id
function scr_text(_text, speaker, _npc_id) {
	
	scr_set_default_for_text()
	
	//tady se realne vypise text do text boxu
	text[page_number] = _text
	
	
	//character info
	if argument_count > 1 {
		switch(argument[1]) {
			
			//nastavime portrety a textbox
			case "npc": 
				speaker_spr[page_number] = _npc_id.portrait
				text_box_spr[page_number] = sNpcTextBox
				
			break;
			
			case "player":
				speaker_spr[page_number] = sPortraitPlayer
				text_box_spr[page_number] = sPlayerTextBox
				speaker_side[page_number] = -1
		}
	}
	
	if argument_count > 3 {
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
		scr_text("Dobry den", "npc", _npc_id) // prvni parametr = text, durhy parametr = kdo to rika
		
			scr_option("V lihu", "npc1 - 1") // prvni parametr = text, druhy parametr = link k dalsimu dialogu
			scr_automate_options()
			
			break;
				case "npc1 - 1":	
					scr_text("Dneska budete v lihu jo?", "player")
					scr_text("Prokoukl jste me", "npc", _npc_id)
					
					scr_option("Tak vas poprosim " + string(_npc_id.total_spend), "npc1 - 1 - sell")
					scr_automate_options()
				break;
			
					case "npc1 - 1 - sell":
						scr_text("Tak vas poprosim o... " + string(_npc_id.total_spend) , "player")
						scr_text("Hotove", "npc", _npc_id)
						scr_option("Prodat", "sell")

						break; 
			
						
		case "npc2":
			scr_text("Dobrej, dneska na sekeru nebo mate penize?", "player")
			scr_text("Dneska prisel duchod pane vrchni", "npc", _npc_id)
			
			scr_option("No vidite", "npc2 - 1")
			scr_automate_options()
			break;
			
				case "npc2 - 1":
				scr_text("No vidite, tak snad i zaplatite to co dluzite", "player")
				scr_text(".........", "npc", _npc_id)
			
				scr_option("Achjo", "npc2 - 1 - sell")
				scr_automate_options()
				break;
			
					case "npc2 - 1 - sell":
					scr_text("Achjoo.. Tak to zkusime priste ted mi dejte aspon tech " + string(_npc_id.total_spend), "player")
					scr_text("Kartou poprosim", "npc", _npc_id)
					scr_option("Prodat", "sell")
					break;
		
		case "npc3":
			scr_text("*zira jakoby tyden nespal, pachne po chlastu*", "npc", _npc_id)
			scr_text("Pane?.. jste v pohode", "player")
			scr_text("*predlozi kartu*", "npc", _npc_id)
			
			scr_option("Prodat", "sell")
			break;
			
		case "npc4":
			scr_text("Zajimavy vyber.", "player")
			scr_text("No ze by jste toho mel na vyber hodne se rici neda", "npc", _npc_id)
			
			scr_option("Tak nakupujte", "npc4 - 1")
			scr_automate_options()
			break;
			
				case "npc4 - 1":
				scr_text("Kdyz sem budete chodit casteji, treba toho budu moct nakoupit vetsi vyber", "player")
				scr_text("Vy jste nejak chytrej", "npc", _npc_id)
				
				scr_automate_options()
				break;
				
		case "facka":
			scr_text("Nesahejte mi pod sukni uchyle  *dala ti facku*", "npc", _npc_id)
			break;
		
		case "cumis":
			scr_text("Na co cumis", "npc", _npc_id)
			break;
			
		case "obcanka":
			scr_text("Poprosim vas ukazat obcansy prukaz", "player")
			scr_text("tady ho mate", "npc", _npc_id)
			oDialog.alarm[1] = 30
			scr_option("Deda", "deda")
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
	scr_option("Ukazte obcanku", "obcanka")
	scr_option("Prodat", "sell")
}

function create_textbox(_text_id, _npc_id, _small_talk) { // vytvoreni dialogu s textem
	with (instance_create_depth(0, 0, -9999, oDialog)) {
		oDialog.npc_id = _npc_id
		if(_small_talk) {
			oDialog.small_talk = true
		}
		scr_game_text(_text_id, _npc_id)
	}
}
