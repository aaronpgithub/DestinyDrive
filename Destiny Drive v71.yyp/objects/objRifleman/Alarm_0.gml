/// @description shoot
if !instance_exists(objPlayer) exit;

randomalarm = room_speed * random_range(2, 4);

alarm[0] = randomalarm

var inst;

inst = instance_create(x, y, objEnemyBullet)

with(inst)
{
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
spd = 4 * global.enemy_spd
damage = 5
}

champion_bullet(inst)


