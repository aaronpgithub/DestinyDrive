/// @description Insert description here
// You can write your code in this editor
alarm[0] = 120

repeat(8)
{
var qutub_die_inst = instance_create(x - 14, y - 20, objFlyBullet)

    with(qutub_die_inst)
    {
    spd = -(random_range(1, 2)) * global.enemy_spd
    angle = point_direction(x, y, 0, road_random()) + 180
    image_angle = angle
    }
    
    champion_bullet(qutub_die_inst)
}