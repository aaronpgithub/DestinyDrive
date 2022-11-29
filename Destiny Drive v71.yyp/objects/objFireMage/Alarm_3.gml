/// @description Fireball
alarm[3] = room_speed

if alarm[0] > room_speed * 3
{
    var inst = instance_create(x, y, objFireMageFireball)
    
    with(inst)
    {
    angle = 0
    damage = 3
    spd = -3 * global.enemy_spd
    }
}

