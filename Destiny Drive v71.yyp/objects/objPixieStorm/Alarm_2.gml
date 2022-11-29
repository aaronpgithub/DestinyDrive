/// @description four corner shooting

if alarm[0] >= room_speed * 4
{
alarm[2] = 25

globalvar totang, angrand;

angrand = random_range(-15, 15)

for(var rwidth = 1; rwidth >= 0; rwidth--)
{
    for(var rheight = 1; rheight >= 0; rheight--)
    {
        var pixbla = instance_create(0 + (320 * rwidth), 0 + (250 * rheight), objEnemyBullet)
            
            with(pixbla)
            {
            damage = 1
            spd = 1 * global.enemy_spd
            angle = point_direction(0 + (320 * rwidth), 0 + (250 * rheight), room_width / 2, 140) + random_range(-45, 45)
            image_angle = angle
            }
    }
}

        var pixbla2 = instance_create(room_width / 2, 0, objEnemyBullet)
            
            with(pixbla2)
            {
            damage = 1
            spd = 2 * global.enemy_spd
            angle = point_direction(x, y, objPlayer_x, objPlayer_y)
            image_angle = angle
            }
}

