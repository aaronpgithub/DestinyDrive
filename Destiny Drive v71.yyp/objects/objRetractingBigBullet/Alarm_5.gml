globalvar ugh_ang;

angle_add += 5

alarm[5] = 26

for(ugh_ang = 7; ugh_ang >= 0; ugh_ang--)
{
    var ugh_ang_inst = instance_create(x, y, objEnemyBullet)
    
    with(ugh_ang_inst)
    {
    spd = 2.5
    angle = (45 * ugh_ang) + objRetractingBigBullet.angle_add
    damage = 1
    
    image_angle = angle
    }
}

