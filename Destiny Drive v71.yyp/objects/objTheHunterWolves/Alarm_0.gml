var inst;

if hp > 0
{
alarm[0] = random_range(30, 100)

    repeat(2)
    {
    image_index = 0
    
    inst = instance_create(x, y, objEnemyBullet)
    
        with(inst)
        {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
        spd = 4 * global.enemy_spd
        damage = 1                
                
        image_angle = angle
        }
        
        champion_bullet(inst)
    }
}

