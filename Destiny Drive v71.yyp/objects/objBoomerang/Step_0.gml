t += 15
t = t mod 360
spd = 40 * sin(degtorad(t))
image_angle += 10

sprite_index = sprBoomerang

if go_back = true
{
damage = 0
motion_set(point_direction(x, y, objPlayer.x, objPlayer.y), 10)
}
else
{
motion_set(angle, spd)
}

if spd < 0
{
go_back = true
}

