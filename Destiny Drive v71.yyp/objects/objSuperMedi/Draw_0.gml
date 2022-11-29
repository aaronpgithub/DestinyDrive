event_inherited()

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
        draw_line_width_colour(x - 15, y, damaged_x + random_range(-3, 3), damaged_y + random_range(-3, 3), 3, c_blue, c_blue)
        draw_circle_colour(x - 15, y, 1.5, c_blue, c_blue, 0)
        }
    }
}

if damaged_x2 != 0 and x <= pos_x + 3
{
    if damaged_x2 > xstart - 202 and damaged_y2 < y + 5 and damaged_y2 > y - 5
    {
    //nuthin
    }
    else
    {
    var inst2;
    inst2 = collision_point(damaged_x2 - 2, damaged_y2, objEnemyParent, false, false)
        
        if inst2 != noone
        {
        draw_line_width_colour(x - 15, y, damaged_x2 + random_range(-3, 3), damaged_y2 + random_range(-3, 3), 3, c_blue, c_blue)
        draw_circle_colour(x - 15, y, 1.5, c_blue, c_blue, 0)
        }
    }
}

//draw_text_colour(x, y, string(heal) + ", " + string(heal2), c_black, c_black, c_black, c_black, 1)



