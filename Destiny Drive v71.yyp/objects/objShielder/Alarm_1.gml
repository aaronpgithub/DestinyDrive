if burst > 0
{
var shielder_inst;
shielder_inst = instance_create(x - (sprite_get_width(sprite_index) / 2), y - (sprite_get_height(sprite_index) / 2), objEnemyBullet)
alarm[1] = 7

    with(shielder_inst)
    {
    spd = 6 * global.enemy_spd
    damage = 1
    angle = point_direction(x - (sprite_get_width(sprite_index) / 2), y - (sprite_get_height(sprite_index) / 2), objPlayer_x, objPlayer_y)
    image_angle = angle
    motion_add(angle, spd)
    }
    
    champion_bullet(shielder_inst)
}
else
{
sprite_index = sprShielder
image_speed = 0.2
alarm[2] = room_speed * 1
}
burst -= 1

