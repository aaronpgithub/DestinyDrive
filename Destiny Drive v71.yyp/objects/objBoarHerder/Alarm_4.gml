alarm[4] = 45

var inst;

inst = instance_create(x, y, objEnemyBullet)

with(inst)
{
damage = 3
spd = 9 * global.enemy_spd
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-1, 1)
image_angle = angle
}

