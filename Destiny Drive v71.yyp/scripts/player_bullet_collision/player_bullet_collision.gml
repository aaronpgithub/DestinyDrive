function player_bullet_collision(argument0) {
	var enemy_bullet = argument0;

	var damage_multiplier = 1;

	if instance_exists(objIllusionBulletBlock) {
		if place_meeting(x, y, objIllusionBulletBlock) and enemy_bullet.object_index = objIllusionMazeBullet exit;
	}

	if weapon = "mblood" damage_multiplier += 1
	if ds_map_exists(global.item_map, "blood_gemstone") damage_multiplier += 1
	if ds_map_exists(global.item_map, "hellstone") damage_multiplier += 1

	if !instance_exists(enemy_bullet) exit;

	if !ds_map_exists(global.item_map, "faulty_powershield") {
		if global.hp > 0 and enemy_bullet.damage > 0 and !instance_exists(objShop) and alarm[5] <= 0 and !instance_exists(objGunpowderBlood) and smoked_out = false and !instance_exists(objTeleport)
		{
		    test_damage_taken(enemy_bullet, enemy_bullet.damage, damage_multiplier)
		}
	} else {
		with(enemy_bullet) {
			if dont_dest = false {
				globalvar spd_reflect, angle_reflect;
				spd_reflect = -(spd)
				angle_reflect = angle
			
				if abs(spd_reflect) < 0.5 spd_reflect = -(1)
			
				var deal = instance_create(x, y, objBullet)
			
				with(deal) {
					spd = spd_reflect
					angle = angle_reflect
					damage = 5 * player_damage
				}
			
				instance_destroy()
			}
		}
	}

	/*
	if !instance_exists(objShop)
	    {
	        if global.shields[0] < 1 or enemy_bullet.shield_breaker = true //if there are no shields
	        {
	                    if global.challenge != 6
	                    {
	                        player_take_damage(enemy_bullet.damage * damage_multiplier)
                        
	                        damage_proc()
	                        flawless = false
	                    }
	                    else
	                    {
	                    global.money -= enemy_bullet.damage * 15
	                    damage_proc()
	                    flawless = false
	                    }
	        }
	        else
	        {
	           global.shields[0] -= 1
	           damage_proc()
	           flawless = false
	        }
	    }

	        with(enemy_bullet)
	        {
	            if object_index != objIllusionLaser
	            {
	                if dont_dest = false
	                {
	                damage = 0
	                instance_destroy()
	                }
	                else
	                {
	                damage = 0
	                }
	            }
	        }
        
	    if global.character = 8
	    {
	        if death_avoid = true
	        {
	        death_avoid = false
	        global.hp = 0
	        ability_able = false
	        }
	    }



/* end player_bullet_collision */
}
