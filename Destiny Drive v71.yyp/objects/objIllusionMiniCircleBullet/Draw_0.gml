/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(follow_mini) {
	
	var sat = 125;
	
	if follow_mini.alarm[0] < follow_mini.alarm_len {
		sat = 255
	}
	
	bullet_color = make_color_hsv(follow_mini.color_circle, sat, 255)
	
	if follow_mini.evil = true {
		if sat = 125 {
			bullet_color = c_maroon
		} else {
			bullet_color = c_red
		}
	}
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, bullet_color, image_alpha)
}