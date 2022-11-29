/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if alarm[0] < 19 and not_real = true {
	shader_set(flash_shader_universal)
	
	draw_set_alpha(image_alpha - 0.2)
		draw_sprite(sprite_index, 0, x, y)
	draw_set_alpha(1)
	
	shader_reset()
}