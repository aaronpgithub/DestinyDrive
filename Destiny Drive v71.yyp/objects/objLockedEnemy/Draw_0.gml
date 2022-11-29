event_inherited()

if instance_exists(objPlayer)
{
    if global.hp > 0
    {
    len += 15
    
    draw_line_colour(x - 15, y - 25, x + lengthdir_x(len, angle), y + lengthdir_y(len, angle), c_red, c_red)
    }
}

