function item_spawn() {
	var item_amount = 3;

	if ds_map_exists(global.item_map, "trash_bag") item_amount--
	if ds_map_exists(global.item_map, "shris_treasure") item_amount++
	if ds_map_exists(global.item_map, "deaths_cup") {
		item_amount += ds_map_find_value(global.item_map, "deaths_cup")
		ds_map_replace(global.item_map, "deaths_cup", 0)
	}

	if ds_map_exists(global.item_map, "fools_token") item_amount = 1

	if item_amount > 10 item_amount = 10

	var xposition = 80, yposition = 84, position_add = 160 / (clamp(item_amount, 0, 5) - 1), item_idv = 0;

	repeat(item_amount) {
		var itemadd = instance_create(330, yposition, objItem)
	
		globalvar xstp, my_item_id;
		xstp = xposition
		my_item_id = item_idv
	
		with(itemadd) {
			item_id = my_item_id
			stopping_point = xstp
		
		    if !ds_map_exists(global.item_map, "entp_medal")
		    {
		    image_index = ds_list_find_value(shop_item_pool, item_id)
		
			if global.wave >= global.wave_max - 1 image_index = ds_list_find_value(boss_item_pool, item_id)
		    }
		    else
		    {
		    image_index = ds_map_find_value(global.item_map, "entp_medal")
		    ds_map_delete(global.item_map, "entp_medal")
		    }
		}
	
		xposition += position_add
	
		item_idv++
	
		if xposition > 240 {
			position_add = 160 / (item_amount - 1 - item_idv)
			xposition = 80
			yposition += 84
		}
	}


}
