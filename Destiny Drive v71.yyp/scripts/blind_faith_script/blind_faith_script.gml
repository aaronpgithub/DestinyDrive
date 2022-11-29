function blind_faith_script() {
	if ds_map_exists(global.item_map, "blind_faith") {
		global.use_itm[0] = irandom(sprite_get_number(sprUseItem) - 1)
		use_item_check(0, 1, 2)
	
		global.use_itm[1] = 0
	
		if global.player = sprPlayerAlien {
			use_item_check(3, 4, 5)
			global.use_itm[3] = irandom(sprite_get_number(sprUseItem) - 1)
			global.use_itm[3] = 0
		}
	}


}
