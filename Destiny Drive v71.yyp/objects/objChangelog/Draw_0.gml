draw_circle_colour(x, y, circle_rad, c_gray, c_gray, 0)
draw_set_font(fnSplashFont)
if open = true
{
    for(var i = array_length_1d(global.changelog_arr) - 1; i > -1; i--)
    {
    draw_set_halign(fa_left)
        if i != 0
        {
        draw_text_transformed_colour(1, 30 + (12 * i), string_hash_to_newline("- " + string(global.changelog_arr[i])), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, text_alpha)
        }
        else
        {
        draw_set_halign(fa_center)
        draw_set_alpha(text_alpha)
        draw_text_outline("VERSION " + string(global.changelog_arr[i]) + " CHANGELOG:", room_width / 2, 8)
        draw_set_alpha(1)
        }
    }
}
draw_set_font(fnGameFont)

draw_self()

