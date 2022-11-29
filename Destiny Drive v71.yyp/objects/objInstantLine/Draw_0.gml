for(var pl = 0; pl < path_get_number(instant_path); pl++)
{
	var pl2 = pl
	
	if pl < path_get_number(instant_path) - 1 pl2 = pl + 1
	
	if path_get_point_speed(instant_path, pl2) != 0 pl2 = pl
	
    draw_line_width_colour(path_get_point_x(instant_path, pl), path_get_point_y(instant_path, pl), path_get_point_x(instant_path, pl2), path_get_point_y(instant_path, pl2), 3, c_black, c_black)
	draw_line_width_colour(path_get_point_x(instant_path, pl), path_get_point_y(instant_path, pl), path_get_point_x(instant_path, pl2), path_get_point_y(instant_path, pl2), 2, cl, cl)
}

