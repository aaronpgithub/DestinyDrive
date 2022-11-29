/// @description Insert description here
// You can write your code in this editor

if !instance_exists(objPracticeControl) exit;

var gridx_off = 2, gridy_off = -1;

globalvar real_zero, back_button_y; real_zero = real_width - max_width; back_button_y = 230;

var alpha = l_menu_alpha * objPracticeControl.menu_alpha

if surface_exists(enemy_select_surface) and surface_exists(enemy_grid_surface) {

	surface_set_target(enemy_grid_surface)
	
	draw_clear_alpha(c_black, 0)

		//The grid_X, and grid_y are set by me for correct offsetting
		with(objPracticeEnemyGrid) {
			if sprite_exists(sprite_index) {
				draw_sprite_ext(sprite_index, image_index, real_zero + offset + gridx_off, y + gridy_off , image_xscale, image_yscale, image_angle, c_white, image_alpha)
			
				if prac_enemy_id < ds_list_size(objPracticeEnemySelectMenu.enemy_list) {
					draw_sprite_ext(my_sprite, 0, real_zero + offset + gridx_off + 32 - sprite_off_x, y + gridy_off + 32 - sprite_off_y, praxscale, prayscale, 0, c_white, 1)
				}
			}
		}

	surface_reset_target()
	
	surface_set_target(enemy_select_surface)
		
		draw_clear_alpha(c_black, 0)
		
		draw_set_alpha(0.7)
		draw_rectangle_color(0, 0, real_width, max_height, c_black, c_black, c_black, c_black, 0)
		draw_set_alpha(1)
		
		draw_surface(enemy_grid_surface, real_zero - 3, 1)
		
		with(objPracticeEnemySelectBackButton) {
			draw_sprite_ext(sprite_index, image_index, x, y, fake_xscale, image_yscale, image_angle, c_white, image_alpha)
		}
		
		draw_text_outline_ext("Back", real_zero + 3, back_button_y, c_black, c_white)
			
	surface_reset_target()
	
	if selected = true and objPracticeControl.in_menu = true {
		for(var ding = 0; ding < 3; ding++) {
			for(var dingh = 0; dingh < 3; dingh++) {
				draw_set_alpha(0.5 * alpha)
				if objPracticeControl.enemy_place[ding, dingh] != -1 {
					draw_sprite(object_get_sprite(objPracticeControl.enemy_place[ding, dingh]), 0, 184 + dingh * 48, 112 + ding * 48)
				} else {
					draw_circle_color(164 + dingh * 48, 92 + ding * 48, 20, c_white, c_white, 0)
				}
				draw_set_alpha(1)
			}
		}
	}
	
	draw_set_alpha(alpha)
	draw_surface(enemy_select_surface, objPracticeControl.menu_x + 91, 0)
	draw_set_alpha(1)

} else if !surface_exists(enemy_select_surface){
	enemy_select_surface = surface_create(max_width, max_height)
} else enemy_grid_surface = surface_create(max_width - 2, 129)