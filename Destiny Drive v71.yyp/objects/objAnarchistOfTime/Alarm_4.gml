/// @description Bullet BLAST!

alarm[4] = 45


sped = 0 //the bullet used reacts to this variable, we dont want that for this attack!

if pause = false
{
    globalvar blast_ang, anoth_ang;
    var ypos = random_range(90, 220)
    anoth_ang = 180 + point_direction(x, ypos, x - 180, 128)
    
    for(blast_ang = 7; blast_ang >= -7; blast_ang--)
    {
    var blasint = instance_create(x, ypos, objEnemyTimeBullet)
    
        with(blasint)
        {
            if frac(abs(blast_ang) / 2) = 0
            {
            spd = -1
            angle = anoth_ang + ((blast_ang / 2) * 12)
            //angle = anoth_ang + (12 * blast_ang) + choose(-3, 3)
            }
            else
            {
            spd = -2
            angle = anoth_ang + ((blast_ang / 2) * 12)
            //angle = anoth_ang + (12 * blast_ang)
            }
            
            sprite_index = sprEnemyBulletMedium
        image_angle = angle
        }
    }
}

