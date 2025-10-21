 inputKey = keyboard_check_pressed(vk_space)

textbox_x = camera_get_view_x(view_camera[0])
textbox_y = camera_get_view_y(view_camera[0]) + 290


if (setup == false) {
	setup = true
	draw_set_font(global.font_main)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
	for(var p = 0; p < page_number; p++) {
		text_length[p] = string_length(text[p]) //zjistime kolik znaku je v kazde page a ulozime si to do text_length pole
		
		//character_left
		text_box_x_offset[p] = 80
		potrait_x_offset[p] = 10
		text_boxw[p] = 420
		
		//character_right
		if (speaker_side[p] == -1) {
			text_box_x_offset[p] = 10 //140
			potrait_x_offset[p] = 567
			text_boxw[p] = 550
		} 
		
		if(speaker_spr[p] == noone) {
			text_box_x_offset[p] = 44 //x pozzice textboxu 
		}
	}
}


if (text_pause_timer <= 0) {
	if (draw_char < text_length[page]) {
		draw_char += text_speed
		draw_char = clamp(draw_char, 0, text_length[page])	
	
		var check_char = string_char_at(text[page], draw_char) 
		if (check_char == "." || check_char == "?" || check_char == "," || check_char == "!"  ) {
			text_pause_timer = text_pause_time 
		}/* else {
			if (sound_count < sound_delay){
				sound_count++
			} xelse {
				sound_count = 0 
				audio_play_sound(voice_sound[page], 8, false)
			}
		} */
	} 
	
	
} else {
		text_pause_timer--
	}

if (inputKey) {
	
	if (draw_char == text_length[page]){
		if(page  < page_number - 1) {
			page++ 
			draw_char = 0
		}
		
		else {
			
			if(option_number > 0) {
				create_textbox(option_link_id[option_pos])
			}
			 /*else if (show_after){
				scr_nevim()
				
			 }*/
			instance_destroy()
			
		}
	} else {
		draw_char = text_length[page]
	}
	
}




text_box_img += text_box_img_speed
text_box_spr_w = sprite_get_width(text_box_spr[page])
text_box_spr_h  = sprite_get_height(text_box_spr[page])

if (speaker_spr[page] != noone) {
	if (draw_char == text_length[page]) {image_index = 0}
	sprite_index = speaker_spr[page]
	var speaker_x = textbox_x + potrait_x_offset[page]
	if (speaker_side[page] == -1) {
		speaker_x += sprite_width
	}
	draw_sprite_ext(text_box_spr[page], text_box_img, textbox_x + potrait_x_offset[page], textbox_y, sprite_width/text_box_spr_w, sprite_height/text_box_spr_h, 0, c_white, 1) //boxu kde je portret
	draw_sprite_ext(sprite_index, image_index, speaker_x, textbox_y + 6, speaker_side[page], 1, 0 ,c_white, 1) //portret
}

draw_sprite_ext(text_box_spr[page], text_box_img, textbox_x + text_box_x_offset[page], textbox_y, text_boxw[page]/text_box_spr_w, text_boxh/text_box_spr_h, 0, c_white, 1 )

if (draw_char == text_length[page] && page == page_number - 1) {
	
	
	option_pos += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
	option_pos = clamp(option_pos, 0, option_number-1)
	
	
	var op_space = 15
	var space_btw_op = 25
	var op_border = 4

	var op_x_offset = text_boxw[page] + text_box_x_offset[page] + 6
	for(var op = 0; op < option_number; op++) {
		
		var o_width = 120
		

		draw_sprite_ext(sPlayerTextBox, text_box_img, op_x_offset ,textbox_y + (op *space_btw_op) , o_width/text_box_spr_w, (op_space-1)/text_box_spr_h, 0, c_white, 1)
		
		if (option_pos == op) {
			draw_sprite_ext(sOptionSelectedBox, text_box_img, op_x_offset, textbox_y + (op *space_btw_op), o_width/text_box_spr_w, (op_space-1)/text_box_spr_h, 0, c_white, 1)
		}
		
		draw_text(op_x_offset + op_border ,textbox_y + (op *space_btw_op) + 1, option[op])
	}
}
/*for (var c = 0; c < draw_char; c++) {
	draw_text(char_x[c, page], char_y[c, page], char[c, page])
} *//////

var drawText = string_copy(text[page], 1, draw_char)
draw_text_ext( textbox_x + text_box_x_offset[page] + border,  textbox_y + border, drawText, line_sep, line_width)
