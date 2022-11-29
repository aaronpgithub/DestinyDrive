object_set_depth(objGameControl, -10000000)
draw_set_font(fnGameFont)
draw_set_halign(fa_left)

//draw_text_outline_ext(string(global.enemy_spd), 80, 2, c_black, c_white)

#region debug
/*
if !ds_exists(global.item_add, ds_type_list) {
	draw_text(2, 2, "NOT REAL")
}

var typy = 0, total = 0;
repeat(10) {
	var c = c_black;
	
	//if typy > mini_wave - 4 and typy <= mini_wave + 1 c = c_green
	
draw_text_color(10 + (typy * 10), 10, string(wave_array[typy, 0] + wave_array[typy, 1] + wave_array[typy, 2]), c, c, c, c, 1)
total += wave_array[typy, 0] + wave_array[typy, 1] + wave_array[typy, 2]
typy++
}
draw_text(10 + (typy * 10), 10, string(total)) 
*/

if show_item_pool = true {
	var item_draw = 0;
	var pushback = 0
	var pushamt = 0
	var fallamt = 0

	repeat(ds_list_size(global.item_pool)) {
			draw_sprite_ext(sprItem, ds_list_find_value(global.item_pool, item_draw), 40 + (12 * item_draw) - (120 * pushamt), 50 + (12 * fallamt), 0.5, 0.5, 0, c_white, 1)
			item_draw++
			pushback++
		
			if pushback > 10 {
				pushback = 0
				fallamt++
				pushamt++
			}
	}
	draw_text(40, 70, string(ds_list_size(global.item_pool)))
}

//draw_text(x, y, string(objBackgroundControl.bg[0, 0]))

//draw_sprite(sprItem, ds_list_find_value(global.item_pool, itm), 30, 30)
//draw_text(60, 45, string(itm))

//draw_text(10, 10, string(ds_list_size(global.item_pool)))

//draw_text(30, 30, string(instance_number(objForestBackground)) + ", " + string(instance_number(objForestFartherBackground)) + ", " + string(instance_number(objForestFarthestBackground)))

//draw_text_outline(string(instance_number(objEnemyBulletParent)), 0, 60)

//draw_text(2, 2, string(fps_real) + ", " + string(level_complete_type))

/*if ds_map_exists(global.item_map, "entp_medal")
{
draw_text(40, 40, string(ds_map_find_value(global.item_map, "entp_medal")))
}
*/
#endregion

if instance_exists(objPlayer)
{
    //Back of HUD
    draw_rectangle_colour(0, 240, 320, 256, c_dkgray, c_dkgray, c_black, c_black, 0)
    //
    
    //soul collect
    if global.character = 7
    {
    draw_sprite_ext(sprChargeBack, 0, 2, 215, 1, 1, 0, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
    draw_sprite_general(sprCharge, 0, 0, 0, objPlayer.soul_count * (sprite_get_width(sprCharge) / 80), sprite_get_height(sprCharge), 2, 215, 1, 1, 0, c_white, c_white, c_white, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
    }
    
    //active ability
	#region //Obsolete?
	/*
    if objPlayer.sprite_index != sprPlayerDynaMike and objPlayer.sprite_index != sprPlayerNoodle and objPlayer.sprite_index != sprPlayerDisease and objPlayer.sprite_index != sprPlayerSpiritOfDespair and objPlayer.sprite_index != sprPlayerRandoObbles and global.hp > 0
    {
        draw_sprite_ext(sprActiveAbility, 0, 0, 240, 1, 1, 0, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 30))
        
        if objPlayer.ability_able = true
        {
        draw_sprite_ext(sprActiveIcon, global.character * 2, 0, 240, 1, 1, 0, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
        }
        else
        {
            //sprite_get_height(sprActiveIcon) + 2 - 
            //draw_text(10, 10, string(objPlayer.alarm[7] * (sprite_get_height(sprActiveIcon) / (room_speed * 4))))
        
        draw_sprite_ext(sprActiveIcon, (global.character * 2) + 1, 0, 240, 1, 1, 0, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
        
            if objPlayer.sprite_index = sprPlayerDastardlyDevil
            {
            draw_sprite_general(sprActiveIcon, global.character * 2, 0, 0, sprite_get_width(sprActiveIcon), abs( sprite_get_height(sprActiveIcon) + 2 - ( objPlayer.alarm[7] * ( (sprite_get_height(sprActiveIcon) + 2) / (room_speed * 4) ) ) ), 0, 224, 1, 1, 0, c_white, c_white, c_white, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
            }
        
            if objPlayer.sprite_index = sprPlayerBoneBoy
            {
            draw_sprite_ext(sprActiveIcon, global.character * 2, 0, 240, 1, 1, 0, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
            draw_sprite_general(sprActiveIcon, (global.character * 2) + 1, 0, 0, sprite_get_width(sprActiveIcon), abs( ( objPlayer.bone_wave * ( (sprite_get_height(sprActiveIcon) + 2) / (7) ) ) ), 0, 224, 1, 1, 0, c_white, c_white, c_white, c_white, 1 * ( point_distance(0, 240, objPlayer_x, objPlayer_y) / 45))
            }
        }
    }*/
	#endregion
    //
    
    if objPlayer.death_avoid = true //this is the code for dyna mike dying
    {
    draw_set_halign(fa_center)
    draw_sprite(sprWaveBar, 0, 120, 210)
    draw_sprite_part_ext(sprWaveBar, 0, 0, 0, objPlayer.alarm[6] * (100 / (room_speed * 4)), 10, 120, 208, 1, 1, c_lime, 1)
    draw_text_outline("KILL THEM, FOR HER!", (room_width / 2) + random_range(-2, 2), 220 + random_range(-2, 2))
    draw_set_halign(fa_left)
    }
    
	//Back of the wave
    draw_sprite_ext(sprWaveBar, 0, wave_back_x, wave_back_y, 1, 1, 0, c_dkgray, 1)
    //
	
    //Health bar back
    draw_sprite(sprHealthBar, 0, hbar_back_x, hbar_back_y)
    //
    
    //Health bar
    if global.hp > 0
    {
        if global.hp > objPlayer.max_hp
			draw_rectangle_colour(hbar_x, hbar_y, 43, 252, c_red, c_red, c_red, c_red, 0)
        else
			draw_rectangle_colour(hbar_x, hbar_y, 1 + ((global.hp / objPlayer.max_hp) * 42), 252, c_red, c_red, c_red, c_red, 0)
    
		if ds_map_exists(global.item_map, "ess_anxi") {
			if !mouse_check_button(mb_left) and global.hp < objPlayer.max_hp and objPlayer.max_hp > 0 and global.hp > 0 {
				draw_set_alpha(0.5)
				draw_rectangle_color(hbar_x, hbar_y, 1 + ((global.frame_time % 180) / 180) * 42, 252, c_white, c_white, c_white, c_white, 0)
				draw_set_alpha(1)
			}
		}
	}
        
        //life counter
        if ds_map_exists(global.item_map, "second_heart")
        {
            if ds_map_find_value(global.item_map, "second_heart") > 0
            {
            draw_text_colour(44, 241, string_hash_to_newline("x1"), c_white, c_white, c_white, c_white, 1)
            }
        }
    //
    
    //health text
    if global.hp > 0
    {
        if global.hp > objPlayer.max_hp
        {
			if objPlayer.max_hp > 0 {
				draw_text_colour(hbar_text_x, hbar_text_y, string_hash_to_newline(string(objPlayer.max_hp) + "/" + string(objPlayer.max_hp)), c_white, c_white, c_white, c_white, 1)
			} else draw_text_colour(hbar_text_x, hbar_text_y, global.hp, c_white, c_white, c_white, c_white, 1)
        }
        else
        {
        draw_text_colour(hbar_text_x, hbar_text_y, string_hash_to_newline(string(global.hp) + "/" + string(objPlayer.max_hp)), c_white, c_white, c_white, c_white, 1)
        }
    }
    else
    {
    draw_text_colour(hbar_text_x, hbar_text_y, string_hash_to_newline("0" + "/" + string(objPlayer.max_hp)), c_white, c_white, c_white, c_white, 1)
    }
    //
    
	//Powershield sprite
    draw_sprite(sprPowershieldCounter, 0, 260, 241)
	draw_set_halign(fa_center)
	draw_text_outline_ext(string(objPlayer.powershield_amount), 268, 246, c_black, c_white)
	draw_set_halign(fa_left)
    //
	
    //Money
    draw_sprite(sprMoney, 0, 290, 249)
    draw_text_colour(300, 245, string(clamp(global.money, 0, 1000)), c_white, c_white, c_white, c_white, 1)
    //
    
	#region //health and wave bar
    if !instance_exists(objBossParent)
    {
    //wave bar
        if global.wave > 0
        {
        draw_sprite_part(sprWaveBar, 0, 0, 0, global.wave * (100 / global.wave_max), 10, wave_x, wave_y)
        }
    }
    else 
	{
        
        if !instance_exists(objUFO)
        {
            if !instance_exists(objBoarHerder)
            {
            draw_sprite_part_ext(sprWaveBar, 0, 0, 0, objBossParent.hp * (100 / objBossParent.max_hp), 10, wave_x, wave_y, 1, 1, c_red, 1)
            }
            else
            {
                if instance_exists(objBoar)
                {
                objBoarHerder.hp = 0.1
                objBoarHerder.max_hp = 0.1
                
                    for(var imfuckindonewiththisshit = objBoarHerder.boar_amt; imfuckindonewiththisshit >= 0; imfuckindonewiththisshit--)
                    {
                        if instance_exists(instance_find(objBoar, imfuckindonewiththisshit))
                        {
                            with(instance_find(objBoar, imfuckindonewiththisshit))
                            {
                            objBoarHerder.hp += hp
                            objBoarHerder.max_hp += max_hp
                            }
                        }
                        else
                        {
                            objBoarHerder.max_hp += instance_find(objBoar, 0).max_hp
                        }
                    }
                
                draw_sprite_part_ext(sprWaveBar, 0, 0, 0, objBossParent.hp * (100 / objBossParent.max_hp), 10, wave_x, wave_y, 1, 1, c_red, 1)
                objBoarHerder.hp = 0.1
                objBoarHerder.max_hp = 0.1 
                }
            }
        }
        else
        {
        draw_sprite_part_ext(sprWaveBar, 0, 0, 0, objUFO.alarm[10] * (100 / (room_speed * 75)), 10, wave_x, wave_y, 1, 1, c_red, 1)
        }
    }
    
	
        if !instance_exists(objBossParent) {
            for(var wave_amt = 1; wave_amt < global.wave_max; wave_amt++) {
                draw_line_colour(wave_f_x + ((100 / global.wave_max) * wave_amt), wave_f_y, wave_f_x + ((100 / global.wave_max) * wave_amt), wave_f_y + sprite_get_height(sprWaveBar), c_black, c_black)
            }
        }
        
        draw_sprite(sprWaveBarFront, 0, wave_f_x, wave_f_y)
		
	#endregion
    
    //Use item
    if global.use_itm[0] > -1
    {
    draw_sprite_ext(sprUseItem, global.use_itm[0], 60, 246, 0.75, 0.75, 0, c_white, 1)
		if global.use_itm[2] != -10 {
		    draw_sprite(sprChargeBack, 0, 70, 248)
			//the 12 is from the sprite width
		    charge_item = lerp(charge_item, global.use_itm[1] * (12 / global.use_itm[2]), 0.3)
	
			//essence of rest
			if global.use_itm[0] = 27 or global.use_itm[0] = 40 charge_item = global.use_itm[1] * (12 / global.use_itm[2])
	
		    draw_sprite_part_ext(sprCharge, 0, 0, 0, charge_item, 10, 70, 248, 1, 1, c_green, 1)
		}
    }
    //
    
    //Turf Chisel and alien item
    if global.character = 1 {
        draw_text_outline_ext(global.chisel_hp, 4, 232, c_black, c_gray)
    }
        
    if global.player = sprPlayerAlien {
        if global.use_itm[3] != -1 {
        draw_sprite_ext(sprUseItem, global.use_itm[3], 5, 233, 0.4, 0.4, 0, c_white, 1)
        }
    }
    //
    
    //Transform Artifact
    if global.artifact[5, 0] = 1 draw_sprite_ext(sprGun, objPlayer.weapon, 235, 250, 0.8, 0.8, 0, c_white, 1)
    //
    
    //Use item TIMER
    if objPlayer.alarm[2] > 0 {
    draw_sprite_ext(sprUseItemBar, 0, 120, 235, 1, 1, 0, c_dkgray, 1)
    draw_sprite_part_ext(sprUseItemBar, 0, 0, 0, objPlayer.alarm[2] * (100 / objPlayer.alarm_2_max), 10, 120, 233, 1, 1, c_lime, 1)
    }
    
    if objPlayer.alarm[9] > 0 {
    draw_sprite_ext(sprUseItemBar, 0, 120, 224, 1, 1, 0, c_dkgray, 1)
    draw_sprite_part_ext(sprUseItemBar, 0, 0, 0, objPlayer.alarm[9] * (100 / objPlayer.alarm_9_max), 10, 120, 224, 1, 1, c_lime, 1)
    }
    //
    
    #region //Pacifist Timer
    if global.challenge = 7
    {
        if instance_exists(objEnemyParent)
        {
            if !instance_exists(objBossParent)
            {
            draw_sprite(sprUseItemBar, 0, 120, 230)
            draw_sprite_part_ext(sprUseItemBar, 0, 0, 0, alarm[9] * (100 / ((room_speed * 2) * instance_number(objEnemyParent))), 10, 120, 228, 1, 1, c_red, 1)
            }
            else
            {
                if global.wave >= global.wave_max - 1
                {
                draw_sprite_ext(sprUseItemBar, 0, 120, 230, 1, 1, 0, c_dkgray, 1)
                draw_sprite_part_ext(sprUseItemBar, 0, 0, 0, alarm[9] * (100 / (room_speed * 60)), 10, 120, 228, 1, 1, c_red, 1)
                }
                else
                {
                draw_sprite_ext(sprUseItemBar, 0, 120, 230, 1, 1, 0, c_dkgray, 1)
                draw_sprite_part_ext(sprUseItemBar, 0, 0, 0, alarm[9] * (100 / (room_speed * 45)), 10, 120, 228, 1, 1, c_red, 1)
                }
            }
        }
    }
    #endregion
	
    //Level Complete
    if global.wave > global.wave_max and global.hp > 0 and level_complete_type = "stats" {
		create_if_exist((room_width / 2) - (sprite_get_width(sprTokenBar) / 2), 400, objTokenBar)
	
		var bullet_shot = "NO BULLETS SHOT";
		if global.bullets_shot > 0 bullet_shot = string(round((global.bullets_hit / global.bullets_shot) * 100)) + "%"
		
		
    draw_set_halign(fa_center)
	var startpoint = 32
	
    draw_text_outline("LEVEL COMPLETE!", room_width / 2, startpoint); startpoint += 12
    draw_text_outline("Enemies Killed: " + string(global.item_maps), room_width / 2, startpoint); startpoint += 12
    draw_text_outline("Bullets Shot: " + string(global.bullets_shot), room_width / 2, startpoint); startpoint += 12
    draw_text_outline("Bullets Hit: " + string(global.bullets_hit), room_width / 2, startpoint); startpoint += 12
    draw_text_outline("Accuracy: " + bullet_shot, room_width / 2, startpoint); startpoint += 12
    draw_text_outline("Flawless Waves: " + string(global.flawless_waves), room_width / 2, startpoint); startpoint += 12
    draw_text_outline("Time: " + string(local_minutes_str) + ":" + string(local_seconds_str), room_width / 2, startpoint); startpoint += 12
	
        if alarm[4] <= -1 {
        draw_text_outline_ext("PRESS LEFT CLICK TO CONTINUE", room_width / 2, 132, c_black, c_lime)
        }
        
    draw_set_halign(fa_left)
    }
    //
    
    //shields
    if global.shields[0] > 0 {
    var sh_col = make_colour_rgb(33, 138, 243)
    draw_sprite(sprShieldCounter, 0, 24, 230)
    draw_text_outline(string(global.shields[0]), 22, 227)
    } 
    //
	
	//morphine
    if ds_map_exists(global.item_map, "morphine") {
		if ds_map_find_value(global.item_map, "morphine") > 0 {
		    var sh_col = make_colour_rgb(33, 138, 243)
		    draw_text_outline(ds_map_find_value(global.item_map, "morphine"), 5, 229)
		}
    } 
    //
    
    if global.hp <= 0 {
        draw_set_halign(fa_center)
        draw_text_outline("YOU DIED!", room_width / 2, 40)
        draw_text_outline("Enemies Killed: " + string(global.item_maps), room_width / 2, 52)
            if global.bullets_shot > 0 {
            draw_text_outline("Accuracy: " + string(round((global.bullets_hit / global.bullets_shot) * 100)) + "%", room_width / 2, 64)
            }
            else {
            draw_text_outline("Accuracy: " + "NO BULLETS SHOT", room_width / 2, 64)
            }
        draw_text_outline("Time: " + string(local_minutes_str) + ":" + string(local_seconds_str), room_width / 2, 76)
        draw_set_halign(fa_left)
    }
    
    if ds_map_exists(global.item_map, "sunglass") {
    draw_set_alpha(0.70)
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
    draw_set_alpha(1)
    }
}

if keyboard_check(vk_tab) and global.practice = false {
	draw_text_outline("Time: " + string(local_minutes_str) + ":" + string(local_seconds_str), 2, 2)
}

/*
globalvar wepsel;
	
		for(var quick = 0; quick <= 8; quick++) {
			if weapon_selected[quick] = 0 {
				wepsel = weapon_selected[quick - 1]
				quick = 100
			}
		}

/* */
/*  */
