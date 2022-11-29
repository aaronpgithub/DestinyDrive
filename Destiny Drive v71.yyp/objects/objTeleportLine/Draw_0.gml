if global.level = "final" exit;

if instance_exists(objTeleport) {
	if size < max_size
	{
	draw_line_width_colour(objTeleport.x, objTeleport.y, objTeleport.x + lengthdir_x(size, angle), objTeleport.y + lengthdir_y(size, angle), 2, c_gray, c_gray)
	}
	else
	{
	draw_line_width_colour(objTeleport.x + lengthdir_x(size - max_size, angle), objTeleport.y + lengthdir_y(size - max_size, angle), objTeleport.x + lengthdir_x(size, angle), objTeleport.y + lengthdir_y(size, angle), 2, c_gray, c_gray)
	}
} else instance_destroy()