/// @description shooting

var splurt_inst, splurt_inst2;

if hp > 0
{
alarm[0] = random_range(30, 100)
sprite_index = sprSplurterShoot
image_index = 0

    splurt_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
    with(splurt_inst)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + 5
        spd = 3 * global.enemy_spd
        damage = 1                 
                
        image_angle = angle
    }
    
    splurt_inst2 = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objEnemyBullet)
    with(splurt_inst2)
    {
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) - 5
        spd = 3 * global.enemy_spd
        damage = 1                     
                
        image_angle = angle
    }
    
    champion_bullet(splurt_inst)
    champion_bullet(splurt_inst2)
}

