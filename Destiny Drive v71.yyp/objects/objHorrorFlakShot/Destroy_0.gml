event_inherited()

globalvar heydude;

for(heydude = 7; heydude >= 0; heydude--)
{
    var explodedglkak = instance_create(x, y, objEnemyBullet)
    
        with(explodedglkak)
        {
        damage = 1
        spd = -3 * global.enemy_spd
        angle = (8 * heydude) - 32
        image_angle = angle
        }
}

