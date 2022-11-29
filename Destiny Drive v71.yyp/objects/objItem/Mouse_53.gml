var playcoly = collision_circle(collision_x, collision_y, collision_radius, objPlayer, true, true)



if !instance_exists(objShop) and playcoly != noone and x <= stopping_point
{
    if mimic = false
    {
    ds_list_add(global.item_add, image_index)
    button_script(image_index)
    
        with(objItem)
        {
        instance_destroy()
        }
    }
    else
    {
    globalvar miminstimin; //(mimic instance image index)
    var miminst = instance_create(x, y, objMimic)
    
    miminstimin = image_index
    
        with(miminst)
        {
        item_chose = miminstimin
        }
        
    instance_destroy()
    }
}

