shadow(10)

if attack_choice = 1
{
    if frac(alarm[2] / 2) = 0
    {
        draw_rectangle_colour(160, road_y_min + 3, room_width - 3, road_y_max - 9, c_white, c_white, c_white, c_white, 1)
    }
}


if attack_choice = 4
{
    if frac(alarm[5] / 2) = 0 and view_w != 80
    {
        draw_rectangle_colour(chosex, chosey, chosex + 80, chosey + 64, c_white, c_white, c_white, c_white, 1)
    }
}


