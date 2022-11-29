function use_item_activate(argument0, argument1) {
	var nighting_mult = 1;

	//argument 1 is the item id

	if ds_map_exists(global.item_map, "nightinggale_lightning") nighting_mult = 2;

		    if ds_map_exists(global.item_map, "battery_bullet") and global.use_itm[0] > -1
		    {
		        for(var i = 6 * nighting_mult; i > 0; i--)
		        {
		        var inst = instance_create(x, y, objBullet)
        
		            with(inst)
		            {
		            spd = 5 * global.shot_speed
		            damage = 10 * global.dmg
		            angle = random_range(-15, 15) * global.accuracy
		            }
		        }
		    }
    
		    switch(argument1)
		    {
		    case 0: //War Horn - NIGHTING gives 1.2 more damage
		    global.alt_dmg += 0.6 * nighting_mult
		    ds_map_add(global.item_map, "war", 1)
		    alarm[argument0] = room_speed * 5
		    global.use_itm[1] = 0
		    break;
    
		    case 1: //Magic Clock - NIGHTING gives 0.6 less enemy_spd
		        global.enemy_spd -= 0.3 * nighting_mult
		        with(objEnemyBulletParent) {
		        motion_set(angle, spd * global.enemy_spd)
		        }
		        alarm[argument0] = room_speed * 6
		        global.use_itm[1] = 0
		    break;
    
		    case 2: //Fireworks - NIGHTING gives more rockets
		        repeat(irandom_range(5, 7) * nighting_mult)
		        {
		        var boob_lol = instance_create(x, y, objRocket)
        
		            with(boob_lol)
		            {
		            angle = random_range(-15, 15)
		            }
		        }
				blind_faith_script()
		        global.use_itm[1] = 0
		    break;
    
		    case 3: //King Midas' Finger - NIGHTING gives more gold each hit
		    ds_map_add(global.item_map, "midas", 1 * nighting_mult)
		    alarm[argument0] = room_speed * 10
		    global.use_itm[1] = 0
		    break;
    
		    case 4: //EMP - NIGHTING gives enemy bullets turn into friendly bullets
		        with(objEnemyBulletParent)
		        {
					if invincible = false {
			            if ds_map_exists(global.item_map, "nightinggale_lightning")
			            { 
			            globalvar sp, dm, an;
			            an = angle
			            sp = spd
			            dm = damage
			            var lgo = instance_create(x, y, objBullet)
			                with(lgo)
			                {
			                dmg = dm
			                spd = -sp
			                angle = an
			                }
			                instance_destroy()
			            }
			            else
			            {
			            instance_destroy()
			            }
					}
		        }
				blind_faith_script()
		        global.use_itm[1] = 0
		    break;
    
		    case 5: //Super Bomb - NIGHTING gives 2 bombs
		    repeat(nighting_mult)
		    {
		    instance_create(x, y, objSuperBomb)
		    }
				blind_faith_script()
		    global.use_itm[1] = 0
		    break;
    
		    case 6: //Blood Contract - NIGHTING gives more damage
		        if global.hp >= 6
		        {
		            with(objEnemyBullet)
		            {
		            instance_destroy()
		            }
            
		            with(objEnemyParent)
		            {
		            hp -= 125 * nighting_mult
		            }
				
					blind_faith_script()
			
		            player_take_damage(5)
		        }
		        global.use_itm[1] = 0
		    break;
    
		    case 7: //Roll of Bandages - NIGHTING gives 4 hp
		    global.hp += 2 * nighting_mult
			blind_faith_script()
		    global.use_itm[1] = 0
		    break;
    
		    case 8: //Shield Generator - NIGHTING gives 4 shields
		    global.shields[0] += 2 * nighting_mult
			blind_faith_script()
		    global.use_itm[1] = 0
		    break;
    
		    case 9: //Spiral Gun - NIGHTING gives more bullets
		    alarm[argument0] = room_speed * 2.5
    
		    spiral_shoot = true
    
		    global.use_itm[1] = 0
		    break;
    
		    case 10: //impatience - NIGHTING gives nothing :(
		        if !instance_exists(objBossParent) and !instance_exists(objShop)
		        {
        
			        with(objEnemyParent)
			        {
			        instance_destroy()
			        }
        
			        global.wave = global.wave_max - 1
			
					blind_faith_script()
			        global.use_itm[1] = 0
		        }
		    break;
    
		    case 11: //Distress Call - NIGHTING gives 2 turrets
		        repeat(nighting_mult)
		        {
		        var inst;
		            inst = instance_create(x, y, objHeliTurret)
            
		            with(inst)
		            {
		            rounds = 3
		            }
		        }
				blind_faith_script()
		    global.use_itm[1] = 0
		    break;
    
		    case 12: //Brother Shadow - NIGHTING gives 2 bullet amt
		    global.bullet_amt += 1 * nighting_mult
		    alarm[argument0] = room_speed * 6
		    global.use_itm[1] = 0
		    break;
    
		    case 13: //Energy Drink - NIGHTING gives more firerate
		    ds_map_add(global.item_map, "energy_drink", global.fire_rate)
		    global.fire_rate /= 1.5 * nighting_mult
		    alarm[argument0] = room_speed * 8
		    global.use_itm[1] = 0
		    break;
    
		    case 14: //Flashbang - NIGHTING gives more range and slowdown
		        with(objEnemyBulletParent)
		        {
		            if point_distance(x, y, objPlayer_x, objPlayer_y) <= 75 * nighting_mult
		            {
		            spd /= 2 * nighting_mult
		            }
		        }
				blind_faith_script()
        
		        global.use_itm[1] = 0
		    break;
    
		    case 15: //Vitamins - NIGHTING gives more stats up
		       var stat = choose(global.accuracy, global.shot_speed)
        
		        switch(stat)
		        {
		        case global.accuracy:
		        global.accuracy -= 0.05 * nighting_mult
		        break;
		        case global.shot_speed:
		        global.shot_speed += 0.05 * nighting_mult
		        break;
		        }
			
				blind_faith_script()
		        global.use_itm[1] = 0
		    break;
    
		    case 16: //Helping Hand - NIGHTING gives hand doubles bullets
		    instance_create(x, y, objHelpingHand)
		    alarm[argument0] = room_speed * 3
		    global.use_itm[1] = 0
		    break;
    
		    case 17: //Water Bottle - NIGHTING gives shields
		    if objPlayer.max_hp > 0 {
				global.hp = objPlayer.max_hp
			} else {
				global.hp += 10
			}
				blind_faith_script()
    
		        if nighting_mult = 2 global.shields[0] += global.hp
    
		    argument1 = -1
		    break;
    
		    case 18: //Bullet Portal - NIGHTING gives portal doubles bullets
		    instance_create(x, y, objBulletPortal)
    
		        if nighting_mult = 2 global.bullet_amt += 1
		    alarm[argument0] = room_speed * 10
		    global.use_itm[1] = 0
		    break;
    
		    case 19: //Sniper Support - NIGHTING gives 2 snipers
		    instance_create(-30, y, objSniperSupport)
			blind_faith_script()
		    global.use_itm[1] = 0
		    break;
    
		    case 20: //Healing Gland - NIGHTING gives ore hp on kill
                
		        ds_map_add(global.item_map, "healing_gland", 1)
        
		        alarm[argument0] = room_speed * 8
    
		    global.use_itm[1] = 0
		    break;
    
		   	case 21: //Essence of Greed - NIGHTING gives items give you the money you saved
		        if !instance_exists(objBossMaster) and !instance_exists(objHealthRobot) and instance_exists(objShop)
		        {
		            if instance_exists(objBuyParent)
		            {
		                with(objBuyParent)
		                {
		                    if object_index != objGamblingMachine
		                    {
		                    global.money += price
		                    price = 0
		                    }
		                }
		            }
				
		        argument1 = -1
		        }
			
				blind_faith_script()
		    break;
    
		    case 22: //AimBot - NIGHTING gives nothing :(
                
		        ds_map_add(global.item_map, "aimbot", 1)
		
				blind_faith_script()
		    global.use_itm[1] = 0
		    break;
    
		    case 23: //Silver Bullet - NIGHTING gives more damage
                
		        ds_map_add(global.item_map, "silv_bul", 1)
			
					blind_faith_script()
				
		    global.use_itm[1] = 0
		    break;
    
		    case 24: //Die - NIGHTING gives less money to pay for die
                
		        if global.money >= floor(25 / nighting_mult)
		        {
		        global.use_itm[1] = 0
		        weapon = irandom(sprite_get_number(sprGun) - 1)
		        objPlayer.shoot = true
		        objPlayer.burst = -1
		        global.money -= 25
		        }
			
				blind_faith_script()
        
		    break;
    
		    case 25: //Blizzard - NIGHTING gives nothing :(
        
		        with(objEnemyParent)
		        {
		            if object_index != objBossParent
		            {
		            freeze = true
		            }
		        }
			
				blind_faith_script()
        
		        global.use_itm[1] = 0
		    break;
    
		    case 26: //Pot O' Gold - NIGHTING gives more luck
		    global.luck += 5 * nighting_mult
		    alarm[argument0] = room_speed * 9
		    global.use_itm[1] = 0
		    break;
	
			//essence in different spot
	
			case 28: //Present - NIGHTING gives two chests
				repeat(nighting_mult) {
				    var haha = instance_create(330, random_range(130, 190), objPickup)
	
						with(haha) {
							unchangable = true
							pickup_present = true
							image_index = 4
						}
				}
			
				blind_faith_script()
		    global.use_itm[1] = 0
		    break;
	
			case 29: //Powerful Powershield - Nighting doesnt work :( make it work!
			powershield_activate()
			blind_faith_script()
		    global.use_itm[1] = 0
		    break;
	
			case 30: //Nuke - NIGHTING doubles damage
			instance_create(-10, -10, objExplosion)
				if instance_exists(objEnemyParent) {
					with(objEnemyParent) {
						hp -= 400 * nighting_mult
					}
				}
			
				blind_faith_script()
		    global.use_itm[1] = 0
		    break;
		
			case 31: //Portable Button - NIGHTING does nothing
				if global.money > 0 {
					reroll_items()
					global.money--
					blind_faith_script()
				}
		    break;
		
			case 32: //Redo
				if instance_exists(objEnemyParent) {
				
					ds_map_add(global.item_map, "redo", 0)
				
					with(objEnemyParent) {
						damage_item_test = false
						instance_destroy()
					}
				
					with(objEnemyBullet) instance_destroy()
			
					global.hp = ds_map_find_value(global.redo_map, "hp")
					global.money = ds_map_find_value(global.redo_map, "money")
					global.shields[0] = ds_map_find_value(global.redo_map, "shield")
					objPlayer.powershield_amount = ds_map_find_value(global.redo_map, "powershields")
					global.use_itm[4] = ds_map_find_value(global.redo_map, "alien_charge")
			
				if instance_exists(objPickupParent) {
					with(objPickupParent) instance_destroy()
				}
			
				blind_faith_script()
				global.use_itm[1] = 0
				}
		    break;
		
			case 33: //Morphine - NIGHTING gives 20 hits
				if global.hp > 1 and ds_map_find_value(global.item_map, "morphine") <= 0 {
					ds_map_replace(global.item_map, "morphine", 5 * nighting_mult)
					global.hp -= 1
					blind_faith_script()
				}
		    break;
		
			case 34: //Shield Converter - NIGHTING does nothing
				if global.shields[0] >= 2 {
					objPlayer.powershield_amount += 1
					global.shields[0] -= 2
					blind_faith_script()
				}
		    break;
		
			case 35: //Powershield Converter - NIGHTING does nothing
				if objPlayer.powershield_amount >= 1 {
					objPlayer.powershield_amount -= 1
					global.shields[0] += 2
					blind_faith_script()
				}
		    break;
		
			case 36: //Blender - NIGHTING does nothing
				if global.hp > 1 {
					global.hp -= 1
					global.shields[0] += 1
					blind_faith_script()
				}
		    break;
		
			case 37: //Essence of Pampering
				repeat(global.wave_max - 2) {
					pickup_script(true)
				}
				blind_faith_script()
				argument1 = -1
			break;
		
			case 38: //Demonic Gift - Nighting gives two visuals and increased damage
				ds_map_add(global.item_map, "demon_gift", choose("invert", "fade", "zoomglitch"))
				instance_create(x, y, objDemonGiftControl)
				global.use_itm[1] = 0
			break;
		
			case 39: //Deaths Cup - Nighting gives double items for each hp given
				if global.hp > 2 {
					ds_map_replace(global.item_map, "deaths_cup", ds_map_find_value(global.item_map, "deaths_cup") + 1)
					blind_faith_script()
				}
			break;
		
			case 40: //Faulty Powershield - Nighting gives ???
				ds_map_add(global.item_map, "faulty_powershield", 0)
				global.use_itm[1] = 0
				alarm[argument0] = 45
			break;
		
			case 41: //Big Chunk - Nighting gives two chunks
				instance_create(x, y, objChunk)
				blind_faith_script()
				global.use_itm[1] = 0
			break;
		
			case 42: //Small Chunk - Nighting gives two chunks
				instance_create(x, y, objChunk)
				blind_faith_script()
				global.use_itm[1] = 0
			break;
		
			case 43: //Garnet
			blind_faith_script()
			break;
		
			case 44: //Jade
			blind_faith_script()
			break;
		
			case 45: //Topaz
			blind_faith_script()
			break;
		
			case 46: //Aquamarine
			blind_faith_script()
			break;
		
			case 47: //Amber
			blind_faith_script()
			break;
		
			case 48: //Demon Altar
				if global.hp > 2 {
					global.hp -= 2 
				
					repeat(2) pickup_script(true)
					blind_faith_script()
				}
			break;
		
			case 49: //Destruction
				repeat(6) {
					var destroy_bullet = instance_create(-20, road_random(), objDestructionBullet) 
			
					with(destroy_bullet) {
						damage = 180 * global.dmg
						no_move_destroy = false
					}
				}
			
				global.use_itm[1] = 0
			
				blind_faith_script()
			break;
		
			case 50: //Hungry Bullets
				ds_map_add(global.item_map, "hungry_bullets", 0)
			    alarm[argument0] = room_speed * 5
			    global.use_itm[1] = 0
			break;
		    }
	

		    if alarm[argument0] > 0
		    {
		    alarm[argument0] *= global.use_time_multiplier
		    }



}
