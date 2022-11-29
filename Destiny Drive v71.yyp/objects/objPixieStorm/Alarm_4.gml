/// @description blast!

alarm[4] = 75

globalvar randang, blastang;

randang = random(360)

for(blastang = 35; blastang >= 0; blastang--)
{
    var blastvar = instance_create(x, y, objEnemyBullet)
    
    with(blastvar)
    {
    damage = 1
    spd = 4 * global.enemy_spd
    angle = (10 * blastang) + randang
    image_angle = angle
    }
}

