if ds_map_exists(global.item_map, "fools_token") exit;

if x <= room_width / 2 and !instance_exists(objShop)
{
    with(objItem)
    {
    instance_destroy()
    }
}

