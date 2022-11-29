draw_self()

if draw_size <= 0
{
draw_size = 1.3
}

draw_size -= size_dec //the amount it is decreasing by

if alarm[0] > 0
{
size_dec = 0.0008 * (room_speed * 4.2 - alarm[0])
}
else
{
draw_size = 0
}

draw_sprite_ext(sprWarningMarker, 0, target_x, target_y, draw_size, draw_size, 0, c_white, 1)

