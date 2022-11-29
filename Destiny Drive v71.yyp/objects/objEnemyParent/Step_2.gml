if stat_change = true
{
    if ds_map_exists(global.item_map, "relic_disease")
    {
        if object_get_parent(self.object_index) != objBossParent
        {
        max_hp += ceil(max_hp * 0.4)
        hp = max_hp
        }
        else
        {
        max_hp -= ceil(max_hp * 0.3)
        hp = max_hp
        }
    }
    
    if champ = c_red
    {
    max_hp = ceil(max_hp * 2)
    hp = max_hp
    }
    else if champ != c_white and champ != c_green
    {
    max_hp = ceil(max_hp * 1.5)
    hp = max_hp
    }
    
stat_change = false
}

if champ_alarm > 0
{
champ_alarm -= 1
}

if champ_alarm <= 0
{
    switch(champ)
    {
    case c_lime:
        if hp < max_hp
        {
            if image_alpha > 0
            {
            hp += 1
            instance_create(x - random(sprite_width), y - random_range(-3, 15), objIndicatorParticle)
            }
        }
        champ_alarm = 10
    break;
    case c_turq:
    
        var turq_inst = instance_create(x, y, objEnemyBullet)
    
        with(turq_inst)
        {
        spd = -2 * global.enemy_spd
        damage = 1
        angle = random_range(-25, 25)
        
        sprite_index = sprEnemyBulletMedium
        
        image_index = angle
        }
        
    champ_alarm = 45
    break;
    }
}

