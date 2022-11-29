/// @description wavy sine things
alarm[3] = 12

repeat(choose(1, 2))
{
var wave_inst = instance_create(x, y, objTimeSineBullet)

    with(wave_inst)
    {
    spd = -1.4 * global.enemy_spd
    angle = random_range(-50, 50)
    }
}

repeat(choose(0, 0, 0, 1))
{
    //if alarm[0] < room_speed * 4
    {
    var wave_inst = instance_create(-25, random_range(-30, 360), objTimeSineBullet)
    
        with(wave_inst)
        {
        reverse = true
        spd = -1.4 * global.enemy_spd
        angle = point_direction(x, y, objAnarchistOfTime.x, objAnarchistOfTime.y)
        }
    }
}

