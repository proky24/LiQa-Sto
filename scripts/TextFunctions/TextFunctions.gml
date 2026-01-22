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
function scr_text(_text, speaker, _npc_id) {// ulozime text do text[page_number]   
	
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
				break;
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
function scr_game_text(_text_id, _npc_id) {        
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
			
		case "thief":
			scr_text("A mam te ty zlodejicku, ted mi to hezky vsechno vratis nebo volam policii!!", "player")
			scr_text("Ne prosim jenom policii ne", "npc", _npc_id)
			
			scr_option("Zaplat mi", "thief - pay")
			scr_option("Vrat mi to", "thief - back")
			break;	
		
		case "thief - pay":
			scr_text("Budes to mit hezky s urokem", "player")

			var rnd = irandom(1)
			if (rnd == 1) {
				scr_text("Omlouvam se, prosim promin te mi", "npc", _npc_id)
				
				scr_option("Vzit si penize", "thief - pay - 1")
			} else {
				scr_text("Nemam u sebe ani zvaru proto asi kradu ne", "npc", _npc_id)
				scr_text("No tak navratil a delej !", "player")
				scr_text("Omlouvam se, uz to nikdy neudelam", "npc", _npc_id)
				
				scr_option("Vzit si produkt", "thief - back - 1")
			}
			break;
			
		case "thief - back":
			scr_text("No tak navratil a delej !", "player")
			scr_text("Omlouvam se, uz to nikdy neudelam", "npc", _npc_id)
				
			scr_option("Vzit si produkt", "thief - back - 1")
			
			break;
		
		case "thief - pay - 1":
			instance_destroy(oDialog)
			
			oShopManager.money += _npc_id.total_spend + (_npc_id.total_spend * 1.4)
			
			_npc_id.total_spend = 0
			_npc_id.move_speed = 1.2
			_npc_id.alarm[2] = 1
			
			break;
			
		case "thief - back - 1":
			instance_destroy(oDialog)
			
			oPlayer.invetory = _npc_id.waypoints[0].id
			
			_npc_id.total_spend = 0
			_npc_id.move_speed = 1.2
			_npc_id.alarm[2] = 1
			
			break;
		
		case "cumis":
			scr_text("Na co cumis", "npc", _npc_id)
			break;
			
		case "id":
			scr_text("Poprosim vas ukazat obcansy prukaz", "player")
			scr_text("tady ho mate", "npc", _npc_id)
			oDialog.alarm[1] = 5
			
			scr_option("V poradku", "id - 1")
			scr_option("V neporadku", "id - 0")
			break;
					
		case "id - 1":
		instance_destroy(oNpcId)
			scr_text("Vse se zda byti v poradku", "player")
			scr_text("Jsem cestny obcan", "npc", _npc_id)
			
			scr_option("blablabla", "blablabla")
			scr_option("Prodat", "sell")	
			break;
			
		case "id - 0":
			instance_destroy(oNpcId)
			scr_text("Tady mi neco nehraje", "player")
			scr_text("Tak snad se nejak domluvime", "npc", _npc_id)
			
			scr_option("Uplatek", "bribe - 1")
			scr_option("Zapomen", "bribe - !")
			scr_option("Prodat", "id - 2")
			break;
			
		case "id - 2":
			scr_text("Dneska mam dobrou naladu.. mas to mit", "player")
			scr_text("Dekuju! dekuju moc!", "npc", _npc_id)
			
			scr_option("Prodat", "sell")
			//oDialog.alarm[2] = 300
			break;
		
		case "bribe - !":
			scr_text("Zapomen, chces aby mi to tu zavreli?", "player")
			scr_text("Ne, ja, eeh, to ne-", "npc", _npc_id)
			scr_text("Prestan koktat a okamzite bez vratit ten chlast a jdi pryc!", "player")
			scr_text("*smutne kouka*", "npc", _npc_id)
			
			scr_option("NE!", "bribe - !!")
			scr_option("No tak jo", "bribe - ! - 1")
			break;
			
		case "bribe - !!":
			scr_text("NE! Rekl jsem ne, okamzite vrat ty veci a vypadni", "player")
			/*npc_id.total_spend = 0
			npc_id.waypoints[0].alarm[10] = 180
			if (npc_id.two_products){
				npc_id.waypoints[1].alarm[10] = 180
			}
			npc_id.can_buy = false
			npc_id.is_waiting = false *///reseni ze se sami produktu doplni 
			
			_npc_id.alarm[5] = 1
			
			break;
		
		case "sell":
			instance_destroy(oDialog)
			
			_npc_id.can_buy = false
			_npc_id.is_waiting = false
			
			
			add_money_rep(_npc_id)
			
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
	scr_option("Ukazte obcanku", "id")
	scr_option("Prodat", "sell")
}

function create_textbox(_text_id, _npc_id) { // vytvoreni dialogu s textem
	with (instance_create_depth(0, 0, -9999, oDialog)) {
		oDialog.npc_id = _npc_id
		/*if(_small_talk) {
			oDialog.small_talk = true
		}*/
		scr_game_text(_text_id, _npc_id)
	}
}
