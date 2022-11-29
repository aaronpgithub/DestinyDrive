/// @description bullet_shoot(damage, shot_speed, accuracy, global_damage, global_shot, global_accuracy, extra damage, extra speed, extra accuracy, type, xoff, yoff, xpos, ypos, extra number)
/// @function bullet_shoot
/// @param  damage
/// @param  shot_speed
/// @param  accuracy
/// @param  global_damage
/// @param  global_shot
/// @param  global_accuracy
/// @param  extra_damage
/// @param  extra_speed
/// @param  extra_accuracy
/// @param  type
/// @param  xoff
/// @param  yoff
/// @param  xpos
/// @param  ypos
/// @param  extra_number
function bullet_shoot() {

	globalvar dam, sht, acc, gdam, gsht, gacc, exd, exs, exa, type, xoff, yoff, xpos, ypos, object_type, enemy_ID;
	object_type = objBullet
	dam = argument[0]
	sht = argument[1]
	acc = argument[2]
	gdam = argument[3]
	gsht = argument[4]
	gacc = argument[5]
	exd = 0
	exs = 0
	exa = 0
	type = ""
	xoff = 0
	yoff = 0
	xpos = objPlayer.x
	ypos = objPlayer.y
	enemy_ID = 0

#region //checking optional args
	    switch(argument_count) {
	        case 7:
	            exd = argument[6]
	        break;
	        case 8:
	            exd = argument[6]
	            exs = argument[7]
	        break;
	        case 9:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	        break;
	        case 10:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	            type = argument[9]
	        break;
	        case 11:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	            type = argument[9]
	            xoff = argument[10]
	        break;
	        case 12:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	            type = argument[9]
	            xoff = argument[10]
	            yoff = argument[11]
	        break;
	        case 13:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	            type = argument[9]
	            xoff = argument[10]
	            yoff = argument[11]
	            xpos = argument[12]
	        break;
	        case 14:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	            type = argument[9]
	            xoff = argument[10]
	            yoff = argument[11]
	            xpos = argument[12]
	            ypos = argument[13]
	        break;
	        case 15:
	            exd = argument[6]
	            exs = argument[7]
	            exa = argument[8]
	            type = argument[9]
	            xoff = argument[10]
	            yoff = argument[11]
	            xpos = argument[12]
	            ypos = argument[13]
	            enemy_ID = argument[14]
	        break;
	    }
#endregion

	    if type = "storm" object_type = objBurstBullet
	    if type = "moment" object_type = objMomentumBullet
	    if type = "predict" object_type = objPredictorBullet
	    if type = "grenade" object_type = objGrenade
	
		if instance_exists(objRobotBullet) {
			xpos = objRobotBullet.x
			ypos = objRobotBullet.y
			xoff = 0
			yoff = 0
		
			var old_exa = exa
		
			if variable_instance_exists(objRobotBullet, "robot_angle") {
			exa = objRobotBullet.robot_angle
			}
		
			exa += old_exa
		}
    
		repeat(global.bullet_amt) {
		    if type != "cube" and type != "circle"{
		        var inst = instance_create(xpos + ((8 + xoff) * sign(global.shot_speed)), ypos + yoff, object_type)
        
		        with(inst) {
		        damage = ceil(dam * gdam) + exd
		        spd = (sht * gsht) + exs
		        angle = (random_range(-acc, acc) * gacc) + exa
			
				is_player_bullet = true
            
				#region //adding modifiers
		            switch(type) {
		                case "bounce":
		                bounce = true
		                break;
		                case "explosive":
		                explosive = true
		                color = c_black
		                break;
		                case "flak":
		                flak_bullet = true
		                break;
		                case "shotgun":
		                shotgun = true
		                alarm[0] = random_range(8, 12)
		                break;
		                case "health":
		                life_steal = true
		                color = c_red
		                break;
		                case "risk":
		                risk = true
		                break;
		                case "spirit":
		                spirit_id = enemy_ID
		                break;
						case "infinite":
		                infinite = true
		                break;
						case "tommygun":
		                sprite_index = sprWeakShot
		                break;
						case "spirit_bolt":
		                sprite_index = sprSpiritBolt
						no_flash = true
						color = c_white
		                break;
		            }
				#endregion
		        }
		    } else if type = "cube" { //cube gun
		        globalvar ID_BULLET, randsquang;
		        var inst = instance_create(xpos + ((8 + xoff) * sign(global.shot_speed)), ypos + yoff, objBullet)
		        ID_BULLET = inst.id
		        randsquang = random(360)
        
		        with(inst) {
		        damage = ceil(dam * gdam) + exd
		        spd = (sht * gsht) + exs
		        angle = (random_range(-acc, acc) * gacc) + exa
		        sprite_index = sprWeakShot
			
				is_player_bullet = true
		        }
        
		        for(var dol = -1; dol <= 1; dol += 2) {
		            for(var dol2 = -1; dol2 <= 1; dol2++) {
		                var instb = instance_create(x + ( ((8 + xoff) + (dol * 5)) * sign(global.shot_speed)), y + yoff + (dol2 * 5), objSquareFollower)
                
		                    with(instb) {
		                    damage = ceil(dam * gdam) + exd
		                    spd = (sht * gsht) + exs
		                    angle = (random_range(-acc, acc) * gacc) + exa
		                    ID_to_follow = ID_BULLET
		                    square_ang = point_direction(x, y, ID_to_follow.x, ID_to_follow.y) + randsquang
		                    blen = point_distance(x, y, ID_to_follow.x, ID_to_follow.y)
		                    sprite_index = sprWeakShot
						
							is_player_bullet = true
		                    }
		            }
		        }
		    } else if type = "circle" { //circle gun
		        var pepen = instance_create(xpos + ((8 + xoff) * sign(global.shot_speed)), ypos + yoff, objCircle)
        
		        with(pepen) {
		        spd = (sht * gsht) + exs
		        angle = (random_range(-acc, acc) * gacc) + exa
				is_player_bullet = true
		        }
		    }
		}

		if ds_map_exists(global.item_map, "bullet_blade") {
			globalvar didnt_exist;
			didnt_exist = true
		
			if instance_exists(objBulletBlade) didnt_exist = false
		
			with(objBulletBlade) instance_destroy()
		
			var blade = instance_create(x, y, objBulletBlade)
		
			with(blade) {
				if didnt_exist = false image_index = 2
				damage = dam * 0.5
				no_flash = true
				sprite_index = sprBulletBlade
				image_yscale = ds_map_find_value(global.item_map, "bullet_blade")
			}
		
			ds_map_replace(global.item_map, "bullet_blade", -(ds_map_find_value(global.item_map, "bullet_blade")))
		}


}
