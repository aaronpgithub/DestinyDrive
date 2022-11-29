/// @description Buy Type

switch(buy_type)
    {
    //Case 0 is for items
    case 0:
        if item_type = objItem
        {
            if !ds_map_exists(global.item_map, "entp_medal")
            {
            buy_id = ds_list_find_value(global.item_pool, 0)
            }
            else
            {
                if ds_map_find_value(global.item_map, "entp_medal") = 0
                {
                buy_id = ds_list_find_value(global.item_pool, 1)
                }
                else
                {
                buy_id = ds_list_find_value(global.item_pool, 0)
                }
            }
        }
        else
        {
        buy_id = floor(random(sprite_get_number(sprUseItem) - 1))
        }
    break;
    
    //Case 1 is for weapons
    case 1:
        buy_id = ds_list_find_value(global.weapon_pool, irandom( ds_list_size(global.weapon_pool) - 1 ) )
    break;
    }

