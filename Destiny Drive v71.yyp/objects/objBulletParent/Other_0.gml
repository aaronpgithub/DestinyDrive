if ds_map_exists(global.item_map, "wrap") or ds_map_exists(global.item_map, "rev_warp") 
{
    if wrap > 0
    {
    wrap -= 1
    move_wrap(true, true, 0)
    }
}

