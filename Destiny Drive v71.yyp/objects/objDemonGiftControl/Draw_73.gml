/// @description Insert description here
// You can write your code in this editor
if surface_exists(demon_surface) {
	
	var width_surface, height_surface;
	width_surface = room_width / surface_get_width(application_surface)
	height_surface = room_height / surface_get_height(application_surface)
	
	surface_copy(demon_surface, 0, 0, application_surface)
	
	switch(demon_visual) {
		case "invert":
			if demon_wave = global.wave visual_lerp = lerp(visual_lerp, 1, 0.2)
	
			shader_set(color_shader)
			draw_surface_ext(demon_surface, 0, room_height, width_surface, -(height_surface * visual_lerp), 0, c_white, 1)
			shader_reset()
		break;
		
		case "fade":
			visual_lerp += 1
		
		visual_lerp = visual_lerp mod 180
		
		shader_set(color_shader)
		draw_surface_ext(demon_surface, 0, 0, width_surface, height_surface, 0, c_white, 1)
		shader_reset()
		
		draw_set_alpha(sin(degtorad(visual_lerp)) + 0.025)
		var color_demon = c_black;
			if color_shader = invert_color color_demon = c_white
			draw_rectangle_color(0, 0, room_width, room_height, color_demon, color_demon, color_demon, color_demon, 0)
		draw_set_alpha(1)
		break;
		
		case "zoomglitch":
			if demon_wave = global.wave visual_lerp = lerp(visual_lerp, 1, 0.2)
	
			surface_set_target(demon_surface)
				shader_set(color_shader)
				draw_surface_part_ext(application_surface, 0, road_y_min + 64, surface_get_width(application_surface), (road_y_max - road_y_min) * 2, 0, 0, width_surface, 0.735, c_white, 1)
				shader_reset()
				
				gpu_set_blendmode_ext(bm_inv_src_alpha, bm_zero)
				draw_circle_color(objPlayer_x, objPlayer_y, 65 * visual_lerp, c_black, c_black, 0)
				gpu_set_blendmode(bm_normal)
				draw_circle_color(objPlayer_x, objPlayer_y, 65 * visual_lerp, c_black, c_black, 1)
				
				with(objGameControl) {
					event_perform(ev_draw, 0)
				}
			surface_reset_target()
			
			draw_surface_part_ext(demon_surface, 0, 0, surface_get_width(demon_surface), surface_get_height(demon_surface), 0, 0, 1, 1, c_white, 1)
		break;
		
		case "lines":
			if demon_wave = global.wave visual_lerp = lerp(visual_lerp, 1, 0.2)
	
			lines_movement += 0.25
			if lines_movement > 19 lines_movement = 0
			var line_pos = lines_movement - 330;
			
			repeat(32) {
				draw_set_alpha(visual_lerp)
				draw_line_width_color(line_pos, room_height + 20, line_pos + (room_width + 20), -20, 10, c_black, c_black)
				draw_set_alpha(1)
				
				line_pos += 20
			}
		break;
	}

}