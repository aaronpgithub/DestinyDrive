/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

shader_set(flash_shader_universal)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, alarm[0] / wait_zig)
shader_reset()