/// @description shooting_script(damage, shot speed, accuracy, firerate, automatic, release shot)
/// @function shooting_script
/// @param damage
/// @param  shot speed
/// @param  accuracy
/// @param  firerate
/// @param  automatic
/// @param  release shot
function shooting_script(argument0, argument1, argument2, argument3, argument4, argument5) {

	globalvar obj, bullet_spd, repeatbul, damage_var;

	damage_var = argument0

	var can_shoot = shoot;

	if global.use_itm[0] = 27 { //essence of rest
		damage_var += global.use_itm[1] * 2
		global.use_itm[1] = 0
	}

	is_automatic = argument4
	release_mouse = argument5 

	bullet_spd = argument1

	obj = object_index

	if global.hp > 0 and global.challenge != 7 and !instance_exists(objShopParent) and !instance_exists(objItem) and global.wave <= global.wave_max
	{
	        //semi automatic and charge weapons can override the inability to shoot
	        if is_automatic = false and (semi_auto = true or charge_weapon = true) {
	            if semi_auto = true can_shoot = ( semi_auto_fire_cap <= 0 ) //if weapon is a semi auto and NOT a charge
            
	            if release_mouse = true { //if the script was called on left_released, let the gun shoot only if it is a charge weapon
	                can_shoot = false
	                if charge_weapon = true and semi_auto_fire_cap <= 0 can_shoot = true
	            }
	        }
		
			//dont shoot the weapon on automatic fire
			if is_automatic = true and (semi_auto = true or charge_weapon = true) can_shoot = false
        
	        var inst, inst2, inst3;
        
	        if can_shoot = true {
	            gun_x = -3
        
	            if ds_map_exists(global.item_map, "toggle_trigger") {
	                with(objBulletParent) {
	                spd = -(spd)
					spd2 = -(spd2)
					jet_speed = -(jet_speed)
	                }
	            }
                
	            if ds_map_exists(global.item_map, "relic_turf") {
	                var chance = random(1)
                
	                if chance <= 0.2 * global.real_luck {
	                global.bullet_amt += 1
	                }
	            }
                   
	        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////SHOOTY
                
	                    fire_rate_chance_mod = 0 //reset the chance modifier, for special weapons that dont use alarm 0, they change this
                
	                    if ds_map_exists(global.item_map, "flak_shot")
	                    {
	                    bullet_spd = argument1 * random_range(0.75, 1.20)
	                    }
					
					#region //checking weapons
	                    switch(weapon) {
	                        case "pistol":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(10 * argument3)
	                        break;
                        
	                        case "revolver":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(8, 5, 2, damage_var, argument1, argument2)
	                        alarm[0] = ceil(15 * argument3)
	                        break;
                        
	                        case "smg":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(4, 7, 6, damage_var, argument1, argument2)
	                        alarm[0] = ceil(7 * argument3)
	                        break;
                        
	                        case "hand_eagle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5.625, 7, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        semi_auto_fire_cap = 7
	                        break;
                        
	                        case "rifle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(11.6, 8, 1, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "tommy":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(2, 6, 9, damage_var, argument1, argument2, 0, 0, 0, "tommygun")
	                        alarm[0] = ceil(3 * argument3)
	                        break;
                        
	                        case "twin":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                        
	                            bullet_shoot(7.5, 7, 1, damage_var, argument1, argument2, 0, 0, ang_offset)
	                                if ang_offset = 10 ang_offset = -9.9
	                                if ang_offset = -10 ang_offset = 9.9
	                                ang_offset = round(ang_offset)
	                        alarm[0] = ceil(10 * argument3)
	                        break;
                        
	                        case "m17":
	                            if is_automatic = false {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                            alarm[0] = ceil(1 * argument3)
	                            semi_auto_fire_cap = 3
	                            }
	                        break;
                        
	                        case "burst":
	                            if is_automatic = false {
	                                if burst < 0 burst = 2
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2)
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(3 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 10
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "h_rifle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(45 * argument3)
	                        break;
                        
	                        case "wave_gun":
	                        ////audio_play_sound(sndShotPistol, 0, false)
	                            if ang_offset < -6 angle_add_weapon = 3;
	                            if ang_offset > 6 angle_add_weapon = -3;
                            
	                                ang_offset += angle_add_weapon
                            
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, ang_offset)
                            
	                        alarm[0] = ceil(3 * argument3)
	                        break;
                        
	                        case "ak_pistol":
	                            if is_automatic = false {
	                                if burst < 0 burst = 1
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 9, damage_var, argument1, argument2)
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(7 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 7
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "triple":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                            
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 8)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 0)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -8)
                            
	                        alarm[0] = ceil(11 * argument3)
	                        break;
                        
	                        case "m19":
	                            if is_automatic = false and release_mouse = true {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                                
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0)
                                
	                                semi_auto_fire_cap = 8
	                            alarm[0] = ceil(11 * argument3)
	                            }
	                        break;
                        
	                        case "m_rifle":
	                            if is_automatic = false {
	                                if burst < 0 burst = 3
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 0.2, damage_var, argument1, argument2)
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(4 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 8
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "s_issue":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "s_rifle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(60 * argument3)
	                        break;
                        
	                        case "b_hose":
	                        ////audio_play_sound(sndShotPistol, 0, false)
	                            if ang_offset < -8 angle_add_weapon = 4;
	                            if ang_offset > 8 angle_add_weapon = -4;
                            
	                                ang_offset += angle_add_weapon
                                
	                            var bhose_chance = random(1) + (0.05 * global.luck)
                            
	                            if bhose_chance < 0.6 {
                                
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, ang_offset)
	                            }
                            
	                        alarm[0] = ceil(1 * argument3)
	                        break;
                        
	                        case "bounce":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                        
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, ang_offset, "bounce")
                            
	                                if ang_offset = 14 ang_offset = -13.9
	                                if ang_offset = -14 ang_offset = 13.9
	                                ang_offset = round(ang_offset)
	                        alarm[0] = ceil(12 * argument3)
	                        break;
                        
	                        case "ak_smg":
	                            if is_automatic = false {
	                                    var yf, combo_max, time;
	                                    yf = 0
	                                    combo_max = 4
	                                    time = 2
                            
	                                    if is_even(burst) {
	                                    yf = 2
	                                    } else yf = -2
                                    
	                                if burst < 0 {
	                                burst = 1
	                                    if combo = 5 {
	                                    burst = 5
	                                    time = 4
	                                    ang_offset = 3
	                                    }
	                                }
                                
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                if combo != combo_max {
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, ang_offset, "", 0, yf)
	                                } else {
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, ang_offset, "", 0, 2)
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, -ang_offset, "", 0, -2)
	                                }

                            
	                                    if burst > 0 {
	                                        if combo = combo_max ang_offset += 6
	                                    burst--
										alarm[0] = ceil(time * argument3)
	                                    } else {
	                                        semi_auto_fire_cap = 3
	                                        burst = -1
	                                        combo_add(combo_max)
	                                        ang_offset = 0
	                                    }
	                            }
	                        break;
                        
	                        case "quad":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                            
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 6)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 2, "", 2)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -2, "", 2)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -6)
                            
	                        alarm[0] = ceil(14 * argument3)
	                        break;
                        
	                        case "m20":
	                            if is_automatic = false and release_mouse = true {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                                
	                                if charge != charge_max {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0)
	                                } else {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 6)
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 2, "", 2)
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, -2, "", 2)
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, -6)
	                                }
                                
	                                semi_auto_fire_cap = 8
	                            alarm[0] = ceil(11 * argument3)
	                            }
	                        break;
                        
	                        case "p_burst":
	                            if is_automatic = false and release_mouse = true {
	                                if burst < 0 burst = ceil(5 * charge)
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, random_range(-1, 1))
                            
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(3 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 30
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "ss_issue":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "h_sniper":
	                            if heavy_bolt_time >= heavy_bolt_time_max {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                            }
	                        break;
                        
	                        case "gatling":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4 + (gatling / 2), damage_var, argument1, argument2)
	                        alarm[0] = ceil((45 / gatling) * argument3)
	                        if gatling < 45 gatling += 1.1
	                        break;
                        
	                        case "d_bounce":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                        
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 14, "bounce")
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -14, "bounce")
                            
	                        alarm[0] = ceil(12 * argument3)
	                        break;
                        
	                        case "ak_rifle":
	                            if is_automatic = false {
	                                    var yf, combo_max, time;
	                                    yf = 0
	                                    combo_max = 6
	                                    time = 6
                            
	                                if combo != combo_max {
	                                    if is_even(combo) {
	                                    yf = 2
	                                    } else yf = -2
	                                }
                                
	                                if burst < 0 {
	                                burst = -1
	                                    if combo = combo_max {
	                                    burst = 2
	                                    }
	                                }
                                
	                            ////audio_play_sound(sndShotPistol, 0, false)
                            
	                                if combo != combo_max {
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, yf)
	                                } else {
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, 2)
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, -2)
	                                alarm[0] = ceil(time * argument3)
	                                }
                                
                            
                            
	                                    if burst > 0 {
	                                    burst--
	                                    } else {
	                                        semi_auto_fire_cap = 10
	                                        burst = -1
	                                        combo_add(combo_max)
	                                    }
	                            }
	                        break;
                        
	                        case "arrow":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                        
	                        var arrow_acc = random_range(-5, 5) * argument2
                            
	                            bullet_shoot(5, 6, 0, damage_var, argument1, argument2, 0, 0, arrow_acc, "", 0, 0)
	                            bullet_shoot(5, 6, 0, damage_var, argument1, argument2, 0, 0, arrow_acc, "", -4, -4)
	                            bullet_shoot(5, 6, 0, damage_var, argument1, argument2, 0, 0, arrow_acc, "", -4, 4)
	                            bullet_shoot(5, 6, 0, damage_var, argument1, argument2, 0, 0, arrow_acc, "", -8, -8)
	                            bullet_shoot(5, 6, 0, damage_var, argument1, argument2, 0, 0, arrow_acc, "", -8, 8)
                            
	                        alarm[0] = ceil(16 * argument3)
	                        break;
                        
	                        case "m200":
	                            if is_automatic = false and release_mouse = true {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                                
	                                if charge != charge_max {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0)
	                                } else {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0, "explosive")
	                                }
                                
	                                semi_auto_fire_cap = 8
	                            alarm[0] = ceil(11 * argument3)
	                            }
	                        break;
                        
	                        case "s_burst":
	                            if is_automatic = false and release_mouse = true {
	                                if burst < 0 burst = ceil(10 * charge)
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, random_range(-1, 1))
                            
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(3 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 30
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "vs_issue":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "s_scope":
	                            if is_automatic = false and release_mouse = true {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                            alarm[0] = ceil(60 * argument3)
	                            semi_auto_fire_cap = 60
	                            }
	                        break;
                        
	                        case "vortex":
	                            t += 20
	                            var siang = sin(degtorad(t)) * 10
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 28 + siang)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 8 + siang, "", 2)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -8 + siang, "", 2)
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -28 + siang)
	                        alarm[0] = ceil(2 * argument3)
	                        break;
                        
	                        case "c_control":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 60, "bounce")
	                        alarm[0] = ceil(8 * argument3)
	                        break;
                        
	                        case "ak_spray":
	                                    var combo_max, time;
	                                    combo_max = 3
	                                    time = 1
                        
	                        if is_automatic = false {
	                                if burst < 0 {
	                                    burst = 20
	                                    if combo = combo_max {
	                                    burst = 40
	                                    }
	                                }
                                
	                                if burst > 0 {
	                                    ////audio_play_sound(sndShotPistol, 0, false)
                            
	                                    bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, random_range(-3, 3))
	                                    alarm[0] = ceil(time * argument3)
	                                    burst--
	                                } else {
	                                    semi_auto_fire_cap = 10
	                                    burst = -1
	                                    combo_add(combo_max)
	                                }
	                        }
	                        break;
                        
	                        case "cube":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 3, 4, damage_var, argument1, argument2, 0, 0, 0, "cube", 0, 0)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "m400":
	                            if is_automatic = false and release_mouse = true {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                                
	                                if charge != charge_max {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0)
	                                } else {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0, "flak")
	                                }
                                
	                                semi_auto_fire_cap = 8
	                            alarm[0] = ceil(11 * argument3)
	                            }
	                        break;
                        
	                        case "u_burst":
	                            if is_automatic = false and release_mouse = true {
	                                if burst < 0 burst = ceil(18 * charge)
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, random_range(-1, 1))
                            
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(3 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 30
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "ats_issue":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "l_rifle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2, antsy_charge * 50)
	                        alarm[0] = ceil(60 * argument3)
	                        antsy_charge = 0
	                        break;
                        
	                        case "fury":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2, 0, 0, 0, "", 0, 0, -8, road_y_min + random(180))
	                        alarm[0] = ceil(1 * argument3)
	                        break;
                        
	                        case "dc_control":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 60, "bounce")
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, -60, "bounce")
	                        alarm[0] = ceil(8 * argument3)
	                        break;
                        
	                        case "ak_shot":
	                                    var combo_max, time;
	                                    combo_max = 2
	                                    time = 9
                        
	                        if is_automatic = false {
	                                if burst < 0 and semi_auto_fire_cap <= 0{
	                                    burst = 1
	                                    if combo = combo_max {
	                                    burst = 2
	                                    }
	                                }
                                
	                                if burst > 0 {
	                                    ////audio_play_sound(sndShotPistol, 0, false)
	                                    repeat(12) bullet_shoot(5, 8, 20, damage_var, argument1, argument2, 0, random(2), 0, "shotgun", 0, random_range(-3, 3))
	                                    alarm[0] = ceil(time * argument3)
	                                    burst--
	                                } else {
	                                    semi_auto_fire_cap = 45
	                                    burst = -1
	                                    combo_add(combo_max)
	                                }
	                        }
	                        break;
                        
	                        case "circle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2, 0, 0, 0, "circle")
	                        alarm[0] = ceil(20 * argument3)
	                        break;
                        
	                        case "mblood":
	                            if is_automatic = false and release_mouse = true {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                                
	                                if charge != charge_max {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0)
	                                } else {
	                                bullet_shoot(5, 6, 1, damage_var, argument1, argument2, charge * 80, 0, 0, "health")
	                                }
                                
	                                semi_auto_fire_cap = 8
	                            alarm[0] = ceil(11 * argument3)
	                            }
	                        break;
                        
	                        case "tempo":
	                            if is_automatic = false {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                            
	                            var temp_shot = true
                            
	                                if tempo_flash > 0 or tempo_timer < 5 {
	                                temp_shot = true
	                                } else temp_shot = false
                        
	                                    if temp_shot = true {
	                                    bullet_shoot(100, 6, 4, damage_var, argument1, argument2, tempo_damage)
	                                    } else {
	                                        if tempo_damage > -75 tempo_damage -= 25
	                                        tempo_wrong = 10
	                                    }
                                
	                            semi_auto_fire_cap = 1
	                            }
	                        break;
                        
	                        case "h_burst":
	                            if is_automatic = false and release_mouse = true {
	                                if burst < 0 burst = charge
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 1, damage_var, argument1, argument2, 0, 0, 0, "", 0, random_range(-1, 1))
                            
	                                if burst > 0 {
	                                burst--
									alarm[0] = ceil(3 * argument3)
	                                } else {
	                                    semi_auto_fire_cap = 30
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "storm_burst":
	                            if is_automatic = false {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 0.5, 4, damage_var, argument1, argument2, 0, 0, 0, "storm")
	                            alarm[0] = ceil(1 * argument3)
	                            semi_auto_fire_cap = 3
	                            }
	                        break;
                        
	                        case "tms_rifle":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                        alarm[0] = ceil(18 * argument3)
	                        break;
                        
	                        case "momentum":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2, 0, 0, 0, "moment")
	                        break;
                        
	                        case "the_pro":
	                            if is_automatic = false and release_mouse = true and heavy_bolt_time >= heavy_bolt_time_max {
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 6, 4, damage_var, argument1, argument2)
	                            alarm[0] = ceil(60 * argument3)
	                            semi_auto_fire_cap = 60
							
									if heavy_bolt_time >= heavy_bolt_time_max {
										heavy_bolt_time = -1
					                    antsy_charge = 0
					                    heavy_bolt_charge_static = false
					                    heavy_bolt_charged = false
									}
	                            }
	                        break;
                        
	                        case "risk":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 0, damage_var, argument1, argument2, 0, 0, 0, "risk")
	                        alarm[0] = ceil(60 * argument3)
	                        break;
                        
	                        case "smart":
	                            if instance_exists(objEnemyParent) {
	                                var near_smart_inst = instance_nearest(x, y, objEnemyParent)
	                                ////audio_play_sound(sndShotPistol, 0, false)
                            
	                                    bullet_shoot(5, 6, 4, damage_var, argument1, argument2, 0, 0, point_direction(x, y, near_smart_inst.x, near_smart_inst.y))
	                                alarm[0] = ceil(5 * argument3)
	                            }
	                        break;
                        
	                        case "spirit":
	                            if instance_exists(objEnemyParent) {
	                                ////audio_play_sound(sndShotPistol, 0, false)
	                                for(var spsp = 0; spsp < instance_number(objEnemyParent); spsp++) {
	                                        var insfin = instance_find(objEnemyParent, spsp)
	                                        bullet_shoot(5, 1, 0, damage_var, argument1, argument2, 0, 0, 0, "spirit", 0, 0, insfin.x, insfin.y, insfin.id)
	                                }
	                                alarm[0] = ceil(3 * argument3)
	                            }
	                        break;
                        
	                        case "rotate":
	                        ////audio_play_sound(sndShotPistol, 0, false)

	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, ang_offset, "bounce")
                            
	                        alarm[0] = ceil(3 * argument3)
	                        break;
                        
	                        case "predictor":
	                        ////audio_play_sound(sndShotPistol, 0, false)

	                            bullet_shoot(5, 3, 1, damage_var, argument1, argument2, 0, 0, 0, "predict")
                            
	                        alarm[0] = ceil(15 * argument3)
	                        break;
                        
	                        case "ak_grenade":
	                                    var combo_max, time;
	                                    combo_max = 0
	                                    time = 9
                        
	                        if is_automatic = false {
	                                if burst < 0 and semi_auto_fire_cap <= 0 {
	                                    burst = 2
	                                }
                                
	                                if burst > 0 {
	                                    ////audio_play_sound(sndShotPistol, 0, false)
	                                    bullet_shoot(5, 4, 4, damage_var, argument1, argument2, 0, random(2), 0, "grenade", 0, random_range(-3, 3))
	                                    alarm[0] = ceil(time * argument3)
	                                    burst--
	                                } else {
	                                    semi_auto_fire_cap = 45
	                                    burst = -1
	                                    combo_add(combo_max)
	                                }
	                        }
	                        break;
                        
	                        case "my_little":
	                            var lil_damage = 0;
                            
	                            if global.hp < max_hp * 0.25 lil_damage = 100
                        
	                            if is_automatic = false {
	                                if burst < 0 burst = 1
	                            ////audio_play_sound(sndShotPistol, 0, false)
                        
	                                bullet_shoot(5, 8, 9, damage_var, argument1, argument2, lil_damage)
	                            alarm[0] = ceil(7 * argument3)
                            
	                                if burst > 0 {
	                                burst--
	                                } else {
	                                    semi_auto_fire_cap = 7
	                                    burst = -1
	                                }
	                            }
	                        break;
                        
	                        case "powerhouse":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                        
	                            var pc = powerhouse_charge;    
                        
	                            for(var ph = 0; ph < powerhouse_charge; ph++) {
	                                bullet_shoot(5, 6, 0.2, damage_var, argument1, argument2, 0, 0, -pc + (ph * (pc / 2)))
	                            }
                            
	                        alarm[0] = ceil(14 * argument3)
	                        break;
						
							case "infinite_gun":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                        
								bullet_shoot(5, 5, 0.3, damage_var, argument1, argument2, 0, 0, 6, "infinite")
								bullet_shoot(5, 5, 0.3, damage_var, argument1, argument2, 0, 0, 3, "infinite")
	                            bullet_shoot(5, 5, 0.3, damage_var, argument1, argument2, 0, 0, 0, "infinite")
								bullet_shoot(5, 5, 0.3, damage_var, argument1, argument2, 0, 0, -3, "infinite")
								bullet_shoot(5, 5, 0.3, damage_var, argument1, argument2, 0, 0, -6, "infinite")
                            
	                        alarm[0] = ceil(14 * argument3)
	                        break;
						
							case "bolt":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 4, damage_var, argument1, argument2, 0, 0, 0, "spirit_bolt")
	                        alarm[0] = ceil(10 * argument3)
	                        break;
						
							case "bolt_s":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 7, 4, damage_var, argument1, argument2, 0, 0, 0, "spirit_bolt")
	                        alarm[0] = ceil(10 * argument3)
	                        break;
						
							case "bolt_a":
	                        ////audio_play_sound(sndShotPistol, 0, false)
                    
	                            bullet_shoot(5, 6, 1, damage_var, argument1, argument2, 0, 0, 0, "spirit_bolt")
	                        alarm[0] = ceil(10 * argument3)
	                        break;
	                    }
					#endregion
                    
	                    if ds_map_exists(global.item_map, "gum") {
	                        if !instance_exists(objGum) {
	                        instance_create(x + 6, y, objGum)
	                        }
	                        else
	                        {
	                            with(objGum)
	                            {
	                            image_xscale += 0.2
	                            image_yscale += 0.2
	                            }
	                        }
	                    }
                    
	                    //For shit like Adrenaline and the sort
	                    fire_rate_attr(0)
	                    shoot = false

					if weapon = "h_sniper" {
						if heavy_bolt_time >= heavy_bolt_time_max heavy_bolt_time = -1
					}
				
					if weapon = "the_pro" {

					}
                
	                    if ds_map_exists(global.item_map, "relic_turf") {
	                        if chance <= 0.2 * global.real_luck global.bullet_amt -= 1
	                    }
					
						if alarm[0] <= 0 alarm[0] = 1
                    
	                    if fire_rate_chance_mod = 0 {
	                    fire_rate_chance_mod = alarm[0]
	                    }
	        }
	}




}
