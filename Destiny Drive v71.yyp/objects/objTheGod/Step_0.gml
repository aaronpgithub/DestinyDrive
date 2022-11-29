
    //circle inwards
    if attack_choice = 1
    {
    //shooting
    }
    else
    {
    alarm[2] = 12
    }
    
    //Crazy flack daaang
    if attack_choice = 2
    {
    //Handled in alarm, bud
    }
    else
    {
    alarm[3] = 20
    }
    
    //Shooty a bitty
    if attack_choice = 3
    {
    //nothin
    }
    else
    {
    alarm[4] = 15
    }
        
    //attack choosing
    if attack_choice = 0 and wait = false
    {
    alarm[0] = random_range(room_speed * 100, room_speed * 1000)
    attack_check(1)
    }

