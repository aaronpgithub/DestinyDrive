var inst;

globalvar bubbang, imang;
imang = image_angle

spd = 0

alarm[1] = 14

for(bubbang = 15; bubbang >= 0; bubbang--)
{
    inst = instance_create(x, y, objEnemyBullet)
        
    with(inst)
    {
	sprite_index = sprFlakMiniShot
    damage = 1
    spd = 1 * global.enemy_spd
    angle = (bubbang * 22.5) + imang
    image_angle = angle
    }
}

image_xscale -= 0.07
image_yscale -= 0.07

