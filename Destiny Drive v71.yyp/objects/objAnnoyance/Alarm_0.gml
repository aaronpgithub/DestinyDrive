alarm[0] = 7

var annoy_inst = instance_create(pos_x, ystart, objEnemyBullet);

with(annoy_inst)
{
spd = -3 * global.enemy_spd
damage = 1
angle = 0
image_angle = angle
}

champion_bullet(annoy_inst)

