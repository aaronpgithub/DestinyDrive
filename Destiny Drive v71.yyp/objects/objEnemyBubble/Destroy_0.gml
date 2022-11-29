globalvar flyfish, roadie;
roadie = false
if instance_exists(objFlyingFish) roadie = objFlyingFish.bubble_bounce

globalvar randang;
randang = random_range(-5, 5)

        for(flyfish = 6; flyfish >= 0; flyfish--)
        {
            var fish_var = instance_create(x, y, objFlyingFishWater)
            
            with(fish_var)
            {
            spd = -2.25 * global.enemy_spd
            angle = -35 + (flyfish * 10) + randang
            damage = 1
            
			bounce = roadie
			
            image_angle = angle
            }
        }

