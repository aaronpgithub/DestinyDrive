globalvar iii, imgam;
imgam = image_angle

for(iii = 0; iii < 8; iii++)
{
var flkinst = instance_create(x, y, objEnemyBullet)

    with(flkinst)
    {
        angle = (iii * 45) + imgam
        spd = 2.5 * global.enemy_spd
        image_angle = angle
    }
}

instance_destroy()

