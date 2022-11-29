var col, inst;

col = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, objPlayer, false, true)

if objShop.x <= room_width / 2 and create = true
{
    if image_index = 0
    {
        if buy_type = 0
        {
            inst = instance_create(x, y - 70, item_type)
            
            with(inst)
            {
            image_index = instance_nearest(x, y + 70, objBuyButton).buy_id
            }
        }
        
        if buy_type = 1
        {
            inst = instance_create(x, y - 70, objGun)
            
            with(inst)
            {
            image_index = instance_nearest(x, y + 70, objBuyButton).buy_id
            }
        }
        
        if buy_type = 2
        {
            inst = instance_create(x, y - 70, objHealth)
            
            with(inst)
            {
            image_index = instance_nearest(x, y + 70, objBuyButton).buy_id
            }
        }
        
        if buy_type = 3
        {
        instance_create(x, y - 70, objGamblingMachine)
        }
    }
create = false
}



if col != noone and image_index = 0
{
    if buy_type = 0
    {
        if item_type = objItem
        {
        item_string()
        }
        else
        {
        use_item_string()
        }
    }
    
    if buy_type = 1
    {
        weapon_string()
    }
    
    if buy_type = 2
    {
        if global.use_itm[0] != 20 and global.use_itm[3] != 20
        {
        global.shop_string = "MEDKIT - Heal for 6 HP."
        }
        else
        {
        global.shop_string = "You monster. How could you be so evil?"
        }
    }
    
    if buy_type = 3
    {
        if global.shop_string != global.shop_string_arr[3, 0]
        {
        global.shop_string = global.shop_string_arr[3, 0]
        }
    }
    
    if buy_type = 4
    {
        global.shop_string = "ADMISSION TICKET - An invitation to the KillRoom!"
    }
            
        if hover = false
        {
        objShop.text_amount = 0
        hover = true
        }
}

if col = noone
{
hover = false
purchase = false
}

if instance_find(objBuyButton, 0).hover = false and instance_find(objBuyButton, 1).hover = false and instance_find(objBuyButton, 2).hover = false and instance_find(objBuyButton, 3).hover = false and purchase = false
{
    if set_to_zero = false
    {
    objShop.text_amount = 0
    global.shop_string = global.shop_string_arr[1, irandom_range(0, global.hover_text_amt)]
    set_to_zero = true
    }
}
else
{
set_to_zero = false
}

