if alarm[11] <= 0
{   
    //sine
    if attack_choice = 1
    {
        pos_y = (80 * sin(degtorad(global.t))) + ystart
        y = lerp(y, pos_y, 0.8)
        
            global.t += 6 * global.enemy_spd
            global.t = global.t mod 360
        
        if y > sine_y and y > yprevious
        {
        sine_y = random_range(90, 140)
        }
        
        if y < sine_y and y < yprevious
        {
        sine_y = random_range(140, 200)
        }
        
                
        if y < sine_y - 25 or y > sine_y + 25
        {   
            var inst = instance_create(x, y, objBanditBullet)
            
            with(inst)
            {
            angle = 0
            image_angle = angle
            spd = -3 * global.enemy_spd
            damage = 1
            }
        }
    }
    else
    {
    alarm[2] = 12
    }
    
    //Tiny flies come out AAAH!
    if attack_choice = 2
    {
            //special part of attack
            if alarm[0] <= room_speed * 8
            {
                if special != true
                {
                special = true
                }
                
                if ver_dir = "up"
                {
                y -= 2 * global.enemy_spd
                }
                
                if ver_dir = "down"
                {
                y += 2 * global.enemy_spd
                }
                
                if y > 240
                {
                ver_dir = "up"
                }
                
                if y < 80
                {
                ver_dir = "down"
                }
            }
            
    image_angle = lerp(image_angle, ang, 0.1)
    
        if special = false
        {
        y = lerp(y, pos_y, 0.1)
        }
    }
    else
    {
    alarm[3] = 12
    alarm[4] = 60
    }
    
    //shootin
    if attack_choice = 3
    {
        if instance_exists(objQueenOfFliesFastMinibossBodyBullet)
        {
        x = lerp(x, pos_x - 200 + lengthdir_x(len, image_angle), 0.9)
        y = lerp(y, pos_y + lengthdir_y(len, image_angle), 0.9)
        
        len += random_range(0.1, 0.6)
        
            if len < 40 and flying = false
            {
            image_angle = 180 + point_direction(x, y, objPlayer_x, objPlayer_y)
            }
            
            if len >= 45 or flying = true
            {
            len -= 18 * global.enemy_spd
            flying = true
            
            var len_inst = instance_create(x, y, objBanditBullet)
            var len_inst2 = instance_create(x, y, objBanditBullet)
            
                with(len_inst)
                {
                angle = random(360)
                damage = 1
                spd = 4 * global.enemy_spd
                image_angle = angle
                }
                
                with(len_inst)
                {
                angle = random(360)
                damage = 1
                spd = 4 * global.enemy_spd
                image_angle = angle
                }
            }
            
            if len > 120
            {
            len = 0
            }
        }
        else
        {
        len = 0
        
        flying = false
        
        x = lerp(x, pos_x - 200 + lengthdir_x(len, image_angle), 0.1)
        y = lerp(y, pos_y + lengthdir_y(len, image_angle), 0.1)
        image_angle = lerp(image_angle, 0, 0.1)
        
            if x > 180
            {
            instance_create(x, y, objQueenOfFliesFastMinibossBodyBullet)
            }
        }
    }
    else
    {
    alarm[6] = 30
    }
    
    //Invisible Bullets
    if attack_choice = 4
    {
    }
    else
    {
    }
    
    if alarm[1] > 0
    {
    y = lerp(y, pos_y, 0.8)
    x = lerp(x, pos_x - 200 + lengthdir_x(len, image_angle), 0.8)
    image_angle = lerp(image_angle, 0, 0.8)
    }
        
    //attack choosing, at end so every alarm can activate!!!
    if attack_choice = 0 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(3)
    
        if attack_choice = 1
        {
        alarm[0] = random_range(room_speed * 11, room_speed * 15)
        }
        
        if attack_choice = 2
        {
        alarm[0] = random_range(room_speed * 16, room_speed * 21)
        }
    }
}


