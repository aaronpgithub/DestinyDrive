if surface_exists(global.tele_surf) {
	surface_set_target(global.tele_surf)
	if ID != 0 //so the first circle, which doesnt die, doesnt create too big a circle
	{
	draw_set_alpha(image_alpha)
	draw_circle_colour(x, y, radius, color, color, false)
	draw_set_alpha(1)
	}
	else
	{
	    if radius < 600
	    {
	    draw_set_alpha(image_alpha)
	    draw_circle_colour(x, y, radius, color, color, false)
	    draw_set_alpha(1)
	    }
	}
surface_reset_target()
}