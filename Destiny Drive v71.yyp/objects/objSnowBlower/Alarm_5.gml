/// @description shooting debris
var snowbl;

alarm[5] = 12

globalvar snfor;

repeat(3)
{
    var snowbl = instance_create(x, y, objEnemyBullet)
    
        with(snowbl)
        {
        spd = -1.4 * global.enemy_spd
        damage = 1
        angle = random_range(-35, 35)
        }
}

