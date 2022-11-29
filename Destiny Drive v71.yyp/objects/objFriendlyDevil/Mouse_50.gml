if shoot = true and !instance_exists(objItem) and !instance_exists(objShop) and global.hp > 0 and global.wave <= global.wave_max and global.challenge != 7
{
    inst = instance_create(x, y, objMiniFireball)
        shoot = false
        alarm[0] = 20
            with(inst)
            {
            damage = 3
            spd = 4
            angle = random_range(-5, 5)
            
            sprite_index = sprMiniFireball
            image_angle = angle
            }
}

