if instance_exists(objPlayer)
{
depth = objPlayer.depth + 1
x = objPlayer_x + 6
y = objPlayer_y
}

if image_xscale > 1
{
    repeat(4)
    {
        var bubbleboom = instance_create(x, y, objBullet)
        
            with(bubbleboom)
            {
            no_flash = true
            spd = 5 * global.shot_speed
            damage = 5 * global.dmg
            angle = random_range(-20, 20) * global.accuracy
            image_angle = angle
            sprite_index = sprGumBullet
            color = make_colour_rgb(254, 255, 255)
            }
    }

instance_destroy()
}

