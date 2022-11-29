/// @description shoot

alarm[0] = room_speed * 1.3

var inst;

inst = instance_create(x, y, objEnemyFireball)

with(inst)
{
angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
spd = 3 * global.enemy_spd
damage = 2
}

champion_bullet(inst)


