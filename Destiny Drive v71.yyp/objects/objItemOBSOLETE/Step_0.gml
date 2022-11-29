event_inherited()

with(objEnemyBulletParent)
{
instance_destroy()
}

    if global.items_got < 0 and !instance_exists(objShop) instance_destroy()
    
if mimic = true
{
    if mimic_frame > -1
    {
    mimic_frame += 0.2
    }
    
    if mimic_frame > sprite_get_number(sprMimicLick) - 1
    {
    mimic_frame = -1
    }
}


    if instance_exists(objItem) and !instance_exists(objShop)
    {
        if instance_number(objItem) > 1
        {
            for(var uil = 0; uil < instance_number(objItem); uil++)
            {
                if instance_find(objItem, uil).image_index = image_index
                {
                    if id < instance_find(objItem, uil).id
                    {
                        image_index = ds_list_find_value(global.item_pool, ds_list_find_index(global.item_pool, image_index) + 1)
                    }
                }
            }
        }
    }

    

var l;


for(l = ds_list_size(global.items); l >= 0; l -= 1)
{
    if ds_list_find_value(global.items, l) = image_index //If the item is already picked up by player, this script changes that
    {
        if instance_exists(objShop)
        {
            with(instance_nearest(x, y + 70, objBuyButton))
            {
                if buy_type = objItem
                {
                buy_id = irandom(objItem.image_number - 1)
                }
                
                if buy_type = objUseItem
                {
                buy_id = irandom(objUseItem.image_number - 1)
                }
            }
        image_index = instance_nearest(x, y + 70, objBuyButton).buy_id
        }
        else
        {
        image_index = irandom(image_number - 1)
        buy_id = image_index
        }
    }
}
///////////////////////////////////////

if instance_exists(objShop)
{
    if instance_nearest(x, y + 70, objBuyButton).buy_id = instance_find(objBuyButton, 0).buy_id
    {
        if instance_nearest(x, y + 70, objBuyButton).x != instance_find(objBuyButton, 0).x and instance_find(objBuyButton, 1).buy_type = instance_find(objBuyButton, 0).buy_type
        {
            with(instance_nearest(x, y + 70, objBuyButton))
            {
                if buy_type = objItem
                {
                buy_id = irandom(objItem.image_number - 1)
                }
                
                if buy_type = objUseItem
                {
                buy_id = irandom(objUseItem.image_number - 1)
                }
            }
        image_index = instance_nearest(x, y + 70, objBuyButton).buy_id
        }
    }
}

buy_id = image_index


var playcoly2 = collision_circle(x, y + 40, 32, objPlayer, true, true)
if !instance_exists(objShop) and playcoly2 != noone
{
item_string()
}

