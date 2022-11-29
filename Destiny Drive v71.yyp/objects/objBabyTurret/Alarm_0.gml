var opydop = instance_create(x, y, objBullet)

with(opydop)
{
damage = 7 * global.dmg
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + (random_range(-10, 10) * global.accuracy)
spd = 6 * global.shot_speed
}

alarm[0] = 10

