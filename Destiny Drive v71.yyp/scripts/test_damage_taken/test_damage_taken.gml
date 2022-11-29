///@param damage_source
///@param damage_taken
///@param damage_multiplier
function test_damage_taken(argument0, argument1, argument2) {

	var has_shields = false;
	if global.shields[0] > 0 has_shields = true

		var damage_source = argument0;
		var damage_taken = argument1;
		var damage_multiplier_test = argument2;
		var damage_shield_break = false; //for bullets
	
			if !instance_exists(damage_source) exit;
			if !instance_exists(objPlayer) exit;
		
		if object_get_parent(damage_source.object_index) = objEnemyBulletParent {
			damage_shield_break = damage_source.shield_breaker
		}
	
		if ds_map_exists(global.item_map, "fat") damage_taken = 1
	
		var powershielded = false
	
	#region testing powershield
			if objPlayer.powershield_timer > 0 
				if !ds_map_exists(global.item_map, "baby_gemstone") powershielded = true
	#endregion
	
		if !instance_exists(objShop) and powershielded = false {
			var morphine = false;
		
			if ds_map_exists(global.item_map, "morphine") {
				if ds_map_find_value(global.item_map, "morphine") > 0 {
					morphine = true
					ds_map_replace(global.item_map, "morphine", ds_map_find_value(global.item_map, "morphine") - 1)
					damage_proc()
	                flawless = false
				}
			} 
		
			if morphine = false {
		        if global.shields[0] < 1 or damage_shield_break = true //if there are no shields
		        {
		            if global.challenge != 6
		            {
		                player_take_damage(damage_taken * damage_multiplier_test)
                        
		                damage_proc()
		                flawless = false
		            }
		            else
		            {
		            global.money -= damage_taken * (15 * damage_multiplier_test)
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
		
		#region Dyna mike 
			if global.character = 8
			{
		        if death_avoid = true
		        {
		        death_avoid = false
		        global.hp = 0
		        ability_able = false
		        }
			}
		#endregion
			}
		
	    } else if !instance_exists(objShop) {
			if ds_map_exists(global.item_map, "participation_award") {
				ds_map_replace(global.item_map, "participation_award", 0)
			}
		
			if ds_map_exists(global.item_map, "blood_gemstone") {
				ds_map_replace(global.item_map, "blood_gemstone", ds_map_find_value(global.item_map, "blood_gemstone") + 1)
			
				if ds_map_find_value(global.item_map, "blood_gemstone") > 3 {
					global.hp++
					ds_map_replace(global.item_map, "blood_gemstone", 0)
				}
			}
		
			if ds_map_exists(global.item_map, "hyper_gemstone") {
				powershield_timer += powershield_time_add
				powershield_time_add *= 0.5
			}
		
			if ds_map_exists(global.item_map, "hardened_gemstone") {
				powershield_timer -= powershield_max_time / 10
			}
		
		#region rubber gemstone
			if ds_map_exists(global.item_map, "rubber_gemstone") {
				if object_get_parent(damage_source.object_index) = objEnemyBulletParent {
					with(damage_source) {
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
			}
		#endregion
		}

		if instance_exists(damage_source) {
			if object_get_parent(damage_source.object_index) = objEnemyBulletParent {
		        with(damage_source)
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
		}
	
		if ds_map_exists(global.item_map, "glass_shard")
			if has_shields = true and global.shields[0] <= 0
				repeat(10) {
					var glass_shard = instance_create(x, y, objBullet)
				
					with(glass_shard) {
						damage = 10
						spd = 5
						angle = random_range(-30, 30)
						sprite_index = sprIcyColdIcicle
					}
				}

	health_item()


}
