beast_wave = -3 //just for a bit

if global.items_got > 0
{
    if !instance_exists(objItem)
    {
    item_spawn()
    global.items_got -= 1
    }
}

///Wave shiz!
if ds_list_size(global.item_add) >= 1 and instance_exists(objPlayer) 
{
scrItemCheck()
scrScrollCheck()
}

// testing item pool
if mouse_wheel_up()
{
    if itm < sprite_get_number(sprItem) - 2
    {
    itm += 1
    }
	
	change_enemy_bullet_speed()
}

if mouse_wheel_down()
{
    if itm > 0
    {
        itm -= 1
    }
	
	change_enemy_bullet_speed()
}
//*/

artifact_effects()

if mini_wave = global.wave_max - 1
{
mini_wave = 3
}

if ds_map_exists(global.item_map, "scarecrow")
{
mini_wave = -10
}

//global.wave_max = 2

if global.practice = true {
	if instance_exists(objPracticeControl) {
		
		if keyboard_check_pressed(ord("R")) {
			with(objEnemyParent) {
				instance_destroy()
			}
			
			practice_attack_dest_superscript()
		}
		
		//creating bosses
		if object_exists(objPracticeControl.settings_array[1, 1]) and objPracticeControl.settings_array[1, 1] != 0 
		{
			//dont create if enemy menu is open
			if !instance_exists(objPracticeControl.settings_array[1, 1]) 
			and objPracticeBossSelectMenu.selected = true {
				with(objEnemyParent) {
					instance_destroy()
				}
				
				practice_attack_dest_superscript()
				
				var dingly = create_if_exist(272, 160, objBossSpawn)
				
				with(dingly) boss_to_spawn = objPracticeControl.settings_array[1, 1]
			} else if objPracticeEnemySelectMenu.selected = true {
				if instance_exists(objBossParent) {
					with(objEnemyParent) {
						instance_destroy()
					}
				
					practice_attack_dest_superscript()
				}
			}
		}
		//
		
		//creating enemies
		if !instance_exists(objEnemyParent) and !instance_exists(objBossParent) and !instance_exists(objBossSpawn) 
		and objPracticeEnemySelectMenu.selected = true {
			var place1 = 0, place2 = 0;
			repeat(3) {
				place2 = 0
				repeat(3) {
					if objPracticeControl.enemy_place[place1, place2] != -1 {
						wave_create_practice()
						break;
					}
					place2++
				}
				if place2 < 3 break;
				place1++
			}
		}
	}
}

if !instance_exists(objEnemyParent) and !instance_exists(objItem)
{
//instance_create(272, 160, objMinibossSpawn) //for boss testing, dont delete!
//instance_create(272, 160, objBossSpawn) //for boss testing, dont delete!
//instance_create(272, random_range(130, 190), objWeakSpawn) //for boss testing, dont delete!
}

if global.wave = -1 and !instance_exists(objLevelName) and objGameControl.level_complete_type = "transition"
{
instance_create(room_width / 2, 40, objLevelName)
}

//if ds_map_exists(global.misc, "scarecrow") mini_wave = -10

//If a shop is gonna be created
if global.wave = global.wave_max - 1 or global.wave = vip_shop and !instance_exists(objBossParent)
{
    if global.artifact[7, 0] = 0
    {
        if !instance_exists(objShop)
        {
        instance_create(500, 240, objShop)
        }
    }
    else
    {
    instance_create(400, 170, objMinibossSpawn)
    
        if global.challenge = 7
        {
        alarm[9] = room_speed * 45
        }
    }
    
    if global.artifact[5, 0] = 1
    {
    objPlayer.weapon = irandom(sprite_get_number(sprGun) - 1)
    }
}
/////////


//beast maker
if global.wave = beast_wave and !instance_exists(objShopParent) and !instance_exists(objLevelName)
{
	if !instance_exists(objBossMaster) and !instance_exists(objHealthRobot) {
	instance_create(360, 64 + 90, choose(objBossMaster, objHealthRobot))
	}
}
//

//boss wave
if global.wave = global.wave_max and !instance_exists(objBossParent) and !instance_exists(objItem) and global.hp > 0 and !instance_exists(objMimic)
{
    if ds_map_exists(global.item_map, "pickaxe")
    {
    if ds_map_find_value(global.item_map, "pickaxe") global.items_got += 1
    ds_map_replace(global.item_map, "pickaxe", 0)
    }
    else
    {
        if boss_fought = false 
        {
        boss_spawn()
        }
    }
}
////

//weapon circle
#region
	globalvar pdis_x, pdis_y, pdis_mx, pdis_my;
	pdis_x = 0
	pdis_y = 0
	pdis_mx = 0
	pdis_my = 0
	
if level_complete_type = "weapon" {
	globalvar wepsel;
	
		for(var quick = 0; quick <= 8; quick++) {
			if weapon_selected[quick] = 0 {
				wepsel = weapon_selected[quick - 1]
				quick = 100
			}
		}
		
		var x_clamp_right = 240
		var x_clamp_left = 240
		var y_clamp_up = 480
		var y_clamp_down = -20
		
		
		pdis_x = lengthdir_x(point_distance(wepsel.xstart, wepsel.ystart, room_width / 2, wepsel.ystart), point_direction(wepsel.xstart, wepsel.ystart, room_width / 2, wepsel.ystart))
		pdis_y = lengthdir_y(point_distance(wepsel.xstart, wepsel.ystart, wepsel.xstart, room_height / 2), point_direction(wepsel.xstart, wepsel.ystart, wepsel.xstart, room_height / 2))
		
			if mouse_check_button_released(mb_middle) {
				mouse_offset_x -= lengthdir_x(point_distance(mouse_x, mouse_y, true_mouse_x, mouse_x), point_direction(mouse_x, mouse_y, true_mouse_x, mouse_x))
				mouse_offset_y -= lengthdir_y(point_distance(mouse_x, mouse_y, mouse_x, true_mouse_y), point_direction(mouse_x, mouse_y, mouse_x, true_mouse_y))
				pre_m_off_x = 0
				pre_m_off_y = 0
			}
		
			if mouse_check_button(mb_middle) {
				pre_m_off_x = mouse_offset_x - lengthdir_x(point_distance(mouse_x, mouse_y, true_mouse_x, mouse_x), point_direction(mouse_x, mouse_y, true_mouse_x, mouse_x))
				pre_m_off_y = mouse_offset_y - lengthdir_y(point_distance(mouse_x, mouse_y, mouse_x, true_mouse_y), point_direction(mouse_x, mouse_y, mouse_x, true_mouse_y))
				pdis_mx = pre_m_off_x
				pdis_my = pre_m_off_y
			} else {
				true_mouse_x = mouse_x
				true_mouse_y = mouse_y
				pdis_mx = mouse_offset_x
				pdis_my = mouse_offset_y
			}
			
			//instance_create(weapon_selected[0].x, weapon_selected[0].y, objBullet)
			
			if mouse_offset_x > x_clamp_right mouse_offset_x = lerp(mouse_offset_x, x_clamp_right, 0.4)
			if mouse_offset_x < -x_clamp_left mouse_offset_x = lerp(mouse_offset_x, -x_clamp_left, 0.4)
			if mouse_offset_y > y_clamp_up mouse_offset_y = lerp(mouse_offset_y, y_clamp_up, 0.4)
			if mouse_offset_y < y_clamp_down mouse_offset_y = lerp(mouse_offset_y, y_clamp_down, 0.4)
} 
		with(objWeaponCircle) {
			xoff = pdis_x + pdis_mx
			yoff = pdis_y + pdis_my
		}
		
		if instance_exists(objTeleport) {
			with(objTeleport) {
				x = (room_width / 2) + pdis_mx / 5
				y = (room_height / 2) + pdis_my / 5
			}
		}
		if instance_exists(objTeleportLine) {
			with(objTeleportLine) {
				x = (room_width / 2) + pdis_mx / 5
				y = (room_height / 2) + pdis_my / 5
			}
		}
#endregion

//LEVEL BEING SET///////////////////////////////////////
set_level()
////////////////////////////

if global.level = "swamp" //and //!audio_is_playing(sndSwampMusic)// and global.wave >= 1 and global.wave < 3
{
//audio_stop_all()
//audio_sound_gain(sndSwampShopMusic, 0, 0)
////audio_play_sound(sndSwampMusic, 0, true)
////audio_play_sound(sndSwampShopMusic, 0, true)
}

if global.level = "forest" //and //!//audio_is_playing(sndForestMusic)// and global.wave >= 1 and global.wave < 3
{
//audio_stop_all()
//audio_sound_gain(sndForestMusicShop, 0, 0)
//audio_sound_gain(sndForestMusicFire, 0, 0)
////audio_play_sound(sndForestMusic, 0, true)
////audio_play_sound(sndForestMusicShop, 0, true)
////audio_play_sound(sndForestMusicFire, 0, true)
}

if objGlobalControl.coop = false
{
part_emitter_region(global.part_sys, emit_1, objPlayer.x + 7, objPlayer.x + 8, objPlayer.y + 6, objPlayer.y + 6, ps_shape_ellipse, ps_distr_invgaussian)

//part_system_depth(global.part_sys, -130)
}

time_system()

if ds_map_exists(global.item_map, "res_luck") {
	if ds_map_find_value(global.item_map, "res_luck") != global.shields[0] {
		do {
		global.alt_luc += 0.1 * sign(global.shields[0] - ds_map_find_value(global.item_map, "res_luck"))
		ds_map_replace(global.item_map, "res_luck", ds_map_find_value(global.item_map, "res_luck") + sign(global.shields[0] - ds_map_find_value(global.item_map, "res_luck")))
		
		} until ds_map_find_value(global.item_map, "res_luck") = global.shields[0]
	}
}

/* */
/*  */
