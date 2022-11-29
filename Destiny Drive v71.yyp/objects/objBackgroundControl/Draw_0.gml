
if draw_background = true {
	if room = rmGame or room = rmPractice {
		var scrpt = asset_get_index("scr_" + string(global.current_level) + "_dec");
	
		if script_exists(scrpt) {
			script_execute(scrpt)
		}
	} else {
		if instance_exists(objMenuControl) {
			script_execute(asset_get_index("scr_" + string(objMenuControl.level_decal) + "_dec"))
		}
	}
}