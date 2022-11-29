var shootyinst;

shootyinst = instance_create(x - 32, y, objEnemyBullet)

with(shootyinst)
{
damage = 1
spd = 5 * global.enemy_spd
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-13, 13)
image_angle = angle
}

if angry = false
{
alarm[2] = 17
}
else
{
alarm[2] = 15
}

