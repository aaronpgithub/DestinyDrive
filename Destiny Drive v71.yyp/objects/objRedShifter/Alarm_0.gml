alarm[0] = 25

var red_shift_inst = instance_create(x, y, objEnemyBullet);

with(red_shift_inst)
{
spd = -4 * global.enemy_spd
sprite_index = sprRedShifterBullet
damage = 1
angle = 0
image_angle = angle
}

champion_bullet(red_shift_inst)

