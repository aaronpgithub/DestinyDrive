var inst, inst2;

if alarm[11] <= 0
{    
    __view_set( e__VW.WView, 0, lerp(__view_get( e__VW.WView, 0 ), view_w, 0.3 ))
    __view_set( e__VW.HView, 0, lerp(__view_get( e__VW.HView, 0 ), view_h, 0.3 ))

    __view_set( e__VW.XView, 0, lerp(__view_get( e__VW.XView, 0 ), view_x, 0.3 ))
    __view_set( e__VW.YView, 0, lerp(__view_get( e__VW.YView, 0 ), view_y, 0.3 ))

    if objPlayer_x > 200 and attack_choice != 1 and attack_choice != 5
    {
        if attack_choice = 3 and objPlayer_x < x 
        {
            var boopopoo = instance_create(320, random_range(64, 240), objEnemyBullet)
            
                with(boopopoo)
                {
                angle = 0
                spd = -4 * global.enemy_spd
                damage = 1
                image_angle = 45
                }
        }
        
        if attack_choice != 3
        {
            var boopopoo = instance_create(320, random_range(64, 240), objEnemyBullet)
            
                with(boopopoo)
                {
                angle = 0
                spd = -4 * global.enemy_spd
                damage = 1
                image_angle = 45
                }
        }
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(5)
    attack4type = irandom_range(0, 2)
    
        if attack_choice = 2
        {
        alarm[0] = random_range(room_speed * 13, room_speed * 16)
        }
        
        if attack_choice = 5
        {
        alarm[0] = random_range(room_speed * 24, room_speed * 27)
        }
    }
    
    //flip screen
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 70
    }
    
    //bullet gatling spray
    if attack_choice = 2
    {
    true_spray_angle += 0.1
    spray_angle = floor(true_spray_angle) * 2
    
    }
    else
    {
    alarm[3] = 12
    }
    
    //Zig Zag
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 15
    }
    
    //screen scale
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 80
    chosex = random_range(0, 140)
    chosey = random_range(road_y_min, road_y_max - 80)
    }
    
    //Ooh get ready boys
    if attack_choice = 5
    {
    }
    else
    {
    alarm[6] = 15
    }
}

