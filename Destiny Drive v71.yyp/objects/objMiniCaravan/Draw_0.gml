event_inherited()

if instance_exists(objPlayer)
{
    if objPlayer_x > 180
    {
    draw_line_colour(x - (sprite_width / 2), y - (sprite_height / 2), objPlayer_x, objPlayer_y, c_red, c_red)
    }
}