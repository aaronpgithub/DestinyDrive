function explode_flash() {
	globalvar flshalp;

	flash_alpha -= 0.1

	flshalp = flash_alpha

	with(objGameControl)
	{
	draw_set_alpha(flshalp)
	draw_rectangle_colour(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0)
	draw_set_alpha(1)
	}



}
