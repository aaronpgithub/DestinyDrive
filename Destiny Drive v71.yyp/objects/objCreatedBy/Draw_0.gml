if special = 0.01 {
	for(var i = 0; i < 8; i++) {
		for(var iy = 0; iy < 5; iy++) {
			draw_sprite_ext(sprite_index, image_index, i * 48, iy * 64, image_xscale, image_yscale, image_angle, color, image_alpha)
		}
	}
	
	draw_text_color(20, 20, fps_real, c_white, c_white, c_white, c_white, 1)
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, image_alpha)
}