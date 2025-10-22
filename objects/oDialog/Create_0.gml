text_boxw = 420 //sirka textboxu
text_boxh = 64 // vyska textboxu

border = 8 // vzdalenost zdi od textu
line_sep = 12 //
line_width = text_boxw - border * 2
text_box_spr[0] = 0
text_box_img = 0
text_box_img_speed = 6/60
show_after = false


page = 0 //urcuje cislo dialogu
page_number = 0 //urcuje page
text[0] = "" // zde se uklada string dialogu
text_length[0] = string_length(text[0]) //kolik znaku je v stringu 
draw_char = 0 // znak ktery kreslime
text_speed = 1 // rychlost kterou vypisujeme znaky

/*char[0, 0] = ""
char_x[0,0] = 0
char_y[0,0] = 08*/

/*sound_delay = 4
sound_count = sound_delay*/

option[0] = "" //zde se uklada string moznosti
optinon_link_id[0] = -1 //link k dalsimu dialogu
option_pos = 0 //urcuuje vybranou moznost
option_number = 0 //urcuje option[]

text_pause_time = 16
text_pause_timer = 0

setup = false 

scr_set_default_for_text()
//last_free_space = 0