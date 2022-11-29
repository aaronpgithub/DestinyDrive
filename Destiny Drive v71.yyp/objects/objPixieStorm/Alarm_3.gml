/// @description Spinning shot

alarm[3] = 12

angle += 5

globalvar bloodyhell;

for(bloodyhell = 15; bloodyhell >= 0; bloodyhell--)
{
    var blast = instance_create(x, y, objEnemyBullet)
    
        with(blast)
        {
        damage = 1
        angle = (22.5 * bloodyhell) + objPixieStorm.angle
        spd = 3 * global.enemy_spd
        image_angle = angle
        }
}

