/// @description shoot

var pobo_inst;

        alarm[0] = 200
            
            pobo_inst = instance_create(x - (sprite_width / 2), y - (sprite_height / 2), objBouncerLaser)
            
            with(pobo_inst)
            {
            angle = random_range(50, 75) * choose(-1, 1)
            spd = -1 * global.enemy_spd
            damage = 1
			image_angle = angle
            }
            
            champion_bullet(pobo_inst)










