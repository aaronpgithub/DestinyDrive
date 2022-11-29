/// @description pause
    if pause = false
    {
    alarm[7] = room_speed * 0.5
        if attack_choice = 1
        {
        alarm[7] = room_speed * 0.5
        }
        
        if attack_choice = 2
        {
        alarm[7] = room_speed * 0.2
        }
        
    pause = true
    exit;
    }
    else
    {
    alarm[7] = room_speed * random_range(4, 6)
        if attack_choice = 1
        {
        alarm[7] = room_speed * random_range(2, 8)
        }
        
        if attack_choice = 2
        {
        alarm[7] = room_speed * random_range(4, 6)
        }
    pause = false
    }



