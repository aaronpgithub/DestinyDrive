/// @description Crazy Walls

alarm[6] = 60

globalvar slowpart;
slowpart = random_range(0, 25)

var ty = random(30)

for(var iop = 0; iop < 8; iop++)
{
    var ghol = instance_create(300, road_y_min + (iop * 30) + random_range(-5, 5), objEnemyBullet)
    
        with(ghol)
        {
        spd = -4 * global.enemy_spd
        damage = 1
        angle = 0
        }
}

for(var iopp = 0; iopp < 25; iopp++)
{
globalvar fastsped, kill;
fastsped = 3
kill = false

    if iopp < slowpart + 5 and iopp > slowpart - 5
    {
    fastsped = 1.5
    if frac(iopp / 3) = 0 or frac(iopp / 7) = 0 kill = true
    }

    var ghol = instance_create(300, road_y_min + (iopp * 8), objEnemyBullet)
    
        with(ghol)
        {
        spd = -(fastsped) * global.enemy_spd
        damage = 1
        angle = 0
        if kill = true instance_destroy()
        }
}

