event_inherited()

if instance_exists(objPlayer)
{
    if global.hp > 0
    {
    len += 15
    
	var lase_cola = make_color_hsv(20, 206, 221)
	
    draw_line_width_colour(x - lock_xoff, y - lock_yoff, x + lengthdir_x(len, angle), y + lengthdir_y(len, angle), 1.5, lase_cola, lase_cola)
    }
}

