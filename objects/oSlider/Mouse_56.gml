
being_dragged = false

switch (setting) {
	case "hudby":
		global.music_volume = amount_current
	
		audio_group_set_gain(audiogroup_default, amount_current / 100, 0)
	break;
	
	case "sfx":
		global.sound_volume = amount_current
	
		audio_group_set_gain(group_sfx, amount_current / 100, 0)
	break;
}