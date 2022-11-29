/// @description bullet blast

alarm[0] = 50

globalvar randangburd, angburdfor;

randangburd = random(360)

for(angburdfor = 7; angburdfor >= 0; angburdfor--)
{
    var trump = instance_create(x, y, objEnemyBullet)
    
        with(trump)
        {
        angle = (angburdfor * 45) + randangburd
        damage = 1
        spd = 3 * global.enemy_spd
        image_angle = angle
        }
}

