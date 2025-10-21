text_boxw = 420
text_boxh = 64

border = 8 //vzdalenost zdi od textu
line_sep = 12 
line_width = text_boxw - border * 2
text_box_spr[0] = 0
text_box_img = 0
text_box_img_speed = 6/60
show_after = false


page = 0 //urcuje cislo dialogu
page_number = 0 //urcuje page
text[0] = ""
text_length[0] = string_length(text[0]) //kolik znaku je v stringu 
draw_char = 0
text_speed = 1
char[0, 0] = ""
char_x[0,0] = 0
char_y[0,0] = 0

/*sound_delay = 4
sound_count = sound_delay*/

option[0] = ""
optinon_link_id[0] = -1
option_pos = 0
option_number = 0

text_pause_time = 16
text_pause_timer = 0

setup = false

scr_set_default_for_text()
last_free_space = 0