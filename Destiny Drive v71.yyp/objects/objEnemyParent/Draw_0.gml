if poisoned > -1 {
	
	if global.frame_time % 5 = 0 {
		
		if poisoned > 0 {
		shader_set(invert_color_normalalpha)
		if invincible = false hp -= floor(max_hp * 0.02)
		}
		poisoned--
	}
}

if draw_shadow = true {
	if shadow_height = 0.56 {
		if object_index != objWaste and object_index != objParasiteWorm {
		shadow(1)
		}
		else {
		shadow(0)
		}
	} else shadow(shadow_height)
} else draw_self()

if ds_map_exists(global.item_map, "book_of_monsters")
{
draw_sprite_ext(sprChargeBack, 0, x - (sprite_width / 2), y + 5, 1, 1, 0, c_white, image_alpha)

    if hp > 0
    {
    draw_sprite_part_ext(sprCharge, 0, 0, 0, hp * (sprite_get_width(sprCharge) / max_hp), 24, x - (sprite_width / 2), y + 5, 1, 1, c_red, image_alpha)
    }
}

if image_alpha > 0
    if champ != c_white
        draw_sprite_ext(sprite_index, image_index, x + random_range(-1.5, 1.5), y + random_range(-1.5, 1.5), image_xscale, image_yscale, image_angle, champ, 0.8)

if flash = true
	flash_script()

shader_reset()
