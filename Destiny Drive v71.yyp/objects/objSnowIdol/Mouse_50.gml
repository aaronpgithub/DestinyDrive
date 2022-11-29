if shoot = true and !instance_exists(objItem) and !instance_exists(objShop) and global.hp > 0 and global.wave <= global.wave_max and global.challenge != 7
{

    var kinst = instance_create(x, y, objSnowball);
        shoot = false
        alarm[0] = 50
            with(kinst)
            {
            damage = 3
            spd = 6
            freeze_chance = random(1)
            }

}

