/*
if objGlobalControl.coop = true
{
    var col;
    
    col = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, objPlayer, false, true)
    
    if col != noone and col != objPlayer2 and image_index = 0 and objShop.x <= room_width / 2
    {
        switch(buy_type)
        {
        case 0:
        if global.artifact[5, 0] = 0
        {
            if instance_exists(objItem) and item_type = objItem
            {
                if global.money >= instance_nearest(x, y - 50, objItem).price
                {
                button_script()
                ds_list_add(global.item_add, instance_nearest(x, y - 50, objItem).image_index)
                global.money -= instance_nearest(x, y - 50, objItem).price
                    with(instance_nearest(x, y - 50, objItem))
                    {
                    instance_destroy()
                    }
                        image_index = 1
                }
            }
            
            if instance_exists(objUseItem) and item_type = objUseItem
            {
                if global.money >= instance_nearest(x, y - 50, objUseItem).price
                    {
                    global.money -= instance_nearest(x, y - 50, objUseItem).price
                    objPlayer.alarm[2] = 0
                    global.use_itm[0] = instance_nearest(x, y - 50, objUseItem).image_index
                        with(instance_nearest(x, y - 50, objUseItem))
                        {
                        instance_destroy()
                        }
                                use_item_check(0, 1, 2)

                                if objPlayer.sprite_index = sprPlayerAlien
                                {
                                use_item_check(3, 4, 5)
                                }
                            image_index = 1
                    }
            }
        }
        else
        {
            if instance_exists(objItem)
            {
                if global.money >= objItem.price
                {
                global.money -= objItem.price
                ds_list_add(global.item_add, objItem.image_index)
                    with(instance_nearest(x, y - 50, objItem))
                    {
                    instance_destroy()
                    }
                        image_index = 1
                }
            }
            else if instance_exists(objUseItem)
            {
                if global.money >= objUseItem.price
                    {
                    global.money -= objUseItem.price
                    global.use_itm[0] = objUseItem.image_index
                        with(instance_nearest(x, y - 50, objUseItem))
                        {
                        instance_destroy()
                        }
                            use_item_check(0, 1, 2)

                            if objPlayer.sprite_index = sprPlayerAlien
                            {
                            use_item_check(3, 4, 5)
                            }
                            image_index = 1
                    }
            }
        }
        break;
        
        case 1:
            if global.money >= objGun.price and !ds_map_exists(global.scroll, "stone") and global.challenge != 2 and global.challenge != 5 and global.challenge != 6
            {
            global.money -= objGun.price
            
            
                with(instance_find(objPlayer, 1))
                {
                weapon = objGun.weapon
                }
            
                
                with(objGun)
                {
                instance_destroy()
                }
                
                with(instance_find(objPlayer, 0))
                {
                burst = -1
                shoot = true
                alarm[0] = -1
                }
                    image_index = 1
            }
        break;
        
        case 2:
        if instance_exists(objHealth)
        {
            if global.money >= objHealth.price and global.challenge != 3
            {
            global.money -= objHealth.price
            global.hp += 6
                with(objHealth)
                {
                instance_destroy()
                }
                    image_index = 1
            }
        }
        break;
        
        
        case 3:
            if instance_exists(objGamblingMachine)
            {
                if global.money >= objGamblingMachine.price
                {
                global.money -= objGamblingMachine.price
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
                }
            }
        break;
        
        case 4:
            if global.money >= objScroll.price
            {
            global.money -= objScroll.price
            ds_list_add(global.scroll_add, objScroll.image_index)
                    image_index = 1
                    
                    with(objScroll)
                    {
                    instance_destroy()
                    }
            }
        break;
        }
    }
}

