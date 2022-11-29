event_inherited()

if alarm[5] < room_speed * 2 and x < room_width
{
    if frac(alarm[5] / 2) = 0
    {
    draw_sprite_ext(sprWarning, 0, x + 15, y - 22, 1, 1, 0, c_white, 1)
    }

    draw_line_colour(x, y, x + lengthdir_x(600, point_direction(x, y, objPlayer_x, objPlayer_y)), y + lengthdir_y(600, point_direction(x, y, objPlayer_x, objPlayer_y)), c_red, c_red)
}

