alarm[4] = 4

if angle >= 100 exit;

globalvar ahlr;
ahlr = angle

var insted = instance_create(x, y - 4, objEnemyBullet)
with(insted)
{
angle = ahlr
damage = 1
spd = -3 * global.enemy_spd
}

var insted2 = instance_create(x, y + 4, objEnemyBullet)
with(insted2)
{
angle = -(ahlr)
damage = 1
spd = -3 * global.enemy_spd
}

