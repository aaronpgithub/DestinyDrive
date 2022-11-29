event_inherited()

ds_list_add(global.item_add, item_chose)

ds_list_add(global.items, item_chose)

    if !ds_map_exists(global.item_map, "pickaxe")
    {
        if global.wave = global.wave_max
        {
        global.wave += 1
        }
    }
    else
    {
        if global.wave = global.wave_max
        {
        boss_spawn()
        }
    }
    
    ds_list_delete(global.item_pool, ds_list_find_index(global.item_pool, item_chose))

