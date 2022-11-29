/// @description Insert description here
// You can write your code in this editor

var dont_draw = false

if instance_exists(objPsychicGod) {
	if objPsychicGod.invisible_radius > 0 dont_draw = true
}

if dont_draw = false {
	if sprite_exists(sprite_index) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, bullet_color, image_alpha)
}