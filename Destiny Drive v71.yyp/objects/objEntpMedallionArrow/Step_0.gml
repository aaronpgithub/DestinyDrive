if objEntpMedallionControl.itm >= ds_list_size(global.item_pool) - 1
{
    if x > room_width / 2
    {
    image_alpha = 0
    }
}
else
{
    if x > room_width / 2
    {
    image_alpha = 1
    }
}

if objEntpMedallionControl.itm <= 0
{
    if x < room_width / 2
    {
    image_alpha = 0
    }
}
else
{
    if x < room_width / 2
    {
    image_alpha = 1
    }
}

