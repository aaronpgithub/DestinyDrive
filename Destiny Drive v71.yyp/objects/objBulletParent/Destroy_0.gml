if x < room_width and y > 0 and y < room_height
{
    if explosive = true and object_index != objViolentExplosion
    {
    var inst = instance_create(x, y, objViolentExplosion)
    
        with(inst)
        {
        damage = 50
        }
    }
	
	if ds_list_find_index(bullet_list, "tech") != -1 instance_create(x + (12 * sign(x - xprevious)), y, objTechLaser)
    
    if flak_bullet = true {
        globalvar random_flak, flak;
        random_flak = random(360)
        for(flak = 0; flak <= 8; flak++) {
            var flakinst = instance_create(x, y, objBullet)
            
            with(flakinst) {
                angle = random_flak + (flak * (360 / 8))
                damage = 20 * (global.dmg + global.alt_dmg)
                spd = 5 * (global.shot_speed + global.alt_sho)
            }
        }
    }

    globalvar colo, xxscale, yyscale, sprite_dest;
    sprite_dest = sprBulletDestroy
	
	if sprite_index = sprWeakShot sprite_dest = sprWeakShotDestroy
	if sprite_index = sprSpiritBolt sprite_dest = sprSpiritBoltDestroy
	
    colo = color
    xxscale = image_xscale
    yyscale = image_yscale
    
    var bulletdestinst = instance_create(x, y, objBulletDestroy)
    
        with(bulletdestinst)
        {
        color = colo
        image_xscale = xxscale
        image_yscale = yyscale
		sprite_index = sprite_dest
        }
}

	if object_index = objPlanetBullet {
		with(objBulletParent) {
			can_connect = false
		}
	}

    if bullet_hit_enemy = false and risk = true and is_player_bullet = true player_take_damage(2)

    if insta = true //the thing needs to work
    {
        var insto = instance_create(xstart, ystart, objInstantLine)
        
        globalvar tito;
        
        for(tito = 0; tito < path_get_number(bullet_path); tito++)
        {
            globalvar a1, a2, a3, a4, colr;
            a1 = path_get_point_x(bullet_path, tito)
            a2 = path_get_point_y(bullet_path, tito)
            a3 = path_get_point_speed(bullet_path, tito)
            colr = color
            
            with(insto)
            {
			path_add_point(instant_path, a1, a2, a3)
            cl = colr
            }
        }
    }
	
	if ds_map_exists(global.item_map, "planet_bullet") {
		ds_map_replace(global.item_map, "planet_bullet", 1)
	}

