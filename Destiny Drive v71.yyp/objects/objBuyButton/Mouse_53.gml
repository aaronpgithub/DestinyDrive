var col, currency;

currency = global.money
if ds_map_exists(global.item_map, "demon_contract") currency = global.hp

if !instance_exists(objShop) {
	exit;
} else {
	if objShop.bye = true exit;
}

col = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, objPlayer, false, true)

if col != noone and image_index = 0 and objShop.x <= room_width / 2 and objShop.bye != true
{
    switch(buy_type)
    {
    case 0:
            if currency >= price
            {
			button_script(buy_id)
            ds_list_add(global.item_add, buy_id)
            
                if buy_id != 76 { //money bag item
                currency -= price
                }
                
                    image_index = 1
                    
                    purchase_text()
             
				item_collected(buy_id)
			 
            }
    break;
    
    case 1:
            if currency >= price
            {
					globalvar button_buy_id;
					button_buy_id = buy_id
					
                currency -= price
                objPlayer.alarm[2] = 0
                
                    with(instance_find(objPlayer, 0))
                    {
                        var exit_use = false;
                        
						if sprite_index = sprPlayerAlien {
                                if global.use_itm[0] != -1
                                {
                                    if global.use_itm[3] = -1
                                    {
                                    global.use_itm[3] = button_buy_id
                                    use_item_check(3, 4, 5)
                                    exit_use = true
                                    }
                                    else
                                    {
                                    global.use_itm[0] = button_buy_id
                                    use_item_check(0, 1, 2)
                                    exit_use = true
                                    }
                                }
                                else
                                {
                                    global.use_itm[0] = button_buy_id
                                    use_item_check(0, 1, 2)
                                    exit_use = true
                                }
						} else {
                            global.use_itm[0] = button_buy_id
                            use_item_check(0, 1, 2)
                        }
                    }
                        
                        image_index = 1
                        
                        purchase_text()
                }
    break;
    
    case 2:
        if global.use_itm[0] != 20 and global.use_itm[3] != 20
        {
            if currency >= price and global.challenge != 3
            {
            currency -= price
            global.hp += 4

				image_index = 1
                    
				purchase_text()
            }
    }
    break;
    
    
    case 3:
        if instance_exists(objGamblingMachine)
        {
            if currency >= objGamblingMachine.price
            {
            currency -= objGamblingMachine.price
                with(objGamblingMachine)
                {
                gamble = true
                image_speed = 0.2
                
                    if ds_map_exists(global.item_map, "gamble_charm")
                    {
                    img = irandom(3)
                    }
                    else
                    {
                    img = irandom(4)
                    }
                    
                your_chance = random_range(0, 1)
                }
                with(objGamblingRoll)
                {
                alarm[0] = 60
                }
                with(objGamblingDispense)
                {
                alarm[0] = 60
                }
                    image_index = 1
                    
                    purchase_text()
            }
        }
    break;
    
    case 4:
        if currency >= objScroll.price
        {
        currency -= objScroll.price
        ds_list_add(global.scroll_add, objScroll.image_index)
                image_index = 1
                
                with(objScroll)
                {
                instance_destroy()
                }
                
                purchase_text()
        }
    break;
    }
}

if ds_map_exists(global.item_map, "demon_contract") {
	global.hp = currency
} else global.money = currency