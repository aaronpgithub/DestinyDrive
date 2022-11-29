/// @description fire wall creating
alarm[6] = 60

var no_placement;

no_placement = round(random_range(0, 7))

for(var firwal_i = 8; firwal_i > -1; firwal_i--)
{
    if firwal_i != no_placement
    {
    var inst = instance_create((firwal_i * 20) + 5, 85, objFireBurst)
    
        with(inst)
        {
        fire_wall = true
        spd = -2.3 * global.enemy_spd
        sprite_index = sprFireBurst
        }
    }
}

