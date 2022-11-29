draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)

/*
draw_set_font(fnSplashFont)
if phase = "name"
{
    if spec_logo_chance != 0.01
    {
    draw_set_halign(fa_center)
    draw_set_colour(c_white)
    draw_text((room_width / 2) + random_range(-2, 2), 60 + random_range(-2, 2), string(string_start))
    draw_set_colour(c_black)
    draw_set_halign(fa_left)
    }
    else
    {
        for(var i = 40; i > 0; i--)
        {
        draw_set_halign(fa_center)
        draw_set_colour(c_white)
        draw_text((room_width / 2) - 200 + random_range(-2, 2), 0 + (18 * i) + random_range(-2, 2), string(string_start))
        draw_text((room_width / 2) + random_range(-2, 2), 0 + (18 * i) + random_range(-2, 2), string(string_start))
        draw_text((room_width / 2) + 200 + random_range(-2, 2), 0 + (18 * i) + random_range(-2, 2), string(string_start))
        draw_set_colour(c_black)
        draw_set_halign(fa_left)
        }
    }
}
draw_set_font(fnGameFont)

/* */
/*  */
