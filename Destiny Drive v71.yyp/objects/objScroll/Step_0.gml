event_inherited()

var l;

for(l = ds_list_size(global.scroll_list); l >= 0; l -= 1)
{
    if ds_list_find_value(global.scroll_list, l) = image_index
    {
        if instance_exists(objShop)
        {
            with(instance_find(objBuyButton, 3))
            {
            buy_id = irandom(objScroll.image_number)
            }
        image_index = instance_find(objBuyButton, 3).buy_id
        }
        else
        {
        image_index = irandom(image_number)
        buy_id = image_index
        }
    }
}

