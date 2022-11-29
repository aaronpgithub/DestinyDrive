event_inherited()

var stn = instance_create(strain + random_range(-1.5, 1.5), random_range(-2, 2), objStrainerBullet)

    with(stn)
    {
    damage = 1
    spd = 0
    no_move_destroy = false
    outside_special = true
    }
    
    if max_enemies = 100 max_enemies = instance_number(objEnemyParent)
    
    var only_strainer = true;
    
        for(var gold = 0; gold < instance_number(objEnemyParent); gold++)
        {
            if instance_find(objEnemyParent, gold).object_index != objStrainer
            {
            only_strainer = false
            }
        }
    
    if only_strainer = true
    {
    strain = 140 * ((instance_number(objEnemyParent) / max_enemies) + 0.05)
    }
    else
    {
    strain = 140 * (instance_number(objEnemyParent) / max_enemies)
    alarm[0] = 10
    }
    

