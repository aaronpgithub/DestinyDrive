alarm[2] = 25

globalvar wally;
wally = y + random_range(-65, 45)

for(var wallfor = -2; wallfor <= 2; wallfor++)
{
var gorgwav = instance_create(x, wally + (wallfor * 8), objGorganSine)

    with(gorgwav)
    {
    damage = 1
    angle = 0
    spd = -2 * global.enemy_spd
    }
}

var esz = instance_create(x, y, objEnemyBullet)

with(esz)
{
damage = 1
angle = point_direction(x, y, objPlayer_x, objPlayer_y)
spd = 3 * global.enemy_spd
}

