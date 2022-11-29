if mimic = false
{
    if ds_map_exists(global.item_map, "pickaxe")  
    {
    if !instance_exists(objBossParent) and global.wave >= global.wave_max boss_spawn()
    }
	
	if !instance_exists(objBuyButton) and image_index != 91
	{
		if !ds_map_exists(global.item_map, "entp_medal")
		{
	        item_collected(image_index)
		}
		else
		{
			ds_list_delete(global.item_pool, ds_map_find_value(global.item_map, "entp_medal"))
		}
	}
}



