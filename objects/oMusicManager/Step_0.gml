if (song_asset != target_song_asset) {
	//predchozi song fade out
	if (audio_is_playing(song_inst)) {
		array_push(fade_out_insts, song_inst)
		array_push(fade_out_inst_vol, fade_in_inst_vol)
		array_push(fade_out_inst_time, end_fade_out)
		
		song_inst = noone
		song_asset = noone
	}
	
	if (array_length(fade_out_insts) == 0) {
		if(audio_exists(target_song_asset)) {
			song_inst = audio_play_sound(target_song_asset, 4, true)
			
			audio_sound_gain(song_inst, 0, 0)
			fade_in_inst_vol = 0
		}
		song_asset = target_song_asset
	}
}

//fade music in
if (audio_is_playing(song_inst)) {
	if (start_fade_in > 0) {
		if (fade_in_inst_vol < 1) {fade_in_inst_vol += 1/start_fade_in} else {fade_in_inst_vol = 1}
	} else {
		fade_in_inst_vol = 1
	}
	
	audio_sound_gain(song_inst, global.music_volume/10, 0)
}

//fade music out
for (var p = 0; p < array_length(fade_out_insts); p++) {
	if (fade_out_inst_time[p] > 0) {
		if (fade_out_inst_vol[p] > 0) {fade_out_inst_vol[p] -= 1/fade_out_inst_time[p]}
	} else {
		fade_out_inst_vol[p] = 0
	}
	
	audio_sound_gain(fade_out_insts[p], fade_out_inst_vol[p], 0)
	
	if (fade_out_inst_vol[p] <= 0) {
		if (audio_is_playing(fade_out_insts[p])) {audio_stop_sound(fade_out_insts[p])}
		
		array_delete(fade_out_insts, p, 1)
		array_delete(fade_out_inst_vol, p, 1)
		array_delete(fade_out_inst_time, p, 1)
		
		p--
	}
}