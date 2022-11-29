/// @description Insert description here
// You can write your code in this editor
draw_self()

if !instance_exists(objWhiteEggi) invisible_radius = 0

invisible_lerp = lerp(invisible_lerp, invisible_radius, 0.3)

if surface_exists(invis_surf) {
	if invisible_lerp > 0 {
	
		surface_set_target(invis_surf)
	
		draw_clear_alpha(c_black, 0)
	
		with(objEnemyBulletParent) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, bullet_color, image_alpha)
	
		gpu_set_blendmode_ext(bm_zero, bm_inv_src_alpha)
	
		draw_circle_colour(objPlayer_x, objPlayer_y, invisible_lerp, c_black, c_black, 0)
	
		gpu_set_blendmode(bm_normal)
	
		draw_circle_colour(objPlayer_x, objPlayer_y, invisible_lerp, c_black, c_black, 1)
	
		surface_reset_target()
	
		draw_surface(invis_surf, 0, 0)
	}
} else {
	invis_surf = surface_create(room_width, room_height)
}