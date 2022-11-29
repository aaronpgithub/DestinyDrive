function wave_item_on_reset() {
	//resetting wave items, for redo

	if instance_exists(objDemonGiftControl) {
		global.alt_dmg -= 0.2
		with(objDemonGiftControl) instance_destroy()
	}

	if ds_map_exists(global.item_map, "morphine") {
		ds_map_replace(global.item_map, "morphine", 0)
	}

	if instance_exists(objLilPuffer)
	{
	    with(objLilPuffer)
	    {
	        visible = true
	        bullets_ate = 15
	    }
	}

	if ds_map_exists(global.item_map, "ruby_ring")
	{
	global.dmg -= ds_map_find_value(global.item_map, "ruby_ring")
	ds_map_replace(global.item_map, "ruby_ring", 0)
	}

		if ds_map_exists(global.item_map, "aimbot")
		{
		ds_map_delete(global.item_map, "aimbot")
		}

	if ds_map_exists(global.item_map, "cigar")
	{
	ds_map_replace(global.item_map, "cigar", 1)
	}

		if ds_map_exists(global.item_map, "heart_ice")
		{
		    if ds_map_find_value(global.item_map, "heart_ice") = 0
		    {
		    ds_map_replace(global.item_map, "heart_ice", 1)
		    global.enemy_spd += 0.2
		    }
		}

	if ds_map_exists(global.item_map, "ess_exci")
	{
	objPlayer.alarm[0] = 1
	objPlayer.reload = 15
	}

	if instance_exists(objVenomsKiss)
	{
	    with(objVenomsKiss)
	    {
	    x_pos = -325
	    }
	}

	with(objPlayer) {
		tempo_damage = 100
	}


}
