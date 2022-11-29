var inst, inst2;

if alarm[11] <= 0
{
    
    if objPlayer_x >= 190
    {
        repeat(2)
        {
        var getouta = instance_create(320, y, objKnightLaser)
        
            with(getouta)
            {
            angle = random_range(-85, 85)
            spd = -4 * global.enemy_spd
            damage = 1
            image_angle = angle
            }
        }
    }
    
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(5)
    
        if attack_choice = 1
        {
        alarm[0] = random_range(room_speed * 12, room_speed * 17)
        }
    }
    
    //Lengthdir line
    if attack_choice = 1
    {
    angle += 0.5
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //CLAMS
    if attack_choice = 2
    {
        if instance_exists(objKingBorbsClam)
        {
        wait = true
        alarm[1] = 10
        attack_choice = 0
        }
    }
    else
    {
    alarm[3] = 12
    }
    
    //Fishes
    if attack_choice = 3
    {
        instance_create(320, random_range(road_y_min, road_y_max), objKingBorbsBubble)
    }
    else
    {
    alarm[4] = 15
    alarm[6] = 90
    }
    
    //eels
    if attack_choice = 4
    {
        repeat(11)
        {
            var inst = instance_create(320, random_range(80, 180), objKingBorbsSnakeBullet)
                
                with(inst)
                {
                angle = random_range(-10, 10)
                damage = 1
                spd = -6 * global.enemy_spd
                }
        }
        
        wait = true
        alarm[1] = room_speed * 3
        attack_choice = 0
    }
    
    //bullet burp
    if attack_choice = 5
    {
        repeat(irandom_range(4, 6))
        {
            globalvar gogle, angleeel;
            for(gogle = 0; gogle < 5; gogle++)
            {
            var boip_inst = instance_create(x - 18, y - 35, objEnemyBullet)
            angleeel = point_direction(x, y, objPlayer_x, objPlayer_y) + random_range(-28, 28)
                
                with(boip_inst)
                {
                spd = (5 - gogle) * global.enemy_spd
                damage = 1
                angle = angleeel
                
                sprite_index = sprEnemyBullet
                
                image_angle = angle
                }
            }
        }
        
        wait = true
        alarm[1] = room_speed * 2
        attack_choice = 0
    }
    else
    {
    }
}

