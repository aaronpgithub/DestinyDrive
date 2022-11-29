globalvar dest_i;

for(dest_i = 13; dest_i > -1; dest_i--)
{
    var inst = instance_create(x, y, objEnemyBullet)
    
    with(inst)
    {
    damage = 1
    angle = 25.7 * dest_i
    spd = 3 * global.enemy_spd
    image_angle = angle
    }
}

