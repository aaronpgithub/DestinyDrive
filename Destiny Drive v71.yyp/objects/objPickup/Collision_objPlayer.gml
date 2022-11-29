/// @description Insert description here
// You can write your code in this editor

if global.hp > 0
{
    switch(image_index)
    {
    case 0:
    global.hp += 2
        if ds_map_exists(global.item_map, "upset_stomach")
        {
        var ohheall = instance_create(x, y, objHeartBullet)
            with(ohheall)
            {
            damage = 35 * global.dmg
            spd = 1 * global.shot_speed
            }
        }
    break;
	
    case 1:
    global.shields[0] += 1
    
        if ds_map_exists(global.item_map, "upset_stomach")
        {
        globalvar ghjk;
            for(ghjk = 1; ghjk < 7; ghjk++)
            {
            var uhme = instance_create(x, y, objBullet)
            
                with(uhme)
                {
                    damage = 14 * global.dmg
                    spd = ghjk * global.shot_speed
                    angle = random_range(-1, 1) * global.accuracy
                    image_speed = 0.2
                    sprite_index = sprShieldBullet
                    color = c_white
                }
            }
        }
    break;
	
    case 2:
	global.use_itm[1] = global.use_itm[2]
	global.use_itm[4] = global.use_itm[5]
	
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
    break;
	
	case 3:
	if instance_exists(objPlayer) objPlayer.powershield_amount++
	
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
    break;
	
	case 4:
		var yspawn = random_range(130, 140)
		
	repeat(irandom_range(1, 3)) {	
		var chest_var = instance_create(330, yspawn, objPickup)
		
		globalvar presnt_chst;
		presnt_chst = pickup_present

			with(chest_var) {
				pickup_from_chest = true
				pickup_present = presnt_chst
			}

			yspawn += random_range(20, 40)
	}
	
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
    break;
    }
    
    if !ds_map_exists(global.item_map, "treasure_chest")
    {
    objGameControl.pickup_parameter -= 0.1
    }
    else
    {
        switch(image_index)
        {
        case 0:
        global.hp += 2
        break;
        case 1:
        global.shields[0] += 1
        break;
        }
    
    objGameControl.pickup_parameter -= 0.05
    }
}

instance_destroy()

