alarm[0] = 50

var blu_shift_inst = instance_create(x, y - 8, objEnemyBullet);

with(blu_shift_inst)
{
spd = -2 * global.enemy_spd
sprite_index = sprBlueShifterBullet
damage = 1
angle = 0
image_angle = angle
}

champion_bullet(blu_shift_inst)

