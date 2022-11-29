event_inherited()

if x > objPlayer_x
{
angle = point_direction(x, y, x - 85, objPlayer_y + random_range(-1, 1))
image_angle = angle
image_xscale = -1
motion_set(angle, spd)
}

