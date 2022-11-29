if mimic = false
{
    if ds_map_exists(global.item_map, "pickaxe")  
    {
    if !instance_exists(objBossParent) and global.wave >= global.wave_max boss_spawn()
    }

        //Entrepeneur
        if !instance_exists(objBuyButton) and image_index != 91
        {
            if !ds_map_exists(global.item_map, "entp_medal")
            {
            ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, image_index))
            }
            else
            {
            ds_list_delete(global.item_pool, ds_map_find_value(global.item_map, "entp_medal"))
            }
        }
        /////////////////////
        
        ds_list_shuffle(global.item_pool) //SHUFFLING THE ITEM POOL
}



