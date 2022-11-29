var col, inst;

if !instance_exists(objShop) instance_destroy()

price_table(buy_type)

col = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, objPlayer, false, true)

if col != noone and image_index = 0
{
	switch(buy_type) {
	    case 0:
	        item_string()
	    break;
    
	    case 1:
	        use_item_string()
	    break;
    
	    case 2:
	        if global.use_itm[0] != 20 and global.use_itm[3] != 20 {
	        global.shop_string = "MEDKIT - Heal for 4 HP."
	        }
	        else {
	        global.shop_string = "You monster. How could you be so evil?"
	        }
	    break;
    
	    case 3:
	        if global.shop_string != global.shop_string_arr[3, 0] {
	        global.shop_string = global.shop_string_arr[3, 0]
	        }
	    break;
    
	    case 4:
	        global.shop_string = "ADMISSION TICKET - An invitation to the KillRoom!"
	    break;
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

