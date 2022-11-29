/// @description Bullet Blast
alarm[2] = 35

globalvar howmanygoddamnvarsdoineed; //for angle

for(howmanygoddamnvarsdoineed = 5; howmanygoddamnvarsdoineed >= 0; howmanygoddamnvarsdoineed--)
{
var hmgvdin = instance_create(x, y, objEnemyBullet)

    with(hmgvdin)
    {
    angle = -28 + (howmanygoddamnvarsdoineed * 9.3)
    spd = -3 * global.enemy_spd
    image_angle = angle
    }
}

