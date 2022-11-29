alarm[4] = 30

var tanktyinst = instance_create(x, y, objTheMutantTankShot)

with(tanktyinst)
{
angle = 180 + random_range(-15, 15)
image_angle = angle
spd = 4 * global.enemy_spd
damage = 1
}

