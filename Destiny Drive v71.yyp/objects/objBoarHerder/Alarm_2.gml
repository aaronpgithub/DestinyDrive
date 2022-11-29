alarm[2] = 13

var inst;

inst = instance_create(x, y, objEnemyBullet)

with(inst)
{
damage = 1
spd = 6 * global.enemy_spd
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-13, 13)
image_angle = angle
}

