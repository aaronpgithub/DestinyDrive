/// @description Insert description here
// You can write your code in this editor

if !instance_exists(objPracticeControl) exit;

var alpha = l_menu_alpha * objPracticeControl.menu_alpha

if surface_exists(level_select_surface) {
	
	surface_set_target(level_select_surface)
		
		draw_clear_alpha(c_black, 0)
			
			draw_set_alpha(0.7)
			draw_rectangle_color(0, 0, real_width, max_height, c_black, c_black, c_black, c_black, 0)
			draw_set_alpha(1)
			
			with(objPracticeLevelSelectMenuButton) {
				draw_sprite_ext(sprite_index, image_index, objPracticeLevelSelectMenu.real_width - objPracticeLevelSelectMenu.max_width + 3, y, fake_xscale, image_yscale, image_angle, c_white, image_alpha)					//to get the correct depth, have practice control draw the button instead
			}
			
			var seen_index = 0;
				repeat(ds_list_size(seen_levels)) {
					draw_text_outline_ext(seen_levels[| seen_index], (real_width - max_width) + 5, 5 + (seen_index * 12), c_black, c_white)
					seen_index++
				}
			draw_set_alpha(1)
			
	surface_reset_target()
	
	draw_set_alpha(alpha)
	draw_surface(level_select_surface, objPracticeControl.menu_x + 91, 0)
	draw_set_alpha(1)
	
} else level_select_surface = surface_create(max_width, max_height)