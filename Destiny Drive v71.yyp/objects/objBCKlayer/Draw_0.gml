/// @description Insert description here
// You can write your code in this editor

if instance_exists(objBackgroundControl) {
	if objBackgroundControl.draw_background = false exit;
	
		var back_rep = 0;

			repeat(3) {
			draw_sprite_ext(background_array[back_rep, 0], background_array[back_rep, 1], background_array[back_rep, 2], background_array[back_rep, 3], image_xscale, image_yscale, image_angle, background_decal_color, image_alpha)
	
				if shadow_to_draw = true and sprite_exists(background_array[back_rep, 0]) {
					shadow(0, false, background_array[back_rep, 0], background_array[back_rep, 1], background_array[back_rep, 2], background_array[back_rep, 3])
				}
		
			back_rep++
			}
}