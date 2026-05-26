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

global.music_volume = 4
global.sound_volume = 8