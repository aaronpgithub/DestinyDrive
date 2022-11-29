/// @description Insert description here
// You can write your code in this editor
#region circles
	if surface_exists(circle_surface) {
		surface_set_target(circle_surface)
			var circle_at_2 = 0;
	
			if ds_list_size(plague_circles) > 0 {
				for(circle_at_2_2 = 0; circle_at_2 < ds_list_size(plague_circles); ) {
					var color = c_white
			
					if sign(ds_list_find_value(plague_circles, circle_at_2)) = -1 color = c_black
			
					draw_circle_color(plague_radius, plague_radius, abs(ds_list_find_value(plague_circles, circle_at_2)), color, color, 0)
			
					ds_list_replace(plague_circles, circle_at_2, ds_list_find_value(plague_circles, circle_at_2) + circle_speed * sign( ds_list_find_value(plague_circles, circle_at_2 ) ) )
			
					if abs(ds_list_find_value(plague_circles, circle_at_2)) >= plague_radius {
						ds_list_delete(plague_circles, circle_at_2)
						circle_at_2--
					}
			
					circle_at_2++
				}
			}

		surface_reset_target()
	} else circle_surface = surface_create(plague_radius * 2 + 10, plague_radius * 2 + 10)
#endregion

draw_set_alpha(image_alpha)
draw_surface(circle_surface, x - plague_radius, y - plague_radius)
draw_set_alpha(1)