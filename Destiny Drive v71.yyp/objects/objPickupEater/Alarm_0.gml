switch(level)
{
case 1:
alarm[0] = 25

var pikmbullet = instance_create(x, y, objBullet)
        
        with(pikmbullet)
        {
        angle = random_range(-7, 7) * global.accuracy
        spd = 3 * global.shot_speed
        damage = 5 * global.dmg
        image_angle = angle
        sprite_index = sprWeakShot
        no_flash = true
        }
break;

case 2:
alarm[0] = 22

var pikmbullet = instance_create(x, y, objBullet)
        
        with(pikmbullet)
        {
        angle = random_range(-5, 5) * global.accuracy
        spd = 4 * global.shot_speed
        damage = 6 * global.dmg
        image_angle = angle
        sprite_index = sprWeakShot
        no_flash = true
        }
break;

case 3:
alarm[0] = 18

var pikmbullet = instance_create(x, y, objBullet)
        
        with(pikmbullet)
        {
        angle = random_range(-3, 3) * global.accuracy
        spd = 5 * global.shot_speed
        damage = 7 * global.dmg
        image_angle = angle
        sprite_index = sprWeakShot
        no_flash = true
        }
break;
}
        
        
        image_xscale = 0.6
        image_yscale = 0.4


