if x <= room_width / 2 and !instance_exists(objShop)
{
    if !ds_map_exists(global.scroll, "stone") and global.challenge != 2 and global.challenge != 5 and global.challenge != 6
    {
    
        with(instance_find(objPlayer, 0))
        {
            var exit_gun = false;
            
            for(var k = ds_list_size(global.character_trait); k > -1; k--)
            {
                if ds_list_find_value(global.character_trait, k) = "quickdraw"
                {
                    if weapon2 = -1
                    {
                    weapon2 = objGun.weapon
                    exit_gun = true
                    }
                    else
                    {
                    weapon = objGun.weapon
                    exit_gun = true
                    }
                }
            }
                if sprite_index != sprPlayerTurf
                {
                weapon = objGun.weapon
                }
        }

        with(instance_find(objPlayer, 0))
        {
        burst = -1
        shoot = true
        alarm[0] = -1
        }
        
        instance_destroy()
    }
}

