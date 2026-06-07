song_inst = noone
song_asset = noone
target_song_asset = noone

end_fade_out = 0
start_fade_in = 0
fade_in_inst_vol = 1

fade_out_insts = array_create(0)
fade_out_inst_vol = array_create(0)
fade_out_inst_time = array_create(0)



audio_group_load(audiogroup_default)
audio_group_load(group_sfx)

if file_exists("savedAudio.txt") {
		var file = file_text_open_read("savedAudio.txt")
		var _json = file_text_read_string(file)
		
		var _audio_vol = json_parse(_json)
		
		oMusicManager.audio_vol[0] = _audio_vol[0]
		oMusicManager.audio_vol[1] = _audio_vol[1]
		
		file_text_close(file)
} else {
	audio_vol = [40, 80]
}

global.music_volume = audio_vol[0]
global.sound_volume = audio_vol[1]