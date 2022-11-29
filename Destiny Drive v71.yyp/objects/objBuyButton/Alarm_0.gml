/// @description Buy Type

	switch(buy_type)
    {
    //Case 0 is for items
    case 0:
            buy_id = ds_list_find_value(shop_item_pool, 0 + buy_offset)
			
                if ds_map_find_value(global.item_map, "entp_medal") = buy_id {
					buy_id = ds_list_find_value(shop_item_pool, ds_list_size(shop_item_pool) - 1 - buy_offset)
				}
				
			if ds_map_find_value(global.item_map, "fools_token") = 1 {
				free = true
				ds_map_replace(global.item_map, "fools_token", 0)
			}
    break;
    
    //Case 1 is for use items
    case 1:
        buy_id = floor(random(sprite_get_number(sprUseItem) - 1))
		
		if ds_map_find_value(global.item_map, "fools_token") = 1 {
			free = true
			ds_map_replace(global.item_map, "fools_token", 0)
		}
    break;
    }

	if ds_map_exists(global.item_map, "relic_crim") and buy_type != 3
	{
		var mon_chn = random(1);
    
		if mon_chn >= 0.5
		{
		free = true
		}
	}