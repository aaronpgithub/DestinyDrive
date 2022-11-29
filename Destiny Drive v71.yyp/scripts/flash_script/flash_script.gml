function flash_script() {
	var hp_shader;

	hp_shader = hp / max_hp

	shader_set(flash_shader);
	shader_set_uniform_f(global.shader_flash, 1.0, hp_shader, hp_shader)

	    if sprite_exists(sprite_index)
	    {
	    draw_self();
	    }

	shader_reset();
	flash = false



}
