 inputKey = keyboard_check_pressed(vk_space)

textbox_x = camera_get_view_x(view_camera[0]) // x pozice text boxu
textbox_y = camera_get_view_y(view_camera[0]) + 290 //y pozice text boxu


if (setup == false) {
	setup = true
	draw_set_font(global.font_main)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
	for(var p = 0; p < page_number; p++) {
		text_length[p] = string_length(text[p]) // zjistime kolik znaku je v kazde page a ulozime si to do text_length pole
		
		//kdyz mluvi npc
		text_box_x_offset[p] = 80 // vzdalenost text boxu od leve zdi
		potrait_x_offset[p] = 10 // vzdalenost text boxu pro portret od leve zdi
		text_boxw[p] = 420 // sirka text boxu 
		
		//kdyz mluvi hrac
		if (speaker_side[p] == -1) {
			text_box_x_offset[p] = 10 // vzdalenost text boxu od leve zdi
			potrait_x_offset[p] = 567 // vzdalenost text boxu pro portret od leve zdi
			text_boxw[p] = 550 // sirka text boxu
		} 
		
	}
}


if (text_pause_timer <= 0) {
	if (draw_char < text_length[page])// pokud jsme jeste nedokoncili vetu 
	{
		draw_char += text_speed
		draw_char = clamp(draw_char, 0, text_length[page])	// draw_char nemuze byt nizsi nez nula a vyssi jak delka vety
	
		var check_char = string_char_at(text[page], draw_char) // zjistime jaky znak vypisujem
		if (check_char == "." || check_char == "?" || check_char == "," || check_char == "!"  ) {
			text_pause_timer = text_pause_time // pokud je aktualni znak je .?,! nastavi se casomira pro efekt zpomaleni
		}
		
		/* else {
			if (sound_count < sound_delay){
				sound_count++
			} xelse {
				sound_count = 0 
				audio_play_sound(voice_sound[page], 8, false)
			}
		} */
	} 
	
	
} else {
		text_pause_timer-- // odebirame casomiru aby se zase vypisoval text
	}

if (inputKey) {
	
	if (draw_char == text_length[page]){// pokud jsme na konci vety
		if(page  < page_number - 1) {// pokud dialog neni dokoncen
			page++ // posuneme stranku dialogu
			draw_char = 0 // zaciname od 0teho znaku
		}
		
		else { // dialog skoncil takze vypiseme moznosti
			
			if(option_number > 0) { // pokud vubec nejake moznosti jsou
				create_textbox(option_link_id[option_pos])// vytvorime je
			}
			 /*else if (show_after){
				scr_nevim()
				
			 }*/
			instance_destroy() // pokud dialog skoncil znicime oDialog
			
		}
	} else {
		draw_char = text_length[page] // pokud nejsme na konci vety preskocime a na konec vety
	}
	
}




//text_box_img += text_box_img_speed
text_box_spr_w = sprite_get_width(text_box_spr[page]) // zjistime sirku spritu textBoxu
text_box_spr_h  = sprite_get_height(text_box_spr[page])// zjistime vysku spritu textBoxu

if (speaker_spr[page] != noone) { // pokud nekdo mluvi
	if (draw_char == text_length[page]) {image_index = 0} // pokud domluvil zastavi se mu pusa (bud udelam animaci nebo toto smazu)
	sprite_index = speaker_spr[page]
	var speaker_x = textbox_x + potrait_x_offset[page] // x pozice portretu pro npc
	if (speaker_side[page] == -1) {
		speaker_x += sprite_width // x pozice portretu pro hrace
	}
	draw_sprite_ext(text_box_spr[page], text_box_img, textbox_x + potrait_x_offset[page], textbox_y, sprite_width/text_box_spr_w, sprite_height/text_box_spr_h, 0, c_white, 1) // vykreslime box kde je portret
	draw_sprite_ext(sprite_index, image_index, speaker_x, textbox_y + 6, speaker_side[page], 1, 0 ,c_white, 1) //vykreslime portret
}

draw_sprite_ext(text_box_spr[page], text_box_img, textbox_x + text_box_x_offset[page], textbox_y, text_boxw[page]/text_box_spr_w, text_boxh/text_box_spr_h, 0, c_white, 1 ) // vzkreslime box pro dialog

if (draw_char == text_length[page] && page == page_number - 1) { // pokud jsme dopsali dialog
	
	
	option_pos += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W")) // vyber mezi moznostmi
	option_pos = clamp(option_pos, 0, option_number-1) // moznost nemuze byt mensi nez nula a vetsi nez pocet moznosti
	
	
	var op_space = 15 // vyska moznosti
	var space_btw_op = 25 // vertikalni misto mezi moznostmi
	var op_border = 4 // vzdalenost zdi od textu

	var op_x_offset = text_boxw[page] + text_box_x_offset[page] + 6 // jak daleko je moznost od leve zdi
	for(var op = 0; op < option_number; op++) {
		
		var o_width = 120 // sirka moznosti
		

		draw_sprite_ext(sPlayerTextBox, text_box_img, op_x_offset ,textbox_y + (op *space_btw_op) , o_width/text_box_spr_w, (op_space-1)/text_box_spr_h, 0, c_white, 1) // textbox pro moznost
		
		if (option_pos == op) { //pokud uzivatel vybere moznost zvyraznime ji
			draw_sprite_ext(sOptionSelectedBox, text_box_img, op_x_offset, textbox_y + (op *space_btw_op), o_width/text_box_spr_w, (op_space-1)/text_box_spr_h, 0, c_white, 1)
		}
		
		draw_text(op_x_offset + op_border ,textbox_y + (op *space_btw_op) + 1, option[op]) // vypiseme text do text boxu pro moznost
	}
}
/*for (var c = 0; c < draw_char; c++) {
	draw_text(char_x[c, page], char_y[c, page], char[c, page])
} *//////

var drawText = string_copy(text[page], 1, draw_char) // zjistime co vipisujeme za text
draw_text_ext( textbox_x + text_box_x_offset[page] + border,  textbox_y + border, drawText, line_sep, line_width) // vypiseme dvetu
