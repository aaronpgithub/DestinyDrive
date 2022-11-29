event_inherited()

weapon = image_index

buy_id = image_index

if instance_exists(objShop)
{
    if weapon = objPlayer.weapon or weapon = objPlayer.weapon2
    {
        with(instance_find(objBuyButton, 1))
        {
            buy_id = ds_list_find_value(global.weapon_pool, irandom( ds_list_size(global.weapon_pool) - 1 ) )
        }
        
    image_index = instance_find(objBuyButton, 1).buy_id
    }
}
else
{
    if weapon = objPlayer.weapon or weapon = objPlayer.weapon2
    {
            image_index = ds_list_find_value(global.weapon_pool, irandom( ds_list_size(global.weapon_pool) - 1 ) )
    }
}

