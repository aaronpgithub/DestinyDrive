/// @description creating retracting bullets


alarm[5] = 12

if alarm[0] > room_speed * 7
{
    repeat(irandom_range(1, 3))
    {
    var inst = instance_create(-10, random_range(-100, 430), objRetractingBullets)
    
        with(inst)
        {
        damage = 1
        spd = 2 * global.enemy_spd
        angle = point_direction(x, y, objAnarchistOfTime.x - 50, objAnarchistOfTime.y - 20)
        
        sprite_index = sprEnemyBulletMedium
        image_angle = angle
        }
    }
}

