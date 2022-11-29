if instance_exists(objHorrorApparition)
{
        if alpha < 1 {
        alpha += 0.05
        }
        
        len = 50
		
		if objHorrorApparition.attack_choice = 1 len = 30
		if objHorrorApparition.attack_choice = 4 len = 6
		
        len_dest = lerp(len_dest, len, 0.1)
    
    if alpha < 0 instance_destroy()
}

if instance_exists(objPlayer)
{
dark_x = objPlayer_x
dark_y = objPlayer_y
}

if surface_exists(darksurf)
{
    surface_set_target(darksurf)
        
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
	
		#region existing checks
		if instance_exists(objHorrorBullet) {
			with(objHorrorBullet) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 1)
		}
		if instance_exists(objHorrorLaser) {
			with(objHorrorLaser) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, make_color_hsv(0, 0, 255 * image_alpha), 1)
		}
		if instance_exists(objFlashBullet) {
			with(objFlashBullet) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
		}
		if instance_exists(objBullet) {
			shader_set(invert_color_normalalpha)
				with(objBullet) draw_self()
			
			if instance_exists(objBulletDestroy) {
				with(objBulletDestroy) draw_self()
			}
			shader_reset()
		}
		#endregion
		
		if instance_exists(objHorrorApparition) {
			if dark_flash = true shader_set(flash_shader_universal)
			draw_sprite(sprHorrorApparitionDark, 0, objHorrorApparition.x, objHorrorApparition.y)
			shader_reset()
			dark_flash = false
		}
		
		if objPlayer_y < road_y_min + 96 {
			for(var glg = -96; glg <= 96; glg++) {
				if point_distance(objPlayer_x + glg, road_y_min - 2, objPlayer_x, objPlayer_y) > len_dest {
					var glgl = point_distance(objPlayer_x + glg, road_y_min - 2, objPlayer_x, objPlayer_y) / 96
					draw_set_alpha(1 - glgl)
					draw_point_color(objPlayer_x + glg, road_y_min - 2 + random_range(-2, 2) * (1 - glgl), c_white)
					draw_set_alpha(1)
				}
			}
		}

    draw_set_blend_mode_ext(bm_zero, bm_inv_src_alpha)
        
    draw_circle_colour(dark_x, dark_y, len_dest, c_white, c_black, 0)
        
    draw_set_blend_mode(bm_normal)
        
    surface_reset_target()
        
    draw_set_alpha(alpha)
        
    draw_surface(darksurf, 0, 0)
        
    draw_set_alpha(1)
}
else
{
	darksurf = surface_create(room_width, room_height)
}