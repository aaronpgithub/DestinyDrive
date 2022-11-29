event_inherited()

if global.use_itm[0] = image_index
{
    if instance_exists(objShop)
    {
        with(instance_nearest(x, y + 70, objBuyButton))
        {
        buy_id = irandom(objUseItem.image_number)
        }
    image_index = instance_nearest(x, y + 70, objBuyButton).buy_id
    }
    else
    {
    image_index = irandom(objUseItem.image_number)
    }
}

