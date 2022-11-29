if shoot = true and !instance_exists(objItem) and !instance_exists(objShop) and global.hp > 0 and global.wave <= global.wave_max and global.challenge != 7
{
    if rounds > 0
    {
    inst = instance_create(x, y, objBullet)
        shoot = false
        alarm[0] = 12
            with(inst)
            {
            damage = 3
            spd = 6
            angle = random_range(-5, 5)
            image_angle = angle
            }
    }
    
    if rounds < 0
    {
    inst = instance_create(x, y, objBullet)
        shoot = false
        alarm[0] = 20
            with(inst)
            {
            damage = 2
            spd = 6
            angle = random_range(-7, 7)
            image_angle = angle
            }
    }
}

