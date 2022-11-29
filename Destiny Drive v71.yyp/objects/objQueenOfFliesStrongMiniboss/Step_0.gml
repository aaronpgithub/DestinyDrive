if alarm[11] <= 0
{   
    //burst
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 12
    }
    
    //pulse
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 12
    }
    
    //Tiny Fly
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
    
    //burst spiral
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 10
    }
        
    //attack choosing, at end so every alarm can activate!!!
    if attack_choice = 0 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    
        if attack_choice = 1
        {
        alarm[0] = random_range(room_speed * 11, room_speed * 15)
        }
        
        if attack_choice = 2
        {
        alarm[0] = random_range(room_speed * 16, room_speed * 24)
        }
    }
}


