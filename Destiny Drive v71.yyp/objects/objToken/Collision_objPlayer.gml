if global.hp > 0
{
    global.money += 1
	
	player_collected = true
    
        if ds_map_exists(global.item_map, "upset_stomach")
        {
            repeat(8)
            {
            var uhme = instance_create(x, y, objBullet)
            
                with(uhme)
                {
                    damage = 14 * global.dmg
                    spd = 7 * global.shot_speed
                    angle = random_range(-25, 25) * global.accuracy
                    sprite_index = sprCoinBullet
                }
            }
        }
}

instance_destroy()

