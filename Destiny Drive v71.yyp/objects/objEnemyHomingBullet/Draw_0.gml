/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if third_miniboss = true and distance != -1 and abs(objPlayer_x - x) < distance * 2 {
	close_alpha = 2 * (distance / point_distance(x, y, objPlayer_x, objPlayer_y)) - 1
	
	shader_set(flash_shader_universal)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, close_alpha)
	shader_reset()
}