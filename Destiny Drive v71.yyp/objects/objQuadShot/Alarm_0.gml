alarm[0] = random_range(30, 40)

globalvar quad_i;

for(quad_i = 3; quad_i > -1; quad_i--)
{   
    var quad_inst = instance_create(x, y, objEnemyBullet)

    with(quad_inst)
    {
    spd = 4 * global.enemy_spd
    damage = 2
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + (5 * quad_i) - 12.5
    image_angle = angle
    
        if angle = point_direction(x, y, objPlayer_x, objPlayer_y) + (5 * 1) - 12.5 or angle = point_direction(x, y, objPlayer_x, objPlayer_y) + (5 * 2) - 12.5
        {
        spd = 3 * global.enemy_spd
        }
    }
    
    champion_bullet(quad_inst)
}



