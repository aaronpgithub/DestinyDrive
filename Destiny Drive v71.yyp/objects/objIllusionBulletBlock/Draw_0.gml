/// @description Insert description here
// You can write your code in this editor

if instance_exists(objCarriageOfIllusion) {
	var sndtr = objCarriageOfIllusion.illusion_val_sin;
		
		if global.frame_time % 5 = 1 and objCarriageOfIllusion.attack_choice = 3 sndtr += 5
		
		var il_c = make_color_hsv(220 - sndtr * 20, 210 - (60 * sndtr), 255 * sndtr)

	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, il_c, image_alpha)
}