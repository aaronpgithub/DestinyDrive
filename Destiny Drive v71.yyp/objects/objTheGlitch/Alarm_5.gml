if alarm[0] < room_speed * 2 exit;

if view_w != 80 and attack_choice = 4
{
view_w = 80
view_h = 64

view_x = chosex
view_y = chosey
}

alarm[5] = 5

if attack4type = 0
{
var ooga = instance_create(x, y, objBanditBullet)

    with(ooga)
    {
    damage = 1
    spd = choose(2, 3) * global.enemy_spd
    angle = point_direction(x, y, objPlayer_x, objPlayer_y) - random_range(-1, 1)
    image_angle = angle
    }
}


if attack4type = 1
{
var ystartpos = __view_get( e__VW.YView, 0 ) + random(50)

    for(var logal = 0; logal < 10; logal++)
    {
    var ooga2 = instance_create(x, ystartpos + (logal * 2.5), objBanditBullet)

        with(ooga2)
        {
        damage = 1
        spd = -2.6 * global.enemy_spd
        angle = 0
        image_angle = angle
        }
    }
    
    alarm[5] = 20
}

if attack4type = 2
{
var deletespot = random_range(6, 34)

    for(var logal = 0; logal < 40; logal++)
    {
        if logal < deletespot - 4 or logal > deletespot + 4
        {
        var ooga2 = instance_create(x, __view_get( e__VW.YView, 0 ) + (logal * 2), objBanditBullet)
    
            with(ooga2)
            {
            damage = 1
            spd = -2 * global.enemy_spd
            angle = 0
            image_angle = angle
            }
        }
    }
    
    alarm[5] = 60
}

