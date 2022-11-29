function wave_create() {
	if global.wave = objGameControl.vip_shop exit;

	var wave_config, n, e, s, w, mh, mv;

	var spots_taken = ds_list_create()

	//mh and mv are middle horizontal and middle vertical
	//all the cardinal directions
	n = 112
	mv = 168
	s = 224
	w = 184
	mh = 236
	e = 288
	//

	repeat(objGameControl.wave_array[global.wave, 0]) {
		do {
			var found_spot = false
			var horz_spot = horizontal_spot("s"), vert_spot = vertical_spot("s");
	
			if ds_list_find_index(spots_taken, string(horz_spot) + string(vert_spot)) = -1 {
				instance_create(horz_spot, vert_spot, objWeakSpawn)
				ds_list_add(spots_taken, string(horz_spot) + string(vert_spot))
				found_spot = true
			}
		} until(found_spot = true)
	}

	repeat(objGameControl.wave_array[global.wave, 1]) {
		do {
				var found_spot = false
			var horz_spot = horizontal_spot("m"), vert_spot = vertical_spot("m");
	
			if ds_list_find_index(spots_taken, string(horz_spot) + string(vert_spot)) = -1 {
				instance_create(horz_spot, vert_spot, objMediumSpawn)
				ds_list_add(spots_taken, string(horz_spot) + string(vert_spot))
				found_spot = true
			}
		} until(found_spot = true)
	}

	repeat(objGameControl.wave_array[global.wave, 2]) {
		do {
				var found_spot = false
			var horz_spot = horizontal_spot("l"), vert_spot = vertical_spot("l");
	
			if ds_list_find_index(spots_taken, string(horz_spot) + string(vert_spot)) = -1 {
				instance_create(horz_spot, vert_spot, objLargeSpawn)
				ds_list_add(spots_taken, string(horz_spot) + string(vert_spot))
				found_spot = true
			}
		} until(found_spot = true)
	}

	ds_list_destroy(spots_taken)


}
