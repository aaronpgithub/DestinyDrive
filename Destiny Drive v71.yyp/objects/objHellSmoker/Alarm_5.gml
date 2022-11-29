/// @description shooting debris
var smoker_inst;

alarm[5] = random_range(100, 200)

hlsmoker_inst = instance_create(x - 10, y - 12, objHellSmokerBullet)

with(hlsmoker_inst)
{
image_xscale = 0
image_yscale = 0
deb = true
damage = 3
spd = -2 * global.enemy_spd
angle = random_range(-5, 5)
}

champion_bullet(hlsmoker_inst)

