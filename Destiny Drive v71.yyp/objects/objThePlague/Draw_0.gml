/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var flash_plague = flash;

event_inherited();

if objPlayer_x > warning_x draw_sprite(sprWarning, 0, objPlayer_x + 12, objPlayer_y + 12)

#region circles
if !instance_exists(objPlagueTeleport) {
	if surface_exists(plague_surface) {
		surface_set_target(plague_surface)
		if sprite_index = sprThePlagueAngry draw_clear_alpha(c_black, 0)
			var circle_at = 0;
	
			#region happy stuff
			if happy = true {
				happy_color_1++
				happy_color_2++
	
				happy_color_1 = happy_color_1 mod 255
				happy_color_2 = happy_color_2 mod 255
			}
			#endregion
	
			if ds_list_size(plague_circles) > 0 {
				for(circle_at = 0; circle_at < ds_list_size(plague_circles); ) {
					var color = c_white
			
					if sign(ds_list_find_value(plague_circles, circle_at)) = -1 color = c_black
			
						if happy = true {
							if color = c_white color = make_color_hsv(happy_color_1, 255, 255)
							if color = c_black color = make_color_hsv(happy_color_2, 255, 255)
						}
			
					draw_circle_color(plague_radius, plague_radius, abs(ds_list_find_value(plague_circles, circle_at)), color, color, 0)
			
					ds_list_replace(plague_circles, circle_at, ds_list_find_value(plague_circles, circle_at) + circle_speed * sign( ds_list_find_value(plague_circles, circle_at) ) ) 
			
					if abs(ds_list_find_value(plague_circles, circle_at)) >= plague_radius {
						ds_list_delete(plague_circles, circle_at)
						circle_at--
					}
			
					circle_at++
				}
			}

		surface_reset_target()
	} else plague_surface = surface_create(plague_radius * 2 + 10, plague_radius * 2 + 10)
}
#endregion

var surfsprite = 0;

mid_x = x - sprite_get_width(mask_index) / 2
mid_y = y - sprite_get_height(mask_index) / 2

if surface_exists(plague_surface) {
	var offx = 0, offy = 0;
	var surfsprite = sprite_create_from_surface(plague_surface, 0, 0, surface_get_width(plague_surface), surface_get_height(plague_surface), true, false, surface_get_width(plague_surface), surface_get_height(plague_surface))

	if sprite_index = sprThePlagueAngry { offx = path_get_point_x(pThePlagueAngryPath, clamp(image_index, 0, 11)); offy = path_get_point_y(pThePlagueAngryPath, clamp(image_index, 0, 11)); }

shadow(shadow_height, false, surfsprite, 0, x + plague_radius, y - plague_radius, 0)

draw_surface(plague_surface, mid_x - plague_radius + offx, mid_y - plague_radius + offy)
}

	if transition_amount >= portal_transition {
		if attack_choice = 2 {
			var plague_line = 0
		
			if alarm[3] % 2 = 0 {
				repeat(4) {
				draw_line_width_color(tele_x, tele_y, tele_x + lengthdir_x(400, plague_line), tele_y + lengthdir_y(400, plague_line), 5 * (alarm[3] / 30), c_white, c_white)
				plague_line += 90
				}
			}
		}
		
		if alarm[0] < room_speed and attack_choice != 0 {
			draw_sprite(sprWarning, 0, pos_x, pos_y)
		}
	}

if flash_plague = true shader_set(flash_shader)

if happy = true {
	draw_sprite_ext(sprTheHappyPlague, 0, x, y, image_xscale, image_yscale, image_angle, make_color_hsv(happy_color_1, 255, 255), image_alpha)
	draw_sprite_ext(sprTheHappyPlague, 1, x, y, image_xscale, image_yscale, image_angle, make_color_hsv(happy_color_2, 255, 255), image_alpha)
} else draw_self()

shader_reset()

if sprite_exists(surfsprite) sprite_delete(surfsprite)