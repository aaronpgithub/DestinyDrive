/// @description shooting debris
var smoker_inst;

alarm[5] = 60

smoker_inst = instance_create(x - 10, y - 12, objEnemyBullet)

with(smoker_inst)
{
image_xscale = 0
image_yscale = 0
deb = true
damage = 2
spd = -3 * global.enemy_spd
angle = 0
}

champion_bullet(smoker_inst)

