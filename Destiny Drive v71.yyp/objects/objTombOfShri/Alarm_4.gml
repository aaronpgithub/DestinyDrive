/// @description Slow Spiral /w Fat bullets FAT BULLETS
if alarm[0] < room_speed * 7 exit;
alarm[4] = 20

repeat(2)
{
var okle = instance_create(300, road_y_mid, objQueenOfFliesBullet)
    
    with(okle)
    {
    image_xscale = 1.5
    image_yscale = 1.5
    damage = 3
    spd = -0.65 * global.enemy_spd
    angle = random_range(-45, 45)
    }
}

