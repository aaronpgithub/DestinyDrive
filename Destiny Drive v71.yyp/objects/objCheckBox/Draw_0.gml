draw_self()

if instance_exists(objPauseMenuOptions) {
	if objPauseMenuOptions.options = true
	{
	draw_set_halign(fa_left)
	    draw_text_outline(string(changes), 20, y)
	draw_set_halign(fa_center)
	}
}