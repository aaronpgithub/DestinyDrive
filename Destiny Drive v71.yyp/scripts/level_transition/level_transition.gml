function level_transition() {
		global.current_level = global.level

	    with(objBackgroundControl) {
			spawn = true
		}
        
	        weapon_pools() //call the new weapon list
        
	        if ds_map_exists(global.item_map, "pickaxe")
	        {
	        ds_map_replace(global.item_map, "pickaxe", 1)
	        }



}
