event_inherited()

if spiral_eggi = false {
	if damaged_x != 0 and x <= pos_x + 3
	{
	    if damaged_x > xstart - 202 and damaged_y < y + 5 and damaged_y > y - 5
	    {
	    //nuthin
	    }
	    else
	    {
	    var inst;
	    inst = collision_point(damaged_x - 2, damaged_y, objEnemyParent, false, false)
        
	        if inst != noone
	        {
	        draw_line_width_colour(x - 15, y, damaged_x + random_range(-3, 3), damaged_y + random_range(-3, 3), 3, c_green, c_green)
	        draw_circle_colour(x - 15, y, 1.5, c_green, c_green, 0)
	        }
	    }
	}
}