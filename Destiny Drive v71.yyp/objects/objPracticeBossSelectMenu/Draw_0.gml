/// @description Insert description here
// You can write your code in this editor

if !instance_exists(objPracticeControl) exit;

globalvar real_zero; real_zero = real_width - max_width

var alpha = l_menu_alpha * objPracticeControl.menu_alpha

if surface_exists(boss_select_surface) {
	
	#region	//drawing attack box 
	if surface_exists(boss_attack_surface) {	//drawing attack box
		surface_set_target(boss_attack_surface)
		
			draw_clear_alpha(c_black, 0)
			
				draw_set_alpha(0.8)
				draw_rectangle_color(0, 0, max_width - 2, ba_max_height, c_black, c_black, c_black, c_black, 0)
				
				draw_set_alpha(1)
				
			with(objPracticeAttackSelectMenuButton) {
				//to get the correct depth, have practice control draw the button instead
				draw_sprite_ext(sprite_index, image_index, real_zero + 2, y - BOSS_ATTACK_SURFACE_Y, fake_xscale, image_yscale, image_angle, c_white, image_alpha)
			}
			
			with(objPracticeScrollBar) {
				if sprite_exists(sprite_index) draw_sprite_ext(sprite_index, image_index, real_zero + objPracticeBossSelectMenu.real_width - 3, y - BOSS_ATTACK_SURFACE_Y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
			}
			
			with(objPracticeScrollArrow) {
				if sprite_exists(sprite_index) draw_sprite_ext(sprite_index, image_index, real_zero + objPracticeBossSelectMenu.real_width - 3, y - BOSS_ATTACK_SURFACE_Y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
			}

			total_scroll = (ds_list_size(objPracticeControl.boss_attacks) - 4) * 12;
			for(var bat = 0; bat < ds_list_size(objPracticeControl.boss_attacks); bat++) {
				var attack_color = c_white;
				
				#region special
				if objPracticeControl.boss_attacks[| bat] = "PARASITE WORM ATTACKS" or objPracticeControl.boss_attacks[| bat] = "MONSTER ATTACKS" attack_color = c_yellow
				#endregion
				
				var y_add_to_text = (12 * bat) + scroll_amt;
				draw_text_outline_ext(objPracticeControl.boss_attacks[| bat], real_zero + 4, 4 + y_add_to_text, c_black, attack_color)
			}
				
		surface_reset_target()
	} else boss_attack_surface = surface_create(max_width - 2, ba_max_height)
	#endregion
	
	surface_set_target(boss_select_surface)
		
		draw_clear_alpha(c_black, 0)
			
			draw_set_alpha(0.7)
			draw_rectangle_color(0, 0, real_width, max_height, c_black, c_black, c_black, c_black, 0)
			
			//small boss select menu decor		
			draw_rectangle_color(1, 1, real_width - 2, 12 * 6 + 2, c_black, c_black, c_black, c_black, 0)
			
			//Phases
			var phase_y_start = BOSS_ATTACK_SURFACE_Y + objPracticeBossSelectMenu.ba_max_height + 12
			draw_rectangle_color(1, phase_y_start, 90 * (objPracticeBossSelectMenu.real_width / objPracticeBossSelectMenu.max_width), phase_y_start + 14, c_black, c_black, c_black, c_black, 0)
			draw_set_alpha(1)
			
			with(objPracticeBossSelectMenuButton) {
				//to get the correct depth, have practice control draw the button instead
				draw_sprite_ext(sprite_index, image_index, objPracticeBossSelectMenu.real_width - objPracticeBossSelectMenu.max_width + 2, y, fake_xscale, image_yscale, image_angle, c_white, image_alpha)
			}
			
			with(objPracticePhaseArrow) {
				if sprite_exists(sprite_index) draw_sprite_ext(sprite_index, image_index, objPracticeBossSelectMenu.real_width - objPracticeBossSelectMenu.max_width + 3 + (x - 94), y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
			}
			
			for(var int = 0; int < array_height_2d(objPracticeControl.boss_select); int++) {
				if string(objPracticeControl.boss_select[int, 0]) != "0" {
					draw_text_outline_ext(objPracticeControl.boss_select[int, 0], real_zero + 4, 4 + (12 * int), c_black, c_white)
				}
			}
			
			draw_text_outline_ext("Attacks", real_zero + 4, BOSS_ATTACK_SURFACE_Y - 9, c_black, c_white)
			
			draw_text_outline_ext("Phases", real_zero + 4, BOSS_ATTACK_SURFACE_Y + objPracticeBossSelectMenu.ba_max_height + 3, c_black, c_white)
			draw_text_outline_ext(objPracticeControl.settings_array[1, 2] + 1, real_zero + 45, BOSS_ATTACK_SURFACE_Y + objPracticeBossSelectMenu.ba_max_height + 16, c_black, c_white)
			
			draw_surface(boss_attack_surface, real_zero + 1, BOSS_ATTACK_SURFACE_Y)
			
	surface_reset_target()
	
	draw_set_alpha(alpha)
	draw_surface(boss_select_surface, objPracticeControl.menu_x + 91, 0)
	draw_set_alpha(1)
	
} else boss_select_surface = surface_create(max_width, max_height)