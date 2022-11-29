if alarm[11] <= 0
{
    //attack choosing
    if attack_choice = 0 and x < pos_x + 2 and wait = false
    {
    alarm[0] = random_range(room_speed * 7, room_speed * 10)
    attack_check(4)
    }
    
    //chainsaw
    if attack_choice = 1
    {
    }
    else
    {
    alarm[2] = 20
    }
    
    //Laser
    if attack_choice = 2
    {
    }
    else
    {
    alarm[3] = 55
    }
    
    //crow
    if attack_choice = 3
    {
    }
    else
    {
    alarm[4] = 30
    }
    
    //dogs
    if attack_choice = 4
    {
    }
    else
    {
    alarm[5] = 12
    }
}
else
{
    var i;
    
    for(i = 0; i <= 10; i++)
    {
    alarm[i] = -1
    }
}

