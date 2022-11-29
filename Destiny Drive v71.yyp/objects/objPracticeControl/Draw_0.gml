/// @description Insert description here
// You can write your code in this editor

var toggle_menu = keyboard_check_pressed(vk_tab);

if toggle_menu {
	in_menu = !in_menu
	
	if in_menu = false {
		instance_activate_all()
	} else { with(all) event_perform(ev_other, ev_user0) }
	
	if instance_exists(objBackgroundControl) {
		if global.current_level != settings_array[0, 1] {
			with(objBackgroundControl) spawn = true
		}
	}
}

if in_menu = true {
	#region //Paused screen
	if surface_exists(practice_pause_surface) {										//PAUSED SCREEN
		if instance_exists(objGameControl) {
			surface_set_target(practice_pause_surface)
			
				draw_clear_alpha(c_black, 0)										//Clearing Previous frame
				
			shader_set(solidalpha)
			draw_surface_ext(application_surface, 0, 0, 0.5, 0.5, 0, c_white, 1)	//Drawing pause
			shader_reset()
			
			surface_reset_target()
		}
	} else practice_pause_surface = surface_create(room_width, room_height)		
	#endregion
	
	instance_deactivate_all(true)
	instance_activate_object(objPracticeObjectParent)
	instance_activate_object(objGlobalControl)
	instance_activate_object(objWindowControl)
	
	if instance_exists(objPracticePauseBack) {										//Copying the drawn application surface to the lower depth surface
		surface_copy(objPracticePauseBack.background_surf, 0, 0, practice_pause_surface)
	}
}

#region Drawing on Practice surface
if surface_exists(practice_menu_surface) {
	
	var txt_x = menu_x + 5
	
	surface_set_target(practice_menu_surface)										//SET PRACTICE SURFACE
	
	draw_clear_alpha(c_black, 0)
	
	draw_set_alpha(0.7)
	draw_rectangle_color(0, 0, lerp_menu, room_height, c_black, c_black, c_black, c_black, 0)
	draw_set_alpha(1)
	
	with(objPracticeObjectParent) {
		if sprite_exists(sprite_index) and sprite_index != sprPracticeMenuButton 
		and sprite_index != sprPracticeMenuScrollButton and sprite_index != sprPracticeMenuScrollArrow
		and sprite_index != sprCoopArrow and sprite_index != sprPracticeEnemyGrid {
			draw_self()
		}
	}
	
	with(objPracticeMenuButton) {
		if object_get_parent(object_index) != objPracticeMenuButton draw_sprite_ext(sprite_index, image_index, x, y, fake_xscale, image_yscale, image_angle, c_white, image_alpha)					//to get the correct depth, have practice control draw the button instead
	}
	
	//Drawing Text
	globalvar practice_text_yoff;
	practice_text_yoff = 0
	
	for(var arrp = 0; arrp < array_height_2d(settings_array); arrp++) {
		var color_inv = c_white;
		
		if settings_array[arrp, 0] = "Invincibility" and player_invincible = true and div_in(global.frame_time, 5) color_inv = c_yellow
		
		draw_text_outline_ext(settings_array[arrp, 0], txt_x, 5 + practice_text_yoff, c_black, color_inv)
		
		practice_text_yoff += 12
	}
	
	surface_reset_target()															//RESET PRACTICE SURFACE
	
} else practice_menu_surface = surface_create(room_width, room_height)
#endregion

draw_set_alpha(menu_alpha)
draw_surface(practice_menu_surface, 0, 0)
draw_set_alpha(1)