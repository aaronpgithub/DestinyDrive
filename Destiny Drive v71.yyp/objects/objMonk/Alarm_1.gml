/// @description shooting
if image_alpha = 1
{
alarm[1] = 23
    var monk_inst = instance_create(x, y, objIllusionBullet);
    
    with(monk_inst)
    {
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-20, 20)
    spd = 3 * global.enemy_spd
    damage = 1
    image_angle = angle
    }
    
    champion_bullet(monk_inst)
}

