
if damage_item_test = true {
kill_enemy()
}

    var inst, inst2, bld_color;
    
    if champ = c_fuchsia
    {
        var champ_death_var;    
    
        for(champ_death_var = 7; champ_death_var >= 0; champ_death_var--)
        {
            var dth_var = instance_create(x, y, objEnemyBullet)
            
            with(dth_var)
            {
            spd = -3 * global.enemy_spd
            angle = -35 + (champ_death_var * 8.75)
            damage = 1
            
            image_angle = angle
            }
        }
    }
    
    if x < room_width
    {
    enemy_type_add_to_array()
    global.item_maps += 1
    }
    
    bld_color = blood_color()
    
    if death_gib = true
    {
        if x < 320 and global.artifact[1, 0] = 0
        {
            if robot = false
            {
                inst = instance_create(x, y, objBloodExplosion)
                inst2 = instance_create(x, y, objBlood)
                
                with(inst)
                {
                color = bld_color
                }
                
                with(inst2)
                {
                color = bld_color
                }
            }
            else
            {
            instance_create(x, y, objExplosion)
            }
        }
        else if x < 320
        {
            if robot = false
            {
            inst2 = instance_create(x, y, objBlood)
            
                with(inst2)
                {
                color = bld_color
                }
            }
            else
            {
            instance_create(x, y, objExplosion)
            }
        }
    }
    
    
    if global.artifact[1, 0] = 1
    {
    var corpse;
    
    corpse = instance_create(x, y, objJunkerCorpse)
    
        with(corpse)
        {
        sprite_index = sprCorpse
        damage = 5
        spd = 9
        }
    }

