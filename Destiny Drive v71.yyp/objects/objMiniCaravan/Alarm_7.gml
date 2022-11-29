/// @description blast em

if objPlayer_x > 180
{
    var ufkdup = instance_create(x, y, objEnemyBullet)
    
        with(ufkdup)
        {
        spd = 5 * global.enemy_spd
        angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-3, 3)
        damage = 1
        }
        
        champion_bullet(ufkdup)
        
        alarm[7] = 5
}

